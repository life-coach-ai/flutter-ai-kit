# Flutter Chat UI Library - Local Changes Analysis

Context: LCAI frontend uses `flutter-ai-kit` with custom chat-tool attachments
for domain features. The backend and frontend are white-labeled per therapist,
so minimizing forks in the shared UI library reduces maintenance burden.

## Current uncommitted changes (honza)

These changes are local in `flutter-ai-kit` and currently not committed.

1) Reduce the attachments strip height from 104 to 60
- File: `lib/src/views/chat_input/attachments_view.dart`
- Change: `height: attachments.isNotEmpty ? 104 : 0` -> `60`
- Impact: the attachment area takes less vertical space in the chat input.

2) Make attachment tile height conditional for custom attachments
- File: `lib/src/views/chat_input/removable_attachment.dart`
- Change: `height: 80` -> `height: attachment is CustomAttachment ? 32 : 80`
- Impact: custom attachments render as compact "chips", while image/file
  attachments keep the larger thumbnail height.

These changes appear to support compact rendering of custom chat-tool
attachments used in `lcai-frontend`.

## Recent git changes by honza

Latest commits in `flutter-ai-kit` authored by "honza":
- `31550d0` Exposed currently selected attachments
- `a52c348` Added `CustomAttachment` class to preserve type safety of `Attachment`
- `566dab1` Added builder for the attachment view registry to allow custom
  `Attachment` and `AttachmentView`
- `4db05a9` Added builder pattern for custom attachment bar

## Why these changes were needed for lcai-frontend

`lcai-frontend` wraps its domain tool selections in `CustomAttachment` so it can
render a compact chip-like widget (see `ChatToolAttachmentView`). The default
chat UI in `flutter-ai-kit` assumed a fixed, large attachment height suitable
for file/image previews. The changes above make custom attachments fit into
the input area without wasting vertical space.

## Can we switch to another Flutter chat UI library without these changes?

Yes, but only if the alternative library supports the same capabilities out of
the box:
- Custom attachment rendering with a registry/lookup by type.
- Flexible per-attachment height or a layout that sizes to the child widget.
- A horizontally scrolling attachments strip that does not assume thumbnails.

If the replacement library treats attachments as fixed-size media tiles or
doesn't provide a custom attachment renderer, you'll end up needing similar
library-level tweaks (or a fork) to achieve the compact chip UX.

In short: switching libraries can avoid these local patches only if the new
library already supports flexible custom attachments and layout sizing. If it
does not, the same kind of changes will be required again.

## Using `ovatu/flutter_chat_ui` instead of `flutter-ai-kit`

`ovatu/flutter_chat_ui` (Dash Chat 2 fork) advertises a customizable chat UI
with message builders and `customProperties` for extra data on models, plus
support for multiple media types. That’s promising for LCAI’s chat-tool chips,
but you’ll still need targeted integration work. [Source](https://github.com/ovatu/flutter_chat_ui)

Likely adjustments required to replace `flutter-ai-kit`:
- **Model mapping:** Map `flutter-ai-kit`’s `Attachment`/`CustomAttachment` to
  Dash Chat’s `ChatMessage`/media model plus `customProperties`.
- **Custom chip rendering:** Implement a custom message/attachment builder that
  renders your `ChatToolAttachmentView` equivalent when the tool data is present.
- **Input attachments strip:** Recreate the horizontal attachments bar with
  compact height; Dash Chat does not assume your chip layout by default.
- **Custom attachment registry:** You’ll need your own registry layer or
  builder routing to handle multiple custom attachment types (chat tools now,
  possibly more later).
- **Style/theme parity:** Port LCAI styling (close button, chip colors, spacing)
  to Dash Chat’s style options.

Bottom line: switching is possible, but unless you keep the same attachment
flexibility (custom rendering + dynamic sizing), you’ll still need comparable
customization work to achieve the compact tool chips. [Source](https://github.com/ovatu/flutter_chat_ui)
