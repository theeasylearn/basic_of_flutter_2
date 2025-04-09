import 'package:flutter/material.dart';
class WrapDemo extends StatelessWidget {

  Widget Player(int no,String name,int tshirt_no,String hexcode)
  {
    return Card(
      elevation: 10,
      child: Container(
        height: 200,
        width: 200,
        color: Color(int.parse(hexcode.replaceFirst('#', '0xFF'))),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(child: FittedBox(child: Text(
              tshirt_no.toString(),
              style: TextStyle(
                  color: Colors.white
              ),),),flex: 4,),
            Expanded(child: FittedBox(child: Text(name,style:
            TextStyle(
                color: Colors.white
            ),),),flex: 1,),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wrap demp"),
        ),
        body: Material(child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 07,
            runSpacing: 07,
            children: [
              Player(1, 'Virat Kohli', 18, '#00008B'),        // Dark Blue
              Player(2, 'Rohit Sharma', 45, '#00008B'),
              Player(3, 'Jasprit Bumrah', 93, '#00008B'),
              Player(4, 'Steve Smith', 49, '#FFD700'),        // Gold
              Player(5, 'David Warner', 31, '#FFD700'),
              Player(6, 'Pat Cummins', 30, '#FFD700'),
              Player(7, 'Joe Root', 66, '#1C1C8E'),           // England Blue
              Player(8, 'Ben Stokes', 55, '#1C1C8E'),
              Player(9, 'Jos Buttler', 63, '#1C1C8E'),
              Player(10, 'Babar Azam', 56, '#006400'),        // Pakistan Green
              Player(11, 'Shaheen Afridi', 10, '#006400'),
              Player(12, 'Mohammad Rizwan', 16, '#006400'),
              Player(13, 'Quinton de Kock', 12, '#228B22'),   // SA Green
              Player(14, 'Kagiso Rabada', 25, '#228B22'),
              Player(15, 'Aiden Markram', 4, '#228B22'),
              Player(16, 'Kane Williamson', 22, '#000000'),   // NZ Black
              Player(17, 'Trent Boult', 18, '#000000'),
              Player(18, 'Devon Conway', 88, '#000000'),
              Player(19, 'Kusal Mendis', 2, '#1E90FF'),       // SL Blue
              Player(20, 'Dasun Shanaka', 7, '#1E90FF'),
              Player(21, 'Wanindu Hasaranga', 49, '#1E90FF'),
              Player(22, 'Shakib Al Hasan', 75, '#006A4E'),   // Bangladesh Green
              Player(23, 'Liton Das', 16, '#006A4E'),
              Player(24, 'Taskin Ahmed', 3, '#006A4E'),
              Player(25, 'Rashid Khan', 19, '#1E90FF'),       // Afghanistan Blue
              Player(26, 'Mohammad Nabi', 7, '#1E90FF'),
              Player(27, 'Rahmanullah Gurbaz', 21, '#1E90FF'),
              Player(28, 'Nicholas Pooran', 29, '#800000'),   // Maroon
              Player(29, 'Jason Holder', 98, '#800000'),
              Player(30, 'Shimron Hetmyer', 189, '#800000'),
              Player(31, 'Sikandar Raza', 24, '#FF0000'),     // Zimbabwe Red/Yellow
              Player(32, 'Sean Williams', 14, '#FF0000'),
              Player(33, 'MS Dhoni', 7, '#00008B'),
              Player(34, 'Shubman Gill', 77, '#00008B'),
              Player(35, 'KL Rahul', 1, '#00008B'),
              Player(36, 'Ravindra Jadeja', 8, '#00008B'),
              Player(37, 'Kuldeep Yadav', 23, '#00008B'),
              Player(38, 'Mohammed Siraj', 73, '#00008B'),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
