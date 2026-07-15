import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShortPlayerScreen1 extends StatefulWidget {
  const ShortPlayerScreen1({super.key});

  @override
  State<ShortPlayerScreen1> createState() => _ShortPlayerScreen1State();
}

class _ShortPlayerScreen1State extends State<ShortPlayerScreen1> {
 late YoutubePlayerController _controller;

  bool isLiked = false;
  bool isSubscribed = false;

  @override
  void initState() {
    super.initState();

    final id = YoutubePlayer.convertUrlToId(
      "https://youtube.com/shorts/tmxl0_3kn7g?si=dyWciHhYoeyAl6S3",
    );

    _controller = YoutubePlayerController(
      initialVideoId: id!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: true,
        hideControls: true,
        disableDragSeek: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget sideButton(
    IconData icon,
    String title, {
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 34,
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: false,
      ),
      builder: (context, player) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [

              /// Video
              Positioned.fill(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: player,
                  ),
                ),
              ),

              /// Top Bar
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: const [
                      Text(
                        "Shorts",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 20),
                      Icon(Icons.more_vert, color: Colors.white),
                    ],
                  ),
                ),
              ),

              /// Right Side Buttons
              Positioned(
                right: 12,
                bottom: 100,
                child: Column(
                  children: [

                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        "https://i.pravatar.cc/300",
                      ),
                    ),

                    const SizedBox(height: 25),

                    sideButton(
                      isLiked
                          ? Icons.thumb_up
                          : Icons.thumb_up_alt_outlined,
                      "120K",
                      onTap: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                    ),

                    sideButton(
                      Icons.comment_outlined,
                      "3.5K",
                    ),

                    sideButton(
                      Icons.share_outlined,
                      "Share",
                    ),

                    sideButton(
                      Icons.repeat,
                      "Remix",
                    ),

                    sideButton(
                      Icons.more_horiz,
                      "",
                    ),
                  ],
                ),
              ),

              /// Bottom Details
              Positioned(
                left: 15,
                right: 80,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [

                        const Text(
                          "@ParthPlayz",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(width: 10),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isSubscribed
                                ? Colors.grey
                                : Colors.white,
                            foregroundColor: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              isSubscribed = !isSubscribed;
                            });
                          },
                          child: Text(
                            isSubscribed
                                ? "Subscribed"
                                : "Subscribe",
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      "🔥 Spider-Man Brand New Day Official Trailer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    const Text(
                      "#spiderman #marvel #shorts",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Row(
                      children: [
                        Icon(
                          Icons.music_note,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            "Original Audio",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}