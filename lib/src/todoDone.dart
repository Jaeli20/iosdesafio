class ToDoDone {
  String? id;
  String? todoText;
  bool isDone;

  ToDoDone({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDoDone> todoList() {
    return [
      ToDoDone(id: '01', todoText: 'Morning Excercise', isDone: true),
      ToDoDone(id: '02', todoText: 'Buy Groceries', isDone: true),
      ToDoDone(
        id: '03',
        isDone: true,
        todoText: 'Check Emails',
      ),
      ToDoDone(id: '04', todoText: 'Team Meeting', isDone: true),
      ToDoDone(
          id: '05', todoText: 'Work on mobile apps for 2 hour', isDone: true),
      ToDoDone(id: '06', todoText: 'Dinner with Jenny', isDone: true),
    ];
  }
}
