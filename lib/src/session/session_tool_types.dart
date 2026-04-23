// Copyright 2024 The Flutter Authors. All rights reserved.

/// Available tool row from backend metadata (domain shape; UI-free).
class AvailableToolInfo {
  const AvailableToolInfo({
    required this.toolId,
    required this.mandatory,
  });

  factory AvailableToolInfo.fromJson(Map<String, dynamic> json) =>
      AvailableToolInfo(
        toolId: json['tool_id'] as String,
        mandatory: json['mandatory'] as bool,
      );

  final String toolId;
  final bool mandatory;

  Map<String, dynamic> toJson() => {
        'tool_id': toolId,
        'mandatory': mandatory,
      };
}

/// Tool selection for the next outbound message (domain shape).
class SelectedChatTool {
  const SelectedChatTool({
    required this.toolId,
    required this.params,
  });

  factory SelectedChatTool.fromJson(Map<String, dynamic> json) =>
      SelectedChatTool(
        toolId: json['tool_id'] as String,
        params: Map<String, dynamic>.from(
          json['params'] as Map<dynamic, dynamic>,
        ),
      );

  final String toolId;
  final Map<String, dynamic> params;

  Map<String, dynamic> toJson() => {
        'tool_id': toolId,
        'params': params,
      };
}
