import 'package:emancy_app/repositories/conta_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyActionButton extends StatefulWidget {
  const MyActionButton({super.key});

  @override
  State<MyActionButton> createState() => _MyActionButtonState();
}

class _MyActionButtonState extends State<MyActionButton> {
  @override
  Widget build(BuildContext context) {
    final conta = context.watch<ContaRepository>();
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: const Color.fromARGB(255, 50, 49, 49),
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 230,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close'),
                  ),
                ),
              ),
            );
          },
        );
      },
      backgroundColor: const Color.fromARGB(255, 52, 136, 139),
      child: Icon(Icons.add, color: Colors.white, size: 30),
    );
  }
}
