import 'package:flutter/material.dart';

class CreateNew extends StatefulWidget {
  const CreateNew({super.key});

  @override
  State<CreateNew> createState() => _CreateNewState();
}

class _CreateNewState extends State<CreateNew> {
  var fnController = TextEditingController();
  final lnController = TextEditingController();
  final phoneController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final homeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Create new contact"),
          actions: [
            TextButton(
                onPressed: () {
                  if (fnController.text.isNotEmpty &&
                      lnController.text.isNotEmpty &&
                      phoneController.text.isNotEmpty &&
                      mobileController.text.isNotEmpty &&
                      emailController.text.isNotEmpty &&
                      homeController.text.isNotEmpty) {
                    Navigator.pop(context);
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Empty"),
                          content: const Text(
                              "Kindly complete all the required information"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("ok"))
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text("save"))
          ],
        ),
        body: Stack(children: [
          Container(
            width: double.infinity,
            color: Colors.lightGreen[600],
            child: const Icon(
              Icons.person_outline_rounded,
              size: 300,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 200, left: 350),
            child: Icon(
              Icons.camera_alt_outlined,
              size: 50,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 270),
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 2,
                            offset: Offset(0.1, 2),
                            color: Colors.black26)
                      ]),
                  child: ListTile(
                    leading: Icon(
                      Icons.sim_card,
                      color: Colors.greenAccent[700],
                      size: 40,
                    ),
                    title: const Text("saving to"),
                    subtitle: const Text("MTNGH"),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.lightGreen[600],
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 2,
                              offset: Offset(0.1, 2),
                              color: Colors.black26)
                        ]),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              Icon(
                                Icons.person_outline_sharp,
                                color: Colors.lightGreen[600],
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 60),
                                child: Icon(
                                  Icons.phone,
                                  color: Colors.lightGreen[600],
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 55),
                                child: Icon(
                                  Icons.mail_outline,
                                  color: Colors.lightGreen[600],
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 240,
                          child: Column(
                            children: [
                              TextField(
                                controller: fnController,
                                decoration: const InputDecoration(
                                  hintText: "Enter your first name",
                                ),
                              ),
                              TextField(
                                controller: lnController,
                                decoration: const InputDecoration(
                                    hintText: "Last name"),
                              ),
                              TextField(
                                controller: phoneController,
                                decoration:
                                    const InputDecoration(hintText: "Phone"),
                              ),
                              TextField(
                                controller: mobileController,
                                decoration:
                                    const InputDecoration(hintText: "Mobile"),
                              ),
                              TextField(
                                controller: emailController,
                                decoration:
                                    const InputDecoration(hintText: "Email"),
                              ),
                              TextField(
                                controller: homeController,
                                decoration:
                                    const InputDecoration(hintText: "Home"),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.lightGreen[600],
                          size: 40,
                        )
                      ],
                    ))
              ],
            ),
          )
        ]));
  }
}
