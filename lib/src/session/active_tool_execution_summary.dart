// Copyright 2024 The Flutter Authors. All rights reserved.

/// Multi-turn async tool execution summary (domain shape for chat session).
class ActiveToolExecutionSummary {
  const ActiveToolExecutionSummary({
    required this.executionId,
    required this.toolId,
    required this.status,
    required this.currentStep,
    this.stepTotal,
  });

  factory ActiveToolExecutionSummary.fromJson(Map<String, dynamic> json) =>
      ActiveToolExecutionSummary(
        executionId: json['execution_id'] as String,
        toolId: json['tool_id'] as String? ?? '',
        status: json['status'] as String? ?? 'active',
        currentStep: (json['current_step'] as num?)?.toInt() ?? 0,
        stepTotal: (json['step_total'] as num?)?.toInt(),
      );

  Map<String, dynamic> toJson() => {
        'execution_id': executionId,
        'tool_id': toolId,
        'status': status,
        'current_step': currentStep,
        'step_total': stepTotal,
      };

  final String executionId;
  final String toolId;
  final String status;
  final int currentStep;
  final int? stepTotal;
}
