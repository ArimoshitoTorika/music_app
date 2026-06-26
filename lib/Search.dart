import 'package:flutter/material.dart';

import 'HomePage.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    void _ggg() {}
    void _goToHome() {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return child;  // ✅ no animation, just shows the page instantly
          },
        ),
      );


    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Search', style: TextStyle(color: Colors.white),

        ),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Container(decoration: BoxDecoration(color: Colors.black87)),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(color: Colors.black87),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: _goToHome,
                    child: Icon(Icons.home_outlined, size: 35),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        elevation: 0,
                        overlayColor: Colors.transparent
                    )
                ),ElevatedButton(
                    onPressed: _ggg,
                    child: Icon(Icons.search, size: 35),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        elevation: 0,
                        overlayColor: Colors.transparent
                    )
                ),ElevatedButton(
                    onPressed: _ggg,
                    child: Icon(Icons.library_music_outlined, size: 35),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        elevation: 0,
                        overlayColor: Colors.transparent
                    )
                ),ElevatedButton(
                    onPressed: _ggg,
                    child: Icon(Icons.add_outlined, size: 35),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        elevation: 0,
                        overlayColor: Colors.transparent
                    )
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
