import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              width: size.width,
              color: Colors.white,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double containerWidth = constraints.maxWidth > 1200
                      ? 1200
                      : constraints.maxWidth;
                  return Center(
                    child: SizedBox(
                      width: containerWidth,
                      child: Column(
                        spacing: 10,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 40, left: 40),

                                child: Text(
                                  textAlign: TextAlign.center,
                                  '志摩広域行政組合',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 46),
                                child: Row(
                                  children: [
                                    SizedBox(width: 40),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        '施設紹介',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        '入所の流れ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        '組合概要',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        '例規集',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        '入札情報',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'その他',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '1977',
                                                    style: TextStyle(
                                                      fontSize:
                                                          size.width *
                                                          .07, // 大きいサイズ
                                                      fontFamily:
                                                          GoogleFonts.notoSerifJp()
                                                              .fontFamily, // 必要ならフォントも指定
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '年',
                                                    style: TextStyle(
                                                      fontSize:
                                                          size.width *
                                                          .03, // 小さいサイズ
                                                      fontFamily:
                                                          GoogleFonts.notoSerifJp()
                                                              .fontFamily, // 必要ならフォントも指定
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '志摩',
                                                    style:
                                                        GoogleFonts.notoSerifJp(
                                                          fontSize:
                                                              size.width * .04,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: 'の',
                                                    style:
                                                        GoogleFonts.notoSerifJp(
                                                          fontSize:
                                                              size.width * .02,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: '介護',
                                                    style:
                                                        GoogleFonts.notoSerifJp(
                                                          fontSize:
                                                              size.width * .04,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Text(
                                              'ここから',
                                              style: GoogleFonts.notoSerifJp(
                                                fontSize: size.width * .02,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              '始まりました',
                                              style: GoogleFonts.notoSerifJp(
                                                fontSize: size.width * .02,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Column(
                                              children: [
                                                Text(
                                                  '私たちは、',
                                                  style:
                                                      GoogleFonts.notoSerifJp(
                                                        fontSize:
                                                            size.width * .01,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  '志摩市で最初に設立された',
                                                  style:
                                                      GoogleFonts.notoSerifJp(
                                                        fontSize:
                                                            size.width * .01,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  '介護施設として、',
                                                  style:
                                                      GoogleFonts.notoSerifJp(
                                                        fontSize:
                                                            size.width * .01,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  '地域の皆さまと歩んできました。',
                                                  style:
                                                      GoogleFonts.notoSerifJp(
                                                        fontSize:
                                                            size.width * .01,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  '長年の経験と実績をもとに、',
                                                  style:
                                                      GoogleFonts.notoSerifJp(
                                                        fontSize:
                                                            size.width * .01,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  'これからも安心とぬくもりの',
                                                  style:
                                                      GoogleFonts.notoSerifJp(
                                                        fontSize:
                                                            size.width * .01,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  '介護を提供してまいります。',
                                                  style:
                                                      GoogleFonts.notoSerifJp(
                                                        fontSize:
                                                            size.width * .01,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: size.height * .06),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '三重県志摩市阿児町神明1537-1',
                                              style: TextStyle(
                                                fontSize: size.width * .01,
                                              ),
                                            ),
                                            Text(
                                              '電話 0599-43-2112-1',
                                              style: TextStyle(
                                                fontSize: size.width * .01,
                                              ),
                                            ),
                                            Text(
                                              'Fax 0599-43-7279-1',
                                              style: TextStyle(
                                                fontSize: size.width * .01,
                                              ),
                                            ),
                                            Text(
                                              'Email sikouiki@shima.mctv.ne.jpv-1',
                                              style: TextStyle(
                                                fontSize: size.width * .01,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/tomoyamaBG.png',
                                        ),
                                        Text(
                                          'と\nも\nや\nま\n苑',
                                          style: GoogleFonts.notoSerifJp(
                                            fontSize: size.width * .04,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            shadows: [
                                              Shadow(
                                                offset: Offset(
                                                  2,
                                                  2,
                                                ), // 影の位置（x, y）
                                                blurRadius: 4.0, // ぼかし具合
                                                color: Colors.black, // 影の色
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/sainiwaBG.png',
                                        ),
                                        Text(
                                          '才\n庭\n寮',
                                          style: GoogleFonts.notoSerifJp(
                                            fontSize: size.width * .04,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            shadows: [
                                              Shadow(
                                                offset: Offset(
                                                  2,
                                                  2,
                                                ), // 影の位置（x, y）
                                                blurRadius: 4.0, // ぼかし具合
                                                color: Colors.black, // 影の色
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Stack(
                                      alignment: AlignmentGeometry.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/hanazonoBG.png',
                                        ),
                                        Text(
                                          '花\n園\n寮',
                                          style: GoogleFonts.notoSerifJp(
                                            fontSize: size.width * .04,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            shadows: [
                                              Shadow(
                                                offset: Offset(
                                                  2,
                                                  2,
                                                ), // 影の位置（x, y）
                                                blurRadius: 4.0, // ぼかし具合
                                                color: Colors.black, // 影の色
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 180,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                ),
              ),
              child: Center(
                child: Text(
                  '求職者の方はこちら',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
