import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("malickcoly342@gmail.com"),
            accountName: Text("Malick COLY"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://avatars1.githubusercontent.com/u/55498348?s=460&u=126c86a4295c6eb7114f93926ee6a12447ba6250&v=4"
              ),
            ),
            otherAccountsPictures: <Widget>[
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("adding new account ...")
                      );
                    },
                  );
                },
                child: CircleAvatar(
                  child: Icon(Icons.add)
                )
              )
            ],
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.inbox),
            title: Text("Inbox"),
            trailing: Chip(
              label: 
                Text("88", style: TextStyle(fontWeight: FontWeight.bold)),
                backgroundColor: Colors.blue[100],
            ),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.edit),
            title: Text("Draft")
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.archive),
            title: Text("Archive")
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.paperPlane),
            title: Text("Sent")
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.trash),
            title: Text("Trash")
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.cog),
                title: Text("Settings"),
              )
            )
          )
        ]
      ),
    );
  }
}