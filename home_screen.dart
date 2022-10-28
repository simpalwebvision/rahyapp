import 'package:flutter/material.dart';
import 'package:rahyapp/partner/Bargainer_partner.dart';
import 'package:rahyapp/partner/Manage_partner.dart';
import 'package:rahyapp/partner/create_partner.dart';
import 'package:rahyapp/partner/lead_partner.dart';
import 'package:rahyapp/partner/panding_partner.dart';
import 'package:rahyapp/screens/about_screen.dart';
import 'package:rahyapp/screens/changepassword_screen.dart';
import 'package:rahyapp/screens/images_screen.dart';
import 'package:rahyapp/screens/notification_screen.dart';
import 'package:rahyapp/screens/profile_screen.dart';
import 'package:rahyapp/views/drop_down_helper.dart';

class HomeScreem extends StatefulWidget {
  const HomeScreem({Key? key}) : super(key: key);

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Rahy-logo.png',
                fit: BoxFit.contain,
                width: 120,
                height: 120,
              )
            ],
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 9, 223, 62),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()));
                },
                icon: Icon(Icons.notification_add)),
            PopupMenuButton<int>(
              onSelected: (item) => onSeleected(context, item),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 0,
                  child: Text('ProFile'),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text('Change Password'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('Log Out'),
                )
              ],
            )
          ]),

      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                accountName: Text(
                  "Simpal yadav",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("simpalwebvision@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "S",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(' Home '),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ExpansionTile(
              title: Text('Partner'),
              leading: Icon(Icons.person),
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreatePartner()));
                  },
                  title: Text('Create Partner'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManagePanter()));
                  },
                  title: Text('Manage Partner'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BargainerPartner()));
                  },
                  title: Text('Bargains Pending'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PandingPartner()));
                  },
                  title: Text('Pending Acivation'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LeadPanter()));
                  },
                  title: Text('Lead List'),
                )
              ],
            ),

            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Sales Router '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DropdownPages()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.percent),
              title: const Text(' About Us '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Deawer

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Card(
                elevation: 0, //<-- SEE HERE
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Home',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(9.0),
                padding: EdgeInsets.all(9.0),
                alignment: Alignment.topCenter,
                width: 500,
                height: 400,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Today Registration',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Registration of Today',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(9.0),
                padding: EdgeInsets.all(9.0),
                alignment: Alignment.topCenter,
                width: 500,
                height: 400,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Today Lead',
                      style: TextStyle(fontSize: 20),
                    ),
                    Image.asset('assets/images/chart.gif'),
                    Text('Your Schedule is Empty'),
                    Text('Make some lead for schedule data to appear'),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(9.0),
                padding: EdgeInsets.all(9.0),
                alignment: Alignment.topCenter,
                width: 500,
                height: 400,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Total Leads (Months)',
                      style: TextStyle(fontSize: 20),
                    ),
                    Image.asset('assets/images/chart.gif'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Registration of Today',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(9.0),
                padding: EdgeInsets.all(9.0),
                alignment: Alignment.topCenter,
                width: 500,
                height: 400,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Pending Docments Approval',
                      style: TextStyle(fontSize: 20),
                    ),
                    Image.asset('assets/images/chart.gif'),
                    Text('1 Bargain Todays')
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(9.0),
                padding: EdgeInsets.all(9.0),
                alignment: Alignment.topCenter,
                width: 500,
                height: 400,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Pending Bargain',
                      style: TextStyle(fontSize: 20),
                    ),
                    Image.asset('assets/images/chart.gif'),
                    Text('Bargain')
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                color: Colors.amber,
                margin: EdgeInsets.all(9.0),
                padding: EdgeInsets.all(9.0),
                alignment: Alignment.topCenter,
                width: 500,
                height: 400,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Total Registraion(Months)',
                      style: TextStyle(fontSize: 20),
                    ),
                    Image.asset('assets/images/chart.gif'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'No Lead of this month',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(9.0),
                padding: EdgeInsets.all(9.0),
                alignment: Alignment.topCenter,
                width: 500,
                height: 400,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Today Registration',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Registration of Today',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(9.0),
                padding: EdgeInsets.all(9.0),
                alignment: Alignment.topCenter,
                width: 500,
                height: 400,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Today Registration',
                      style: TextStyle(fontSize: 20),
                    ),
                    Image.asset('assets/images/chart.gif'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Registration of Today',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onSeleected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ImagesScreen()),
        );
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Changepasswordscreen()));
        break;
    }
  }
}
