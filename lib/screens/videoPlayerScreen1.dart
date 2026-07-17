import 'package:flutter/material.dart';
import 'package:youtube/widget/ytActionButton.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class videoPlayerScreen1 extends StatefulWidget {
  const videoPlayerScreen1({super.key});

  @override
  State<videoPlayerScreen1> createState() => _videoPlayerScreen1State();
}

class _videoPlayerScreen1State extends State<videoPlayerScreen1> {
  late YoutubePlayerController _controller;
  String textValue = "Subscribe";
  bool isliked = false;
  bool isdisliked = false;
  bool issaved = false;
  String textValue1 = "Download";
  @override
  void initState() {
    super.initState();

    final videoId = YoutubePlayer.convertUrlToId(
      "https://www.youtube.com/watch?v=hGSZPc9AA1g",
    );

    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(autoPlay: true, mute: false, loop: true),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isWideScreen = screenWidth >= 800;

    Widget videoDetails = Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "SPIDER-MAN: BRAND NEW DAY - New Trailer | Exclusively In Cinemas 30 July | Book Tickets Now",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            "1.5M views • 12 years ago",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade700,
            ),
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  "assets/images/profile_pic.png",
                ),
              ),

              const SizedBox(width: 12),

              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Parth Playz",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "2.1M subscribers",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    if (textValue == "Subscribe") {
                      textValue = "Subscribed";
                    } else {
                      textValue = "Subscribe";
                    }
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: textValue == "Subscribe"
                        ? Colors.black
                        : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        textValue,
                        style: TextStyle(
                          color: textValue == "Subscribe"
                              ? Colors.grey.shade300
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isliked == false) {
                        isliked = true;
                      } else {
                        isliked = false;
                      }
                    });
                  },
                  child: buildActionButton(
                    isliked
                        ? Icons.thumb_up_alt
                        : Icons.thumb_up_alt_outlined,
                    "1.5K",
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isdisliked == false) {
                        isdisliked = true;
                      } else {
                        isdisliked = false;
                      }
                    });
                  },
                  child: buildActionButton(
                    isdisliked
                        ? Icons.thumb_down_alt
                        : Icons.thumb_down_alt_outlined,
                    "Dislike",
                  ),
                ),
                const SizedBox(width: 8),
                buildActionButton(
                  Icons.reply_outlined,
                  "Share",
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (textValue1 == "Download") {
                        textValue1 = "Downloaded";
                      } else {
                        textValue1 = "Download";
                      }
                    });
                  },
                  child: buildActionButton(
                    textValue1 == "Downloaded"
                        ? Icons.download
                        : Icons.download_outlined,
                    "Download",
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (issaved == false) {
                        issaved = true;
                      } else {
                        issaved = false;
                      }
                    });
                  },
                  child: buildActionButton(
                    issaved
                        ? Icons.library_add
                        : Icons.library_add_outlined,
                    "Save",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget suggestedVideos = Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Suggested Videos",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          suggestedVideo(
            Colors.grey,
            "SPIDER-MAN: BRAND NEW DAY - New Trailer | Exclusively In Cinemas 30 July | Book Tickets Now",
            'https://yt3.googleusercontent.com/q60WxbIPADm1HzayZM95uT8oQogHwHnizCQ6YlE-66oLs1LIBz5WeUeXAvoyZxDDFdioJhSs2HM=s160-c-k-c0x00ffffff-no-rj',
            'https://i.ytimg.com/vi/hGSZPc9AA1g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDpHu78vDwggSz9JzBcsqsJnxHeew',
          ),

          suggestedVideo(
            Colors.grey,
            "NASA discovers alien life on Mars",
            '',
            '',
          ),

          suggestedVideo(
            Colors.red,
            "Top 10 Doraemon Gadgets",
            '',
            '',
          ),

          suggestedVideo(
            Colors.green,
            "Shinchan Funny Moments",
            '',
            '',
          ),

          suggestedVideo(
            Colors.blue,
            "Amazing Space Documentary",
            '',
            '',
          ),

          suggestedVideo(
            Colors.orange,
            "Flutter Complete Course",
            '',
            '',
          ),
        ],
      ),
    );

    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.red,
        progressColors: const ProgressBarColors(
          playedColor: Colors.red,
          handleColor: Colors.redAccent,
        ),
      ),
      builder: (context, player) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: isWideScreen
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left Column: Player and Details
                      Expanded(
                        flex: 7,
                        child: Column(
                          children: [
                            player,
                            Expanded(
                              child: SingleChildScrollView(
                                child: videoDetails,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Divider line
                      Container(
                        width: 1,
                        color: Colors.grey.shade200,
                      ),
                      // Right Column: Suggested Videos list
                      Expanded(
                        flex: 3,
                        child: SingleChildScrollView(
                          child: suggestedVideos,
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      // Video Player
                      player,

                      // Scrollable Content (Details + Suggestions)
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              videoDetails,
                              suggestedVideos,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
