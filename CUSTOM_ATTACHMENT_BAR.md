# Custom Attachment Action Bar

## Overview

The flutter_ai_toolkit now supports customizing the attachment action bar (the "+" button) through the `AttachmentActionBarBuilder` pattern. This allows you to replace the default file/image picker with custom widgets, such as a chat tools selector.

## Architecture

The builder pattern follows the same approach as the existing `ResponseBuilder`:

```
LlmChatView (public API)
    ↓ passes builder to
ChatViewModel (state holder)
    ↓ passes builder to
ChatInput (composer widget)
    ↓ uses builder or default
AttachmentActionBar (default) OR Custom Widget (from builder)
```

## API Reference

### AttachmentActionBarBuilder

```dart
typedef AttachmentActionBarBuilder = Widget Function(
  BuildContext context,
  void Function(Iterable<Attachment>) onAttachments,
);
```

**Parameters:**
- `context`: Build context for accessing theme, localization, etc.
- `onAttachments`: Callback to invoke when attachments are selected

**Returns:** A widget that will be displayed in the chat input row (left of text field)

## Usage

### Basic Example

Replace the default attachment picker with a custom icon button:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';

LlmChatView(
  provider: myLlmProvider,
  enableAttachments: true,  // Must be true to show custom widget
  attachmentActionBarBuilder: (context, onAttachments) {
    return IconButton(
      icon: Icon(Icons.auto_awesome),
      onPressed: () async {
        final result = await showMyCustomDialog(context);
        if (result != null) {
          onAttachments([MyCustomAttachment(result)]);
        }
      },
    );
  },
)
```

### Chat Tools Selector Example

For the LCAI project's chat tools selector:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:lcai_frontend/widgets/chat_tool_selector.dart';
import 'package:lcai_frontend/models/chat_tool.dart';

LlmChatView(
  provider: myProvider,
  enableAttachments: true,
  attachmentActionBarBuilder: (context, onAttachments) {
    return GestureDetector(
      onTap: () async {
        // Show the chat tool selector bottom sheet
        final selectedTools = await showChatToolSelector(
          context,
          availableToolIds: ['qi_men', 'i_ching', 'bazi'],
          alreadySelectedToolIds: [],
        );

        if (selectedTools != null && selectedTools.isNotEmpty) {
          // Convert SelectedChatTool to Attachment
          final attachments = selectedTools.map((tool) {
            return ChatToolAttachment(
              toolId: tool.toolId,
              params: tool.params,
            );
          }).toList();

          // Pass to the toolkit
          onAttachments(attachments);
        }
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.auto_awesome, color: Colors.white, size: 20),
      ),
    );
  },
)
```

### Custom Attachment Implementation

You'll need to create a custom `Attachment` class to carry your tool data:

```dart
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'dart:convert';

class ChatToolAttachment implements Attachment {
  final String toolId;
  final Map<String, dynamic> params;

  ChatToolAttachment({
    required this.toolId,
    required this.params,
  });

  @override
  String get name => toolId;

  @override
  // Serialize tool data for the LLM
  String get data => jsonEncode({
    'tool': toolId,
    'params': params,
  });

  @override
  String get mimeType => 'application/json';
}
```

## Important Notes

### 1. Enable Attachments Required

The builder is only invoked when `enableAttachments` is `true`:

```dart
LlmChatView(
  enableAttachments: true,  // Required!
  attachmentActionBarBuilder: (context, onAttachments) {
    // Your custom widget
  },
)
```

### 2. Default Behavior Preserved

If `attachmentActionBarBuilder` is `null`, the default `AttachmentActionBar` is used:

```dart
LlmChatView(
  provider: myProvider,
  enableAttachments: true,
  // attachmentActionBarBuilder not provided
  // → Uses default file/image/URL picker
)
```

### 3. Widget Positioning

The widget returned by your builder will be positioned:
- In the bottom chat input row
- To the left of the text input field
- With default bottom padding of 14px

### 4. Callback Contract

You must call `onAttachments()` with an `Iterable<Attachment>` when user selects items:

```dart
// Single attachment
onAttachments([MyAttachment(data)]);

// Multiple attachments
onAttachments([
  MyAttachment(data1),
  MyAttachment(data2),
]);

// No attachments (valid but no-op)
onAttachments([]);
```

## Migration Guide

### From Default Picker to Custom Widget

**Before:**
```dart
LlmChatView(
  provider: myProvider,
  enableAttachments: true,
  // Uses default file/image picker
)
```

**After:**
```dart
LlmChatView(
  provider: myProvider,
  enableAttachments: true,
  attachmentActionBarBuilder: (context, onAttachments) {
    return MyCustomWidget(
      onSelected: (items) => onAttachments(items),
    );
  },
)
```

### Styling Your Custom Widget

Access theme and style from context:

```dart
attachmentActionBarBuilder: (context, onAttachments) {
  final theme = Theme.of(context);
  final primaryColor = theme.primaryColor;

  return Container(
    decoration: BoxDecoration(
      color: primaryColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: IconButton(
      icon: Icon(Icons.add, color: theme.colorScheme.onPrimary),
      onPressed: () {
        // Your logic
      },
    ),
  );
}
```

## Testing

### Unit Test Example

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';

void main() {
  testWidgets('Custom attachment bar builder is used', (tester) async {
    bool builderCalled = false;

    await tester.pumpWidget(
      MaterialApp(
        home: LlmChatView(
          provider: MockLlmProvider(),
          enableAttachments: true,
          attachmentActionBarBuilder: (context, onAttachments) {
            builderCalled = true;
            return Container(key: Key('custom-widget'));
          },
        ),
      ),
    );

    expect(builderCalled, true);
    expect(find.byKey(Key('custom-widget')), findsOneWidget);
  });
}
```

## Backward Compatibility

This feature is **fully backward compatible**:

- Existing code continues to work without changes
- `attachmentActionBarBuilder` is optional
- Default behavior unchanged when builder is `null`
- No breaking API changes

## Benefits

✅ **Follows Existing Patterns** - Mirrors `ResponseBuilder` design
✅ **Non-Breaking** - Optional parameter, defaults preserved
✅ **Type-Safe** - Clear typedef with compile-time checks
✅ **Flexible** - Complete widget replacement capability
✅ **Contextual** - Full access to BuildContext
✅ **Integrated** - Seamless data flow via callback

## Related Files

- `lib/src/views/attachment_action_bar_builder.dart` - Typedef definition
- `lib/src/views/chat_input/chat_input.dart` - Builder usage
- `lib/src/chat_view_model/chat_view_model.dart` - State threading
- `lib/src/views/llm_chat_view/llm_chat_view.dart` - Public API
- `lib/flutter_ai_toolkit.dart` - Public export

## Version

Added in: flutter_ai_toolkit (forked version for LCAI project)
Based on: flutter_ai_toolkit 0.x.x
