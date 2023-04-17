import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: const Text('WhatsApp'),
              bottom: const TabBar(tabs: [
                Tab(
                  child: Icon(Icons.group),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                )
              ]),
              actions: [
                const Icon(Icons.camera_alt),
                const SizedBox(
                  width: 15,
                ),
                const Icon(Icons.search),
                const SizedBox(
                  width: 10,
                ),
                PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                    const PopupMenuItem(value: '1', child: Text('New group')),
                    const PopupMenuItem(
                        value: '2', child: Text('New broadcast')),
                    const PopupMenuItem(
                        value: '3', child: Text('Linked devices')),
                    const PopupMenuItem(
                        value: '4', child: Text('Starred messages')),
                    const PopupMenuItem(value: '5', child: Text('Payments')),
                    const PopupMenuItem(value: '6', child: Text('Settings')),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            body: TabBarView(
              children: [
                const Text('Community'),

                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        title: Text('Rushabh Dabhade'),
                        subtitle: Text("Hey there! I'm using Whatsapp"),
                        trailing: Text('12:30 am'),
                      );
                    }),

                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return  ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 3)
                          ),
                          child: const CircleAvatar(
                            
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                        title: const Text('Rushabh Dabhade'),
                        subtitle: const Text("Today, 9:36 am"),
                      );
                    }),

                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        title: Text('Rushabh Dabhade'),
                        subtitle: Text("10 April, 4:02 pm"),
                        trailing: Icon(Icons.phone),
                      );
                    }),
              ],
            )));
  }
}
