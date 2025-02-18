class NotificationModel {
  final String title;
  final String location;
  final String timeAgo;
  final bool hasFixAction;
  final bool hasShareAction;

  NotificationModel({
    required this.title,
    required this.location,
    required this.timeAgo,
    this.hasFixAction = false,
    this.hasShareAction = false,
  });
} 