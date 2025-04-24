import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

class TestsWidget extends StatefulWidget {
  @override
  _TeacherPage createState() => _TeacherPage();
}

class _TeacherPage extends State<TestsWidget> {
  @override
  void dispose() {
    super.dispose();
  }

  final List<Map<String, dynamic>> messages = [
    {
      "text": "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
      "isMe": false,
      "time": "10 دقيقة"
    },
    {
      "text": "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
      "isMe": true,
      "time": "10 دقيقة"
    },
    {
      "text": "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
      "isMe": false,
      "time": "10 دقيقة"
    },
    {
      "text": "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
      "isMe": true,
      "time": "10 دقيقة"
    },
    {
      "text": "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
      "isMe": false,
      "time": "10 دقيقة"
    },
    {
      "text": "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
      "isMe": true,
      "time": "10 دقيقة"
    },
    {"text": "هذا", "isMe": false, "time": "10 دقيقة"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("images/backgroundAppbar.png"),
                fit: BoxFit.cover,
              ),
              color: Theme.of(context).appBarTheme.backgroundColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 15, right: 15),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/bg_intro_page1.png'),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'علي شيخو',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg_things.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                    text: messages[index]["text"],
                    isMe: messages[index]["isMe"],
                    time: messages[index]["time"],
                  );
                },
              ),
            ),
            ChatInputField(),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isMe;
  final String time;

  const ChatBubble({
    required this.text,
    required this.isMe,
    required this.time,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
          mainAxisAlignment:
              isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            if (!isMe)
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/bg_intro_page1.png'),
                  radius: 20,
                ),
              ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment:
                  isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  decoration: BoxDecoration(
                    color: isMe
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20),
                      bottomLeft: !isMe
                          ? const Radius.circular(20)
                          : const Radius.circular(0),
                      bottomRight: !isMe
                          ? const Radius.circular(0)
                          : const Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: isMe
                          ? Colors.white
                          : Theme.of(context).textTheme.bodyLarge?.color,
                      fontSize: 16,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ),
                Text(
                  time,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                ),
              ],
            ),
            const SizedBox(
              width: 8,
            ),
            if (isMe)
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/bg_intro_page1.png'),
                  radius: 20,
                ),
              ),
          ]),
    );
  }
}

class ChatInputField extends StatefulWidget {
  @override
  _ChatInputFieldState createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  TextEditingController _controller = TextEditingController();
  bool _emojiShowing = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
        right: 10,
        left: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.emoji_emotions,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: () {
                    setState(() {
                      _emojiShowing = !_emojiShowing;
                    });
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "اكتب رسالة...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.send,
                    color: Color(0xFF588760),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          _emojiShowing
              ? SizedBox(
                  height: 250,
                  child: EmojiPicker(
                    onEmojiSelected: (category, emoji) {
                      _controller.text += emoji.emoji;
                    },
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
