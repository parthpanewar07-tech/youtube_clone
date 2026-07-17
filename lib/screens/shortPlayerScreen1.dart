import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShortPlayerScreen1 extends StatefulWidget {
  const ShortPlayerScreen1({super.key});

  @override
  State<ShortPlayerScreen1> createState() => _ShortPlayerScreen1State();
}

class _ShortPlayerScreen1State extends State<ShortPlayerScreen1> {
  late YoutubePlayerController _controller;
  String textValue = "Subscribe";
  bool isLiked = false;

  @override
  void initState() {
    super.initState();

    // Make sure the URL you pass here is actually a vertical video (Shorts format)
    final videoId = YoutubePlayer.convertUrlToId(
      "https://youtube.com/shorts/tmxl0_3kn7g?si=dyWciHhYoeyAl6S3", // Put your shorts URL here
    ) ?? "05DrDxjMEbU"; // Fallback ID

    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: true,
        hideControls: true, // CRITICAL: Hides default YT web controls
        disableDragSeek: true, // Prevents accidental scrubbing 
      ),
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
    final double screenHeight = MediaQuery.of(context).size.height;
    final bool isWideScreen = screenWidth >= 600 || (screenWidth / screenHeight > 9 / 16);

    Widget content = Stack(
      children: [
        // 1. The Video Player Background
        Positioned.fill(
          child: FittedBox(
            fit: BoxFit.cover,
            // We wrap it in a pointer interceptor so tapping the video 
            // doesn't trigger the hidden webview controls
            child: AbsorbPointer(
              child: SizedBox(
                width: isWideScreen ? 360 : screenWidth,
                height: isWideScreen ? 640 : screenHeight,
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                ),
              ),
            ),
          ),
        ),

        // 2. Right Side Action Buttons
        Positioned(
          right: 12,
          bottom: 40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildActionIcon(
                icon: isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                label: "1.5 B",
                color: isLiked ? Colors.blue : Colors.white,
                onTap: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
              ),
              const SizedBox(height: 25),
              _buildActionIcon(icon: Icons.thumb_down_outlined, label: "Dislike"),
              const SizedBox(height: 25),
              _buildActionIcon(icon: Icons.comment, label: "10 M"),
              const SizedBox(height: 25),
              _buildActionIcon(icon: Icons.reply, label: "Share"),
              const SizedBox(height: 25),
              _buildActionIcon(icon: Icons.more_horiz, label: ""),
            ],
          ),
        ),

        // 3. Bottom Left Channel Info
        Positioned(
          left: 12,
          bottom: 40,
          right: 80, // Prevent overlapping with right icons
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                      "https://ui-avatars.com/api/?name=Channel&background=random",
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "@BMW Sports",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        textValue = textValue == "Subscribe" 
                            ? "Subscribed" 
                            : "Subscribe";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: textValue == "Subscribe" 
                          ? Colors.white 
                          : Colors.grey.withOpacity(0.5),
                      foregroundColor: Colors.black,
                      minimumSize: const Size(80, 32),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                    child: Text(textValue),
                  )
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                "BMW M4 Compition",
                style: TextStyle(color: Colors.white, fontSize: 14),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );

    if (isWideScreen) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: AspectRatio(
            aspectRatio: 9 / 16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: content,
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: content,
        ),
      );
    }
  }

  // Helper widget for the side icons to keep code clean
  Widget _buildActionIcon({
    required IconData icon, 
    required String label, 
    Color color = Colors.white, 
    VoidCallback? onTap
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, color: color, size: 32),
          if (label.isNotEmpty) ...[
            const SizedBox(height: 5),
            Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
          ]
        ],
      ),
    );
  }
}