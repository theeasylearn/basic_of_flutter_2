import 'package:flutter/material.dart';
class ListViewDemo2 extends StatelessWidget {
  List<Map<String, String>> Schedule = [
    {
      'match': '1',
      'date': '22-03-2025',
      'day': 'Saturday',
      'time': '7:30 PM',
      'teams': 'Kolkata Knight Riders vs Royal Challengers Bengaluru',
      'venue': 'Eden Gardens, Kolkata',
    },
    {
      'match': '2',
      'date': '23-03-2025',
      'day': 'Sunday',
      'time': '3:30 PM',
      'teams': 'Sunrisers Hyderabad vs Rajasthan Royals',
      'venue': 'Rajiv Gandhi International Stadium, Hyderabad',
    },
    {
      'match': '3',
      'date': '23-03-2025',
      'day': 'Sunday',
      'time': '7:30 PM',
      'teams': 'Chennai Super Kings vs Mumbai Indians',
      'venue': 'MA Chidambaram Stadium, Chennai',
    },
    {
      'match': '4',
      'date': '24-03-2025',
      'day': 'Monday',
      'time': '7:30 PM',
      'teams': 'Delhi Capitals vs Lucknow Super Giants',
      'venue': 'Dr. Y.S. Rajasekhara Reddy ACA-VDCA Cricket Stadium, Visakhapatnam',
    },
    {
      'match': '5',
      'date': '25-03-2025',
      'day': 'Tuesday',
      'time': '7:30 PM',
      'teams': 'Gujarat Titans vs Punjab Kings',
      'venue': 'Narendra Modi Stadium, Ahmedabad',
    },
    {
      'match': '6',
      'date': '26-03-2025',
      'day': 'Wednesday',
      'time': '7:30 PM',
      'teams': 'Rajasthan Royals vs Kolkata Knight Riders',
      'venue': 'Barsapara Cricket Stadium, Guwahati',
    },
    {
      'match': '7',
      'date': '27-03-2025',
      'day': 'Thursday',
      'time': '7:30 PM',
      'teams': 'Sunrisers Hyderabad vs Lucknow Super Giants',
      'venue': 'Rajiv Gandhi International Stadium, Hyderabad',
    },
    {
      'match': '8',
      'date': '28-03-2025',
      'day': 'Friday',
      'time': '7:30 PM',
      'teams': 'Chennai Super Kings vs Royal Challengers Bengaluru',
      'venue': 'MA Chidambaram Stadium, Chennai',
    },
    {
      'match': '9',
      'date': '29-03-2025',
      'day': 'Saturday',
      'time': '7:30 PM',
      'teams': 'Gujarat Titans vs Mumbai Indians',
      'venue': 'Narendra Modi Stadium, Ahmedabad',
    },
    {
      'match': '10',
      'date': '30-03-2025',
      'day': 'Sunday',
      'time': '3:30 PM',
      'teams': 'Delhi Capitals vs Sunrisers Hyderabad',
      'venue': 'Dr. Y.S. Rajasekhara Reddy ACA-VDCA Cricket Stadium, Visakhapatnam',
    },
    {
      'match': '11',
      'date': '30-03-2025',
      'day': 'Sunday',
      'time': '7:30 PM',
      'teams': 'Punjab Kings vs Rajasthan Royals',
      'venue': 'HPCA Stadium, Dharamsala',
    },
    {
      'match': '12',
      'date': '31-03-2025',
      'day': 'Monday',
      'time': '7:30 PM',
      'teams': 'Mumbai Indians vs Royal Challengers Bengaluru',
      'venue': 'Wankhede Stadium, Mumbai',
    },
    {
      'match': '13',
      'date': '01-04-2025',
      'day': 'Tuesday',
      'time': '7:30 PM',
      'teams': 'Gujarat Titans vs Delhi Capitals',
      'venue': 'Narendra Modi Stadium, Ahmedabad',
    },
    {
      'match': '14',
      'date': '02-04-2025',
      'day': 'Wednesday',
      'time': '7:30 PM',
      'teams': 'Lucknow Super Giants vs Punjab Kings',
      'venue': 'Bharat Ratna Shri Atal Bihari Vajpayee Ekana Cricket Stadium, Lucknow',
    },
    {
      'match': '15',
      'date': '03-04-2025',
      'day': 'Thursday',
      'time': '7:30 PM',
      'teams': 'Rajasthan Royals vs Chennai Super Kings',
      'venue': 'Sawai Mansingh Stadium, Jaipur',
    },
    {
      'match': '16',
      'date': '04-04-2025',
      'day': 'Friday',
      'time': '7:30 PM',
      'teams': 'Kolkata Knight Riders vs Sunrisers Hyderabad',
      'venue': 'Eden Gardens, Kolkata',
    },
    {
      'match': '17',
      'date': '05-04-2025',
      'day': 'Saturday',
      'time': '7:30 PM',
      'teams': 'Mumbai Indians vs Gujarat Titans',
      'venue': 'Wankhede Stadium, Mumbai',
    },
    {
      'match': '18',
      'date': '06-04-2025',
      'day': 'Sunday',
      'time': '3:30 PM',
      'teams': 'Delhi Capitals vs Rajasthan Royals',
      'venue': 'Arun Jaitley Stadium, Delhi',
    },
    {
      'match': '19',
      'date': '06-04-2025',
      'day': 'Sunday',
      'time': '7:30 PM',
      'teams': 'Royal Challengers Bengaluru vs Lucknow Super Giants',
      'venue': 'M. Chinnaswamy Stadium, Bengaluru',
    },
    {
      'match': '20',
      'date': '07-04-2025',
      'day': 'Monday',
      'time': '7:30 PM',
      'teams': 'Punjab Kings vs Kolkata Knight Riders',
      'venue': 'HPCA Stadium, Dharamsala',
    },
    {
      'match': '21',
      'date': '08-04-2025',
      'day': 'Tuesday',
      'time': '7:30 PM',
      'teams': 'Sunrisers Hyderabad vs Mumbai Indians',
      'venue': 'Rajiv Gandhi International Stadium, Hyderabad',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View Demo 2"),

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Schedule.length,
                  itemBuilder: (ctx,index){
                    List<String> teams = Schedule[index]['teams'].toString().split(r' vs ');
                    return SizedBox(
                      width: 450,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex:2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Expanded(child: Text(Schedule[index]['match'].toString()),flex: 1),
                                    Expanded(child: Text(Schedule[index]['day'].toString()),flex: 2,),
                                    Expanded(child: Text(Schedule[index]['date'].toString()),flex: 2,),
                                    Expanded(child: Container(
                                        alignment: Alignment.center,
                                        color: Colors.red,
                                        child: Text(Schedule[index]['time'].toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),)),
                                      flex: 1,),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(flex:2,child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(teams[0],style: TextStyle(
                                  fontSize: 24
                              ),),
                            )),
                            Expanded(flex:2,child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(teams[1],
                                style: TextStyle(
                                    fontSize: 24
                                ),),
                            )),
                            Expanded(flex:2,child: Container(
                              alignment: Alignment.centerLeft,
                              color: Colors.green,
                              padding: EdgeInsets.all(2),
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(Schedule[index]['venue'].toString(),
                                  style: TextStyle(color: Colors.white),),
                              ),
                            )),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
