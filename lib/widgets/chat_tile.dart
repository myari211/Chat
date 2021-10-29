import "package:flutter/material.dart";
import "package:chatty/theme.dart";

class ChatTile extends StatelessWidget {
  final imageUrl;
  final name;
  final text;
  final time;
  final unread;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              imageUrl,
              width: 55,
              height: 55,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: titleText),
              if (unread == true)
                Text(
                  text,
                  style: subtitleText.copyWith(
                    color: blackColor,
                  ),
                ),
              if (unread == false)
                Text(
                  text,
                  style: subtitleText,
                ),
            ],
          ),
          Spacer(),
          Text(
            time,
          )
        ],
      ),
    );
  }
}
