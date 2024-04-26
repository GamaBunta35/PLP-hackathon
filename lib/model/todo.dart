// This class represents a single Todo item with an ID, task text, and completion status.
class ToDo {
  final String _id; // Unique identifier for the todo item
  final String _todoText; // Text content of the todo item
  bool _isDone; // Completion status of the todo item (true if completed, false otherwise)

  /// Constructor for the ToDo class.
  /// [id] is the unique identifier for the todo item.
  /// [todoText] is the text content of the todo item.
  /// [isDone] is the completion status of the todo item, with a default value of false.
  ToDo({
    required String id,
    required String todoText,
    bool isDone = false,
  })   : _id = id,
        _todoText = todoText,
        _isDone = isDone;

  // Getter for id
  String get id => _id;

  // Getter for todoText
  String get todoText => _todoText;

  // Getter for isDone
  bool get isDone => _isDone;

  // Setter for isDone
  set isDone(bool value) {
    _isDone = value;
  }

  // A static method to generate a list of predefined ToDo items.
  // This is a factory method used to create a list of sample ToDo items.
  static List<ToDo> generateSampleTodos() {
    return [
      ToDo(id: "1", todoText: "Buy groceries", isDone: false),
      ToDo(id: "2", todoText: "Finish coding assignment", isDone: true),
      ToDo(id: "3", todoText: "Go for a run", isDone: false),
    ];
  }
}

void main() {
  // Create a sample ToDo list
  final todos = ToDo.generateSampleTodos();

  // Print the details of each ToDo item
  for (final todo in todos) {
    print('ID: ${todo.id}, Text: ${todo.todoText}, Done: ${todo.isDone}');
  }
}
