import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/share/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  final String photo =
      'https://scontent.fuio32-1.fna.fbcdn.net/v/t39.30808-6/378781290_2097082470500352_8854447576813900385_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEQ8hp3jXAxC0c5KG9fc6yi1TAK1hwGCAjVMArWHAYICP125dbdu7jyEPKEBC5h4nt14KNTRbiP-1F6Yd9K0bZH&_nc_ohc=BMCzpBA79O0Q7kNvgFCAwRP&_nc_ht=scontent.fuio32-1.fna&oh=00_AfBao37XquZhhOO0G8AOsBNk-5-BUev3dxNQoXXtfcF_1Q&oe=663AFCAD';
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(photo),
          ),
        ),
        title: const Text('Johann'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const HerMessageBubble()
                          : const MyMessageBubble();
                    })),
            const MessageFieldBox(),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
