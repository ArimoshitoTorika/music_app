import 'package:flutter/material.dart';
import 'package:music_app/Search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            return child; // ✅ no animation, just shows the page instantly
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
              child: Image.asset('assets/images/Pfp.jpg', height: 50,width: 50,fit: BoxFit.cover,),
            ),
            Text('Home', style: TextStyle(color: Colors.white)),
          ],
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
                  onPressed: _ggg,
                  child: Icon(Icons.home_rounded, size: 35),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    overlayColor: Colors.transparent,
                  ),
                ),
                ElevatedButton(
                  onPressed: _goToSearch,
                  child: Icon(Icons.search, size: 35),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    overlayColor: Colors.transparent,
                  ),
                ),
                ElevatedButton(
                  onPressed: _ggg,
                  child: Icon(Icons.library_music_outlined, size: 35),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    overlayColor: Colors.transparent,
                  ),
                ),
                ElevatedButton(
                  onPressed: _ggg,
                  child: Icon(Icons.add_outlined, size: 35),
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
