import 'package:flutter/material.dart';

class DrawerRound extends StatelessWidget {
  const DrawerRound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text('Drawer Round'),
      ),

      /// drawer
      drawer: SafeArea(
        minimum: EdgeInsets.zero,
        child: _buildDrawer(context),
      ),
    );
  }

  _buildDrawer(context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 0, right: 5, bottom: 10),
              color: Colors.green[200],
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        // color: active,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  /// ---------------------------
                  /// Building header for drawer .
                  /// ---------------------------

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [Colors.orange, Colors.deepOrange])),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 40,
                        backgroundImage: AssetImage('images/avatar.png'),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),

                  /// ---------------------------
                  /// Building header title for drawer .
                  /// ---------------------------

                  Text(
                    "erika costell",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "@erika07",
                    //  style: TextStyle(color: active, fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              // color: Colors.grey,
              child: Column(
                children: [
                  ListTile(
                    horizontalTitleGap: 5,
                    leading: Icon(
                      Icons.message,
                      color: Colors.brown[800],
                    ),
                    title: Text(
                      'Message',
                      style: TextStyle(fontSize: 16, color: Colors.brown[800]),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    horizontalTitleGap: 5,
                    leading: Icon(Icons.settings, color: Colors.brown[800]),
                    title: Text(
                      'Settings',
                      style: TextStyle(fontSize: 16, color: Colors.brown),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    horizontalTitleGap: 5,
                    leading: Icon(Icons.settings, color: Colors.brown[800]),
                    title: Text(
                      'Settings',
                      style: TextStyle(fontSize: 16, color: Colors.brown),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    horizontalTitleGap: 5,
                    leading: Icon(Icons.settings, color: Colors.brown[800]),
                    title: Text(
                      'Settings',
                      style: TextStyle(fontSize: 16, color: Colors.brown),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    horizontalTitleGap: 5,
                    leading: Icon(Icons.settings, color: Colors.brown[800]),
                    title: Text(
                      'Settings',
                      style: TextStyle(fontSize: 16, color: Colors.brown),
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    horizontalTitleGap: 5,
                    leading: Icon(Icons.help_rounded, color: Colors.brown[800]),
                    title: Text(
                      'Help',
                      style: TextStyle(fontSize: 16, color: Colors.brown),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    horizontalTitleGap: 5,
                    leading: Icon(Icons.share, color: Colors.brown[800]),
                    title: Text(
                      'Share',
                      style: TextStyle(fontSize: 16, color: Colors.brown),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    horizontalTitleGap: 5,
                    leading: Icon(Icons.star_rate, color: Colors.brown[800]),
                    title: Text(
                      'Rate',
                      style: TextStyle(fontSize: 16, color: Colors.brown),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    //throw UnimplementedError();
    return true;
  }
}
