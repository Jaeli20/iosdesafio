import 'package:desafio1_flutter/src/DetallesData.dart';
import 'package:flutter/material.dart';
import './todo.dart';
import 'detalles.dart';

//colores
const Color tdRed = Color(0xFFDA4040);
const Color tdBlue = Color(0xFF5F52EE);

const Color tdBlack = Color(0xFF3A3A3A);
const Color tdGrey = Color(0xFF717171);

const Color tdBGColor = Color(0xFFEEEFF5);

//clase para mostrar las listas
class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print('Clicked on Todo Item.');
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              color: Colors.red,
              iconSize: 18,
              icon: Icon(Icons.delete),
              onPressed: () {
                // Función para eliminar el elemento
                onDeleteItem(todo.id);
              },
            ),
            SizedBox(width: 8), // Espacio entre los iconos
            IconButton(
              color: Colors.blue,
              iconSize: 18,
              icon: Icon(Icons.remove_red_eye),
              onPressed: () {
                final data = DetallesData(
                    id: todo.id.toString(), title: todo.todoText.toString());

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detalles(
                              data: data,
                            )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
