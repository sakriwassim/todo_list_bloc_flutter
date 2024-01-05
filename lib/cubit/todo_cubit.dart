import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_list_flutter/models/todo_model.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo (String title){
    final todo = Todo(
      name: title, 
      createdAt: DateTime.now()
    );
    
    emit([...state , todo]);
  }
  
  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    print(change);
  }

  
}
