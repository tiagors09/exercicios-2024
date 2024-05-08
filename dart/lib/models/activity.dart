class Activity {
  final int id;
  final DateTime start;
  final DateTime end;
  final Map<String, String> title;
  final Map<String, String> description;
  final Map<String, dynamic> category;
  final List<Map<String, dynamic>> locations;
  final Map<String, dynamic> type;
  final List<Map<String, dynamic>> people;
  final String event;

  const Activity(
    this.id,
    this.start,
    this.end,
    this.title,
    this.description,
    this.category,
    this.locations,
    this.type,
    this.people,
    this.event,
  );
}
