import 'package:flutter/material.dart';
import 'package:music_app/Search.dart';
import 'package:music_app/Widgets/home_rcmd_card.dart';
import 'package:music_app/Widgets/home_recent_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String _tayler =
        'https://imgs.search.brave.com/N0yVqL9CBQLGMT8w_defW_HhmNyFQWFLhRSc-SFNjGM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aW5kaWVncm91bmQu/bmV0L2ltYWdlcy9i/bG9nLzIwMjQvaW5k/aWVibG9nLWJlc3Qt/YWxidW0tY292ZXJz/LTIwMTBzLTA3Lmpw/Zw';
    String _daftpunk =
        'https://imgs.search.brave.com/hpZyEhc8lWggKMDydMv4DM_E1lacVNBBAUM4eQc-zgc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aW5kaWVncm91bmQu/bmV0L2ltYWdlcy9i/bG9nLzIwMjQvaW5k/aWVibG9nLWJlc3Qt/YWxidW0tY292ZXJz/LTIwMTBzLTQ5Lmpw/Zw';
    String _rex =
        'https://imgs.search.brave.com/uaJKYn6bUGFtsNnm6z4OCkZjK9dP1T4tnPMyNkxPedE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/c29uZW1pYy5uZXQv/aS82MDAvdy81MDlj/Njk5NWE0ZDE1Yjc2/YTk4OTk5ZjliYjdl/ZDc2Yi8xNDM0OTQw/OS9yZXgtb3Jhbmdl/LWNvdW50eS1wb255/LWNvdmVyLWFydC5q/cGc';
    void _ggg() {}
    void _goToSearch() {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          // transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SearchPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return child; // no animation, just shows the page instantly
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                'assets/images/Pfp.jpg',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 20),
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
              ),
              child: TextButton(
                onPressed: _ggg,
                child: Text(
                  "All",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withAlpha(50),
              ),
              child: TextButton(
                onPressed: _ggg,
                child: Text(
                  "Music",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withAlpha(50),
              ),
              child: TextButton(
                onPressed: _ggg,
                child: Text(
                  "Podcast",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Expanded(
          child: Container(
            height: 2000,
            color: Colors.black87,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      HomeRecentCard(cardImage: _tayler, cardTitle: "Test"),
                      SizedBox(width: 10),
                      HomeRecentCard(
                        cardImage: _daftpunk,
                        cardTitle: "Daft Punk",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      HomeRecentCard(cardImage: _rex, cardTitle: "Test"),
                      SizedBox(width: 10),
                      HomeRecentCard(
                        cardImage: _daftpunk,
                        cardTitle: "Daft Punk",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      HomeRecentCard(cardImage: _tayler, cardTitle: "Test"),
                      SizedBox(width: 10),
                      HomeRecentCard(
                        cardImage: _daftpunk,
                        cardTitle: "Daft Punk",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      HomeRecentCard(cardImage: _tayler, cardTitle: "Test"),
                      SizedBox(width: 10),
                      HomeRecentCard(
                        cardImage: _daftpunk,
                        cardTitle: "Daft Punk",
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Recommended Stations",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 20),
                        HomeRcmdCard(
                          songTitle: "Hell everyone I'm nig",
                          leftImage: _rex,
                          centerImage: _tayler,
                          rightImage: _daftpunk,
                          title: "Rex Orange County, Tayler ,The creator",
                          bgColor: Colors.blue,
                        ),
                        SizedBox(width: 20),
                        HomeRcmdCard(
                          songTitle: "Hell everyone I'm nig",
                          leftImage: _daftpunk,
                          centerImage: _rex,
                          rightImage: _tayler,
                          title: "Rex Orange County, Tayler ,The creator",
                          bgColor: Colors.orange,
                        ),
                        SizedBox(width: 20),
                        HomeRcmdCard(
                          songTitle: "Hell everyone I'm nig",
                          leftImage: _daftpunk,
                          centerImage: _tayler,
                          rightImage: _daftpunk,
                          title: "Rex Orange County, Tayler ,The creator",
                          bgColor: Colors.purple,
                        ),
                        SizedBox(width: 20),
                        HomeRcmdCard(
                          songTitle: "Hell everyone I'm nig",
                          leftImage: _daftpunk,
                          centerImage: _tayler,
                          rightImage: _daftpunk,
                          title: "Rex Orange County, Tayler ,The creator",
                          bgColor: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(color: Colors.black87),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _ggg,
                  child: Icon(
                    Icons.home_rounded,
                    size: 35,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    overlayColor: Colors.transparent,
                  ),
                ),
                ElevatedButton(
                  onPressed: _goToSearch,
                  child: Icon(Icons.search, size: 35, color: Colors.grey),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    overlayColor: Colors.transparent,
                  ),
                ),
                ElevatedButton(
                  onPressed: _ggg,
                  child: Icon(
                    Icons.library_music_outlined,
                    size: 35,
                    color: Colors.grey,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    overlayColor: Colors.transparent,
                  ),
                ),
                ElevatedButton(
                  onPressed: _ggg,
                  child: Icon(Icons.add_outlined, size: 35, color: Colors.grey),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    overlayColor: Colors.transparent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
