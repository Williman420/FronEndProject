import 'package:flutter/material.dart';
import './noti.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: FittedBox(
            fit: BoxFit.scaleDown,
            child: Container(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.kym-cdn.com/entries/icons/original/000/027/475/Screen_Shot_2018-10-25_at_11.02.15_AM.png"),
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wellcome back Arrash',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 3, 193, 142),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'how are you doing today ?',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          actions: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 6, 5, 4),
              child: SizedBox(
                width: 50,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Notif();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                    size: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: ClipRect(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(16, 20, 16, 0),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: Row(
                      children: [
                        Icon(Icons.search),
                        Text(
                          'Search',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  maxLines: 1,
                  // ignore: avoid_print
                  onTap: () => print('something'),
                ),
              ),
              ListTile(
                title: Text(
                  'Today\'s plan',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color.fromARGB(255, 4, 0, 79),
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(16, 15, 16, 0),
                          width: 164,
                          height: 72,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(4, 0, 79, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  'Activity',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  '30 minutes',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                trailing: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://assets.pikiran-rakyat.com/crop/0x87:774x669/x/photo/2022/05/28/3481259983.jpg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(16, 15, 16, 0),
                          width: 164,
                          height: 72,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(4, 0, 79, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  'Meditate',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  '15 minutes',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                trailing: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://st4.depositphotos.com/26272580/30235/v/1600/depositphotos_302358122-stock-illustration-man-meditating-in-nature-concept.jpg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ), //chokepoint
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(16, 15, 16, 0),
                          width: 164,
                          height: 72,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(4, 0, 79, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  'Food',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  '2 recepies',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                trailing: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdOdj_0zJxzI2nnRCTDuX0w2hG6w69I9recQ&usqp=CAU')),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(16, 15, 16, 0),
                          padding: EdgeInsets.fromLTRB(16, 19, 16, 0),
                          width: 164,
                          height: 72,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 221, 163, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  'Let\'s Go',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 61,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(4, 0, 79, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'Upcoming activities',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color.fromARGB(255, 4, 0, 79),
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                trailing: Text(
                  'see more',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Color.fromRGBO(247, 248, 248, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 247, 248, 248),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'http://images.gofreedownload.net/jump-rope-sport-vector-4791.jpg'),
                      ),
                      title: Text(
                        'Fullbody workout',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'Today, 09.00 AM',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 10),
                      ),
                      trailing: SwitchExample(),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 247, 248, 248),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/vectors/fitness-people-vector-id851716412?k=20&m=851716412&s=612x612&w=0&h=o1aUr9GgINU286hI64kOcKZS0dj0Ble8lWNYzd008j8='),
                      ),
                      title: Text(
                        'Upperbody workout',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'Today, 09.00 AM',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 10),
                      ),
                      trailing: SwitchExample(),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16, 22, 16, 15),
                child: Text(
                  'Recomended for',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color.fromARGB(255, 4, 0, 79),
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                height: 132,
                width: 343,
                margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                padding: EdgeInsets.fromLTRB(20, 20, 15, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 247, 248, 248),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                            child: Text(
                              'Fullbody workout',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                            child: Text(
                              '11 Excresise | 32 minutes',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Align(
                        alignment: Alignment.bottomLeft,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(0, 221, 163, 1),
                          ),
                          child: Text(
                            'view more',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      trailing: Container(
                          height: 100, width: 100, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                height: 132,
                width: 343,
                margin: EdgeInsets.fromLTRB(10, 15, 15, 5),
                padding: EdgeInsets.fromLTRB(20, 20, 15, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 247, 248, 248),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                            child: Text(
                              'Lowerbody workout',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                            child: Text(
                              '12 Excresise | 40 minutes',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Align(
                        alignment: Alignment.bottomLeft,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(0, 221, 163, 1),
                          ),
                          child: Text(
                            'view more',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 132,
                width: 343,
                margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                padding: EdgeInsets.fromLTRB(20, 20, 15, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 247, 248, 248),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                            child: Text(
                              'AB workout',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                            child: Text(
                              '14 Excresise | 20 minutes',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Align(
                        alignment: Alignment.bottomLeft,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(0, 221, 163, 1),
                          ),
                          child: Text(
                            'view more',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});
  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      inactiveTrackColor: Color.fromRGBO(4, 0, 79, 1),
      activeColor: Color.fromRGBO(0, 221, 163, 1),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(
          () {
            light = value;
          },
        );
      },
    );
  }
}


