import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/youtube_Icon.png'),
              ),
            ),
          ),
        ),
        titleSpacing: 0,
        title: Text(
          "YouTube",
          style: GoogleFonts.oswald(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Icon(Icons.cast, color: Colors.black, size: 30),
          SizedBox(width: 12),
          Icon(Icons.notifications_none_sharp, color: Colors.black, size: 30),
          SizedBox(width: 12),
          Icon(Icons.search, color: Colors.black, size: 30),
          SizedBox(width: 12),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                  image: AssetImage('assets/images/profile_pic.png'),
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Icon(Icons.explore_outlined, color: Colors.black, size: 35),
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      width: 100,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.purple, Colors.pink, Colors.red],
                        ),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Container(
                        height: 33,
                        width: 98,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'New to you',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'UX design',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Figma',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Flutter',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/ytVid1');
                  },
                  child: Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      image: DecorationImage(
                        image: AssetImage('assets/images/mars.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Positioned(
                  top: 195,
                  right: 5,
                  left: 340,
                  bottom: 5,
                  child: Container(
                    height: 35,
                    width: 55,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(113, 0, 0, 0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        '25:00',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          image: DecorationImage(
                            image: AssetImage('assets/images/nasa_logo.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Breaking! NASA discovers alien life \non Mars',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "NASA · 92.2M views · Now",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_vert, color: Colors.black, size: 30),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey[300], thickness: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/youtube_Shorts_Icon.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Shorts',
                        style: GoogleFonts.oswald(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 300,
                          width: 162,
                          margin: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/Short/Shorts${index + 1}.png",
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/ytVid2');
                      },
                      child: Container(
                        height: 220,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          image: DecorationImage(
                            image: AssetImage('assets/images/volcano.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 195,
                      right: 5,
                      left: 340,
                      bottom: 5,
                      child: Container(
                        height: 35,
                        width: 55,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(113, 0, 0, 0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            '25:00',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          image: DecorationImage(
                            image: AssetImage('assets/images/volcano_logo.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Volcano goes boom \n ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          "BoomChannel · 82K views · 6 months ago",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_vert, color: Colors.black, size: 30),
                  ],
                ),
                SizedBox(height: 10),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/ytVid2');
                      },
                      child: Container(
                        height: 220,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          image: DecorationImage(
                            image: NetworkImage('https://i.ytimg.com/vi/hGSZPc9AA1g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDpHu78vDwggSz9JzBcsqsJnxHeew'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 195,
                      right: 5,
                      left: 340,
                      bottom: 5,
                      child: Container(
                        height: 35,
                        width: 55,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(113, 0, 0, 0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            '25:00',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          image: DecorationImage(
                            image: NetworkImage('https://yt3.googleusercontent.com/q60WxbIPADm1HzayZM95uT8oQogHwHnizCQ6YlE-66oLs1LIBz5WeUeXAvoyZxDDFdioJhSs2HM=s160-c-k-c0x00ffffff-no-rj'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    SingleChildScrollView(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'SPIDER-MAN: BRAND NEW DAY - \nNew Trailer | Exclusively In Cinemas \n30 July | Book Tickets Now',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            "BoomChannel · 82K views · 6 months ago",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.more_vert, color: Colors.black, size: 30),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
