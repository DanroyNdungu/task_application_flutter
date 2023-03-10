import 'package:flutter/material.dart';
import 'package:task_application/widgets/task_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: screenSize.height * .45,
            decoration: BoxDecoration(color: Colors.cyan[100]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 32.0,
                      color: Colors.cyan[900],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 32.0,
                          color: Colors.cyan[900],
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Icon(
                          Icons.notifications,
                          size: 32.0,
                          color: Colors.cyan[900],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'What\'s up, Danroy!',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
                      fontSize: 40.0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text('CATEGORIES',
                    style: TextStyle(color: Colors.grey[700], fontSize: 15.0)),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        height: 100,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70,
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('40 tasks',
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 12.0)),
                              const Text('Business',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 20.0)),
                              const SizedBox(
                                height: 10.0,
                              ),
                              LinearProgressIndicator(
                                value: 30,
                                color: Colors.cyan[200],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        height: 100,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70,
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('18 tasks',
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 12.0)),
                              const Text('Personal',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 20.0)),
                              const SizedBox(
                                height: 10.0,
                              ),
                              LinearProgressIndicator(
                                value: 30,
                                color: Colors.purple[200],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TODAY\'S TASKS',
                      style: TextStyle(color: Colors.grey[700], fontSize: 15.0),
                    ),
                    Column(
                      children: [
                        //TODO: Impelement Listview to handle all the tasks added into the provider.
                        TaskWidget(
                            taskTitle:
                                'Build Flutter task management application.'),
                        TaskWidget(taskTitle: 'Finish task application UI')
                      ],
                    )
                  ],
                ),
              ],
            )),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
