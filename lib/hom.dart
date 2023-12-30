import 'package:flutter/material.dart';
import 'package:lab7/page2.dart';

class MyHome extends StatelessWidget {
  Color c = Color.fromARGB(255, 66, 66, 207);
  Color c2 = Colors.white;
  SizedBox sbw = SizedBox(
    width: 20,
  );
  SizedBox sbh = SizedBox(
    height: 20,
  );
  @override
  Widget build(BuildContext context) {
    Color c = Color.fromARGB(255, 61, 47, 164);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: c,
          actions: [
            sbw,
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.close,
                color: c2,
              ),
            ),
            sbw,
            Icon(
              Icons.facebook,
              color: c2,
            ),
            sbw,
            Icon(Icons.phone,color: c2,),
            sbw,
            Icon(Icons.share,color: c2,)
          ],
        ),
        body: Center(
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 100,
            child: CircleAvatar(
              backgroundColor: c,
              radius: 70,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.amber,
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: CircleAvatar(
                  child: IconButton(icon: Icon(Icons.close,),onPressed: ()=>Navigator.of(context).pop(),),
                  radius: 120,
                ),
              ),
              Divider(
                height: 2,
                thickness: 3,
                color: Colors.black,
              ),
              menuItem(Icon(Icons.home), 'logain', page2(), context),
              menuItem(Icon(Icons.home), 'users', MyHome(), context),
              menuItem(Icon(Icons.home), 'setting', MyHome(), context),
              menuItem(Icon(Icons.home), 'help', MyHome(), context),
              menuItem(Icon(Icons.home), 'exite', MyHome(), context),
            ],
          ),
        ),
        bottomNavigationBar: Text("IT4"),
      ),
    );
  }

  Padding menuItem(icon, txt, pageScreen, context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2),
      child: ListTile(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => pageScreen)),
        tileColor: c,
        title: Text(txt),
        leading: icon,
        trailing: Icon(Icons.forward),
      ),
    );
  }
}
