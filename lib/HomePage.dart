import 'package:flutter/material.dart';
import 'package:music_app/Search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String _tayler =
        'https://imgs.search.brave.com/N0yVqL9CBQLGMT8w_defW_HhmNyFQWFLhRSc-SFNjGM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aW5kaWVncm91bmQu/bmV0L2ltYWdlcy9i/bG9nLzIwMjQvaW5k/aWVibG9nLWJlc3Qt/YWxidW0tY292ZXJz/LTIwMTBzLTA3Lmpw/Zw';
    String _daftpunk =
        'https://imgs.search.brave.com/hpZyEhc8lWggKMDydMv4DM_E1lacVNBBAUM4eQc-zgc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aW5kaWVncm91bmQu/bmV0L2ltYWdlcy9i/bG9nLzIwMjQvaW5k/aWVibG9nLWJlc3Qt/YWxidW0tY292ZXJz/LTIwMTBzLTQ5Lmpw/Zw';
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
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withAlpha(50),
                        ),
                        width: 185,
                        height: 60,

                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(_tayler),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "ABC Mix",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withAlpha(50),
                        ),
                        width: 185,
                        height: 60,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(_daftpunk),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "POP Mix",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withAlpha(50),
                        ),
                        width: 185,
                        height: 60,

                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(_tayler),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "ABC Mix",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withAlpha(50),
                        ),
                        width: 185,
                        height: 60,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(_daftpunk),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "POP Mix",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withAlpha(50),
                        ),
                        width: 185,
                        height: 60,

                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(_tayler),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "ABC Mix",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withAlpha(50),
                        ),
                        width: 185,
                        height: 60,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(_daftpunk),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "POP Mix",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withAlpha(50),
                        ),
                        width: 185,
                        height: 60,

                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(_tayler),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "ABC Mix",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withAlpha(50),
                        ),
                        width: 185,
                        height: 60,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(_daftpunk),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "POP Mix",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ],
                        ),
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
                        SizedBox(
                          height: 200,
                          width: 160,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                height: 160,
                                width: 160,
                                child: Stack(
                                  children: [
                                    Text("data"),
                                    Center(
                                      child: Image.network(
                                        _daftpunk,
                                        width: 40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "ABJBJBsf, dshfbsjdbfsd, dsdjfnsdkdbfdsbfjsbdfjbsdnfsdfs",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
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
