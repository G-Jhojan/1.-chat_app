import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/share/message_field_box.dart';

class ChatScreen extends StatelessWidget {


  final String photo =
      'https://scontent.fuio21-1.fna.fbcdn.net/v/t39.30808-6/224126309_1567560716785866_4268572171522370720_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_ohc=R2lwtW6efVEQ7kNvgELubpz&_nc_ht=scontent.fuio21-1.fna&oh=00_AfBoJD7G29mtfjA98ql9HgaFcf0rMAyzk98O6N9zhgFUiA&oe=66414AE6';
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

    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  controller: chatProvider.chatScrollController,
                    itemCount: chatProvider.messageList.length,
                    itemBuilder: (context, index) {

                      final message = chatProvider.messageList[index];
          
                      return (message.fromWho == FromWho.hers)
                          ?  HerMessageBubble(message: message,)
                          :  MyMessageBubble(message: message,);
                    })),
             MessageFieldBox(
              onValue:chatProvider.sendMessage
             ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
