import 'package:flutter/material.dart';
import 'package:project_contact_list/New_Contact.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration(
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide.none),
              hintText: "Search Contacts",
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.lightGreen,
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mic_none_rounded,
                  color: Colors.lightGreen,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
          ],
        ),
        floatingActionButton: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateNew(),
                  ));
            },
            icon: Icon(
              Icons.person_add_alt_1,
              color: Colors.lightGreen[600],
              size: 40,
            )),
        body: ListView(children: const [
          Divider(
            thickness: 4,
          ),
          ListTile(
            title: Text("My profile"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          Divider(
            thickness: 4,
          ),
          ListTile(leading: Text("My favourites")),
          ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage("images/profile.jpg")),
            title: Text("Addai"),
          ),
          ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage("images/profile.jpg")),
            title: Text("Boampong"),
          ),
          ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage("images/profile.jpg")),
            title: Text("Akua"),
          ),
          ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage("images/profile.jpg")),
            title: Text("Addai"),
          ),
          ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage("images/profile.jpg")),
            title: Text("Adiza Salifu"),
          ),
          ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage("images/profile.jpg")),
            title: Text("Akua"),
          ),
          ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage("images/profile.jpg")),
            title: Text("Amponsah"),
          ),
          ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage("images/profile.jpg")),
            title: Text("Bisa K Dei"),
          ),
          ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage("images/profile.jpg")),
            title: Text("Boampong"),
          ),
          ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage("images/profile.jpg")),
            title: Text("Buabeng"),
          ),
        ])

        //Text("My favorates")
        );
  }
}
