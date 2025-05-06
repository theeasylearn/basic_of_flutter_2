import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Movie {
  final String name;
  final String imageUrl;

  Movie({required this.name, required this.imageUrl});
}
class TVShow {
  final String title;
  final String imageUrl;

  TVShow({required this.title, required this.imageUrl});
}
class BuildContextDemo extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Build Context Demo"),
        ),
        body: LayoutBuilder(builder: (ctx,parent){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(child: showCricketSchedule(parent),height: 200,),
              SizedBox(child: showMovies(parent),height: parent.maxHeight / 4,),
              Expanded(child: showTVShows(parent),),
            ],
          );
        }),
      ),
    );
  }

  showCricketSchedule(BoxConstraints parent) {
    //horizontal ScrollView
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
    return ListView.builder(
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
        });
  }
  showSingleMovie(BoxConstraints parent, Movie topImdbMovie)
  {
    return SizedBox(
      width: parent.maxWidth/3,
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(topImdbMovie.imageUrl),
            ),
                flex: 4),
            Expanded(child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: FittedBox(child: Text(topImdbMovie.name),),
            ),flex: 1,)
          ],
        ),
      ),
    );
  }
  showMovies(BoxConstraints parent) {
    //horizontal ScrollView
    List<Movie> topImdbMovies = [
      Movie(
        name: "The Shawshank Redemption",
        imageUrl: "https://image.tmdb.org/t/p/w500/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
      ),
      Movie(
        name: "The Godfather",
        imageUrl: "https://image.tmdb.org/t/p/w500/3bhkrj58Vtu7enYsRolD1fZdja1.jpg",
      ),
      Movie(
        name: "The Dark Knight",
        imageUrl: "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
      ),
      Movie(
        name: "The Godfather Part II",
        imageUrl: "https://image.tmdb.org/t/p/w500/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg",
      ),
      Movie(
        name: "12 Angry Men",
        imageUrl: "https://image.tmdb.org/t/p/w500/e02s4wmTAExkKg0yF4dEG98ZRpK.jpg",
      ),
      Movie(
        name: "Schindler's List",
        imageUrl: "https://image.tmdb.org/t/p/w500/c8Ass7acuOe4za6DhSattE359gr.jpg",
      ),
      Movie(
        name: "The Lord of the Rings: The Return of the King",
        imageUrl: "https://image.tmdb.org/t/p/w500/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg",
      ),
      Movie(
        name: "Pulp Fiction",
        imageUrl: "https://image.tmdb.org/t/p/w500/dM2w364MScsjFf8pfMbaWUcWrR.jpg",
      ),
      Movie(
        name: "The Good, the Bad and the Ugly",
        imageUrl: "https://image.tmdb.org/t/p/w500/bX2xnavhMYjWDoZp1VM6VnU1xwe.jpg",
      ),
      Movie(
        name: "Fight Club",
        imageUrl: "https://image.tmdb.org/t/p/w500/a26cQPRhJPX6GbWfQbvZdrrp9j9.jpg",
      ),
    ];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topImdbMovies.length,
        itemBuilder: (ctx,index)
        {
          return showSingleMovie(parent,topImdbMovies[index]);
        });
  }

  showTVShows(BoxConstraints parent) {
    //horizontal ScrollView
    //crossAxisCount meams how many items per line
    List<TVShow> topTvShows = [
      TVShow(
        title: "Breaking Bad",
        imageUrl: "https://image.tmdb.org/t/p/w500/ggFHVNu6YYI5L9pCfOacjizRGt.jpg",
      ),
      TVShow(
        title: "Planet Earth II",
        imageUrl: "https://image.tmdb.org/t/p/w500/7r4FieFH6Eh6S55hi8c9LOiF2y.jpg",
      ),
      TVShow(
        title: "Planet Earth",
        imageUrl: "https://image.tmdb.org/t/p/w500/8rIoyM6zYXJNjzGseT3MRusMPWl.jpg",
      ),
      TVShow(
        title: "Band of Brothers",
        imageUrl: "https://image.tmdb.org/t/p/w500/x4pWvJfwY9oVg5zE5Z1W5q3pG6Z.jpg",
      ),
      TVShow(
        title: "Chernobyl",
        imageUrl: "https://image.tmdb.org/t/p/w500/hlLXt2tOPT6RRnjiUmoxyG1LTFi.jpg",
      ),
      TVShow(
        title: "The Wire",
        imageUrl: "https://image.tmdb.org/t/p/w500/4lbjZyF1NWtGzvLk8gy3MgnB6z3.jpg",
      ),
      TVShow(
        title: "Avatar: The Last Airbender",
        imageUrl: "https://image.tmdb.org/t/p/w500/ooBGRQBdbGzBxAVfExiO8r7kloA.jpg",
      ),
      TVShow(
        title: "Blue Planet II",
        imageUrl: "https://image.tmdb.org/t/p/w500/6rC8Z1Yv1X5QWQwZgk5U3r3zCzG.jpg",
      ),
      TVShow(
        title: "The Sopranos",
        imageUrl: "https://image.tmdb.org/t/p/w500/9zcbqSxdsRMZWHYtyCd1nXPr2xq.jpg",
      ),
      TVShow(
        title: "Cosmos: A Spacetime Odyssey",
        imageUrl: "https://image.tmdb.org/t/p/w500/8WwE1vY1x1o1t4bmP0xK1s3kG6Z.jpg",
      ),
      TVShow(
        title: "Cosmos",
        imageUrl: "https://image.tmdb.org/t/p/w500/8WwE1vY1x1o1t4bmP0xK1s3kG6Z.jpg",
      ),
      TVShow(
        title: "Our Planet",
        imageUrl: "https://image.tmdb.org/t/p/w500/9Xw0I5RV2ZqNLpul6lXKoviYg55.jpg",
      ),
      TVShow(
        title: "Game of Thrones",
        imageUrl: "https://image.tmdb.org/t/p/w500/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg",
      ),
      TVShow(
        title: "The World at War",
        imageUrl: "https://image.tmdb.org/t/p/w500/8WwE1vY1x1o1t4bmP0xK1s3kG6Z.jpg",
      ),
      TVShow(
        title: "Bluey",
        imageUrl: "https://image.tmdb.org/t/p/w500/8WwE1vY1x1o1t4bmP0xK1s3kG6Z.jpg",
      ),
      TVShow(
        title: "Rick and Morty",
        imageUrl: "https://image.tmdb.org/t/p/w500/8kOWDBK6XlPUzckuHDo3wwVRFwt.jpg",
      ),
      TVShow(
        title: "Fullmetal Alchemist: Brotherhood",
        imageUrl: "https://image.tmdb.org/t/p/w500/8WwE1vY1x1o1t4bmP0xK1s3kG6Z.jpg",
      ),
      TVShow(
        title: "Life",
        imageUrl: "https://image.tmdb.org/t/p/w500/8WwE1vY1x1o1t4bmP0xK1s3kG6Z.jpg",
      ),
      TVShow(
        title: "The Last Dance",
        imageUrl: "https://image.tmdb.org/t/p/w500/8WwE1vY1x1o1t4bmP0xK1s3kG6Z.jpg",
      ),
      TVShow(
        title: "The Twilight Zone",
        imageUrl: "https://image.tmdb.org/t/p/w500/8WwE1vY1x1o1t4bmP0xK1s3kG6Z.jpg",
      ),
    ];
    return GridView.builder(
        itemCount: topTvShows.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5),
        itemBuilder: (ctx,index)
        {
          return Card(
            elevation: 10,
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Image.network(
                    fit: BoxFit.fill,
                    topTvShows[index].imageUrl.toString(),),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      alignment: Alignment.center,
                      child: FittedBox(child: Text(topTvShows[index].title.toString()),)),
                )
              ],
            ),
          );
        }
    );
  }
}