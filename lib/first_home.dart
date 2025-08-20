import 'package:flutter/material.dart';

class WhatsAppUiDemo extends StatelessWidget {
  const WhatsAppUiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF16BC4B),
        leading: const Icon(Icons.arrow_back_ios, color: Colors.white),
        title: Row(
          children: const [
            CircleAvatar(backgroundImage: AssetImage("assets/images/p3.jpg")),
            SizedBox(width: 10),
            Text(
              'mo shaaban',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.phone, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.videocam_outlined, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.more_vert_rounded, color: Colors.white),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF181818),
          image: DecorationImage(
            image: AssetImage("assets/images/pp.png"),
            repeat: ImageRepeat.repeat,
            opacity: 0.2,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: const [
                      _IncomingMessage(text: "السلام عليكم"),
                      _OutgoingMessage(text: "عليكم السلام"),
                      _IncomingMessage(text: "ممكن تبعت صوره "),
                      _OutgoingMessage(text: "حاضر"),
                      _OutgoingMessage(
                        text: "اتفضل",
                        image: 'assets/images/p4.JPG'),
                      _IncomingMessage(text: "تسلم ي غالي"),
                      
                      
                    ],
                  ),
                ),

                const _InputBar(),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _IncomingMessage extends StatelessWidget {
  final String text;
  const _IncomingMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Color(0xFF16BC4B),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}

class _OutgoingMessage extends StatelessWidget {
  final String text;
  final String? image;

  const _OutgoingMessage({required this.text, this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Color(0xFF292D36),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (image != null && image!.isNotEmpty) ...[
              Image.asset(image!, width: 150, fit: BoxFit.cover),
              const SizedBox(height: 8),
            ],
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}

class _InputBar extends StatelessWidget {
  const _InputBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: const Color.fromARGB(59, 7, 195, 76)),
            ),
            child: const TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white70,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                suffixIcon: Icon(Icons.send, color: Colors.white),
                hintText: "Type a Message…",
                hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),

        Material(
          color: Color(0xFF16BC4B),
          shape: const CircleBorder(),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
