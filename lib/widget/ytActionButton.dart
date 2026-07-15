import 'package:flutter/material.dart';

Widget buildActionButton(IconData icon, String label) {
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

Widget suggestedVideo(
  Color color,
  String title,
  String logoUrl,
  String thumbnailUrl,
) {
  final bool hasThumbnail = thumbnailUrl.isNotEmpty;
  final bool hasLogo = logoUrl.isNotEmpty;

  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Column(
      children: [
        Container(
          height: 220,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            image: hasThumbnail
                ? DecorationImage(
                    image: NetworkImage(thumbnailUrl),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          child: !hasThumbnail
              ? const Center(
                  child: Icon(
                    Icons.video_library,
                    size: 50,
                    color: Colors.white60,
                  ),
                )
              : null,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.shade200,
              child: hasLogo
                  ? ClipOval(
                      child: Image.network(
                        logoUrl,
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.person, color: Colors.grey);
                        },
                      ),
                    )
                  : const Icon(Icons.person, color: Colors.grey),
            ),
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

