import 'package:flutter/material.dart';
class HomeRcmdCard extends StatelessWidget {
  final String songTitle;
  final String leftImage;
  final String centerImage;
  final String rightImage;
  final String title;
  final Color bgColor;
  const HomeRcmdCard({super.key,required this.songTitle, required this.leftImage, required this.centerImage, required this.rightImage, required this.title, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    double centerImageWidth =90;
    double sideImageWidth=60;
    String icon ='assets/images/spotify_dark.png';
    String topTitle = "RADIO";
    return SizedBox(
      height: 220,
      width: 160,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(6),
            ),
            height: 160,
            width: 160,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(alignment: Alignment.topLeft,child: Image.asset(icon,width: 20,height: 20,),),
                ),
                Padding(padding: const EdgeInsets.all(8.0),
                  child: Align(alignment: Alignment.topRight,child: Text("RADIO",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 14),),),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(sideImageWidth/2),
                    child: Image.network(leftImage,width: sideImageWidth,),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(sideImageWidth/2,),
                    child: Image.network(rightImage,width: sideImageWidth,),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                    child: FittedBox(fit: BoxFit.scaleDown,child: SizedBox(height: 30, child: Text(songTitle,maxLines: 2,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),))),
                  ),
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            width: 2,
                            color: bgColor
                        )
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(centerImageWidth/2),
                      child: Image.network(
                        centerImage,
                        width: centerImageWidth,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white,fontSize: 16),
          ),
        ],
      ),
    );
  }
}
