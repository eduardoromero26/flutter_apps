import 'package:flutter/material.dart';
import 'package:commons/style/color_theme.dart';

class CustomChatBubble extends StatelessWidget {
  final String message;
  final String? time;
  final bool isSentByMe;

  CustomChatBubble(
      {required this.message, required this.isSentByMe, this.time});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width * 0.7;
    return Row(
      mainAxisAlignment:
          isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(4),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isSentByMe
                ? ColorsTheme.primaryCoast
                : ColorsTheme.accentForest,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: isSentByMe ? Radius.circular(12) : Radius.circular(0),
              bottomRight:
                  isSentByMe ? Radius.circular(0) : Radius.circular(12),
            ),
          ),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxWidth),
                child: Wrap(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: isSentByMe
                              ? EdgeInsets.only(left: 0)
                              : const EdgeInsets.only(right: 20),
                          child: Text(
                            message,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        if (time != null)
                          Container(
                            margin: EdgeInsets.only(
                              top: 4,
                            ),
                            child: Text(
                              time!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
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
        ),
      ],
    );
  }
}
