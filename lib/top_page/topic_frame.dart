import 'package:flutter/material.dart';
import 'package:shima_kouiki_homepage3/custom_colors.dart';
import 'package:shima_kouiki_homepage3/top_page/topic.dart';

class TopicFrame extends StatelessWidget {
  const TopicFrame({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return // 3. お知らせリスト部分
    Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 50, right: 50),
      child: Stack(
        children: [
          Container(
            width: size.width * 0.8, // 幅を画面幅の80%に設定
            height: 500,
            padding: const EdgeInsets.only(
              top: 50,
              left: 40,
              right: 20,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: CustomColors.primaryColor, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: topics.map((topic) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${topic.date}　',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            color: CustomColors.textColor,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            topic.content,
                            style: TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              color: CustomColors.textColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: CustomColors.primaryColor,
              ),
              padding: const EdgeInsets.only(left: 20, top: 4),
              child: const Text(
                'お知らせ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
