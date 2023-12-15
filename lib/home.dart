import 'package:flutter/material.dart';
import 'package:flutter_application_1/checking.dart';
import 'package:provider/provider.dart';

final textController = TextEditingController();
final text2Controller = TextEditingController();

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                  hintText: 'Text...', border: OutlineInputBorder()),
              controller: textController,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(
                  hintText: 'Text...', border: OutlineInputBorder()),
              controller: text2Controller,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Textprovider>(context, listen: false)
                    .updatetext1(textController.text);

                Provider.of<Textprovider>(context, listen: false)
                    .updatetext2(text2Controller.text);
              },
              child: Text('add'),
            ),
            Consumer<Textprovider>(builder: (context, value, child) {
              return Text(value.combinedtext);
            })
          ],
        ),
      ),
    );
  }
}
