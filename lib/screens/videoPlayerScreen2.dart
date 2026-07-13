import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class videoPlayerScreen2 extends StatefulWidget {
  const videoPlayerScreen2({super.key});

  @override
  State<videoPlayerScreen2> createState() => _videoPlayerScreen2State();
}

class _videoPlayerScreen2State extends State<videoPlayerScreen2> {
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

  Widget _buildActionButton(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.black),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget suggestedVideo(Color color, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Container(height: 220, width: double.infinity, color: color),
          const SizedBox(height: 8),
          Row(
            children: [
              const CircleAvatar(radius: 20, child: Icon(Icons.person)),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              const Icon(Icons.more_vert),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            child: Column(
              children: [
                // Video Player
                player,

                // Scrollable Content
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
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
                                  child: _buildActionButton(
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
                                  child: _buildActionButton(
                                    isdisliked
                                        ? Icons.thumb_down_alt
                                        : Icons.thumb_down_alt_outlined,
                                    "Dislike",
                                  ),
                                ),
                                const SizedBox(width: 8),
                                _buildActionButton(
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
                                  child: _buildActionButton(
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
                                  child: _buildActionButton(
                                    issaved
                                        ? Icons.library_add
                                        : Icons.library_add_outlined,
                                    "Save",
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),

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
                            "NASA discovers alien life on Mars",
                          ),

                          suggestedVideo(Colors.red, "Top 10 Doraemon Gadgets"),

                          suggestedVideo(
                            Colors.green,
                            "Shinchan Funny Moments",
                          ),

                          suggestedVideo(
                            Colors.blue,
                            "Amazing Space Documentary",
                          ),

                          suggestedVideo(
                            Colors.orange,
                            "Flutter Complete Course",
                          ),
                        ],
                      ),
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
