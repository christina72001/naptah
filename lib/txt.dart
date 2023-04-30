import 'package:flutter/material.dart';

class ContainerList extends StatefulWidget {
  @override
  _ContainerListState createState() => _ContainerListState();
}

class _ContainerListState extends State<ContainerList> {
  List<String> containers = [];

  TextEditingController _controller = TextEditingController();

  void addContainer() {
    setState(() {
      containers.add(_controller.text);
      _controller.clear();
    });
  }

  void removeContainer(int index) {
    setState(() {
      containers.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container List'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: addContainer,
                child: Text('Add'),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: containers.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: Key(containers[index]),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 5),
                    color: Colors.blue,
                    child: Text(containers[index]),
                  ),
                  onDismissed: (direction) => removeContainer(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
