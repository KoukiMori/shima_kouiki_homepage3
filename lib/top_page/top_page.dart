import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shima_kouiki_homepage3/custom_colors.dart';
import 'package:shima_kouiki_homepage3/top_page/topic_frame.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> with SingleTickerProviderStateMixin {
  double _aria1Opacity = 0.0;
  Offset _aria2Offset = const Offset(0, -0.2); // Aria2: 上から下
  Offset _aria3Offset = const Offset(0, 0.2); // Aria3: 下から上
  Offset _aria4Offset = const Offset(0, -0.2); // Aria4: 上から下

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _aria1Opacity = 1.0;
        _aria2Offset = Offset.zero;
        _aria3Offset = Offset.zero;
        _aria4Offset = Offset.zero;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              width: size.width,

              child: LayoutBuilder(
                builder: (context, constraints) {
                  double containerWidth = constraints.maxWidth > 1200
                      ? 1200
                      : constraints.maxWidth;
                  return Center(
                    child: Container(
                      color: Colors.grey.shade100,
                      width: containerWidth,
                      child: Column(
                        spacing: 10,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: 40,
                                  left: size.width * .04,
                                ),

                                child: Text(
                                  textAlign: TextAlign.center,
                                  '志摩広域行政組合',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.textColor,
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
                                          color: CustomColors.textColor,
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
                                          color: CustomColors.textColor,
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
                                          color: CustomColors.textColor,
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
                                          color: CustomColors.textColor,
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
                                          color: CustomColors.textColor,
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
                                          color: CustomColors.textColor,
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
                                  // Aria1
                                  Expanded(
                                    flex: 2,
                                    child: AnimatedOpacity(
                                      opacity: _aria1Opacity,
                                      duration: const Duration(seconds: 2),
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
                                                                size.width *
                                                                .04,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: 'の',
                                                      style:
                                                          GoogleFonts.notoSerifJp(
                                                            fontSize:
                                                                size.width *
                                                                .02,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '介護',
                                                      style:
                                                          GoogleFonts.notoSerifJp(
                                                            fontSize:
                                                                size.width *
                                                                .04,
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
                                                spacing: 2,
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
                                                  color: CustomColors.textColor,
                                                ),
                                              ),
                                              Text(
                                                '電話 0599-43-2112-1',
                                                style: TextStyle(
                                                  fontSize: size.width * .01,
                                                  color: CustomColors.textColor,
                                                ),
                                              ),
                                              Text(
                                                'Fax 0599-43-7279-1',
                                                style: TextStyle(
                                                  fontSize: size.width * .01,
                                                  color: CustomColors.textColor,
                                                ),
                                              ),
                                              Text(
                                                'Email sikouiki@shima.mctv.ne.jpv-1',
                                                style: TextStyle(
                                                  fontSize: size.width * .01,
                                                  color: CustomColors.textColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Aria2
                                  Expanded(
                                    flex: 1,
                                    child: AnimatedSlide(
                                      offset: _aria2Offset,
                                      duration: const Duration(seconds: 2),
                                      curve: Curves.easeOut,
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
                                                  offset: Offset(2, 2),
                                                  blurRadius: 4.0,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Aria3
                                  Expanded(
                                    flex: 1,
                                    child: AnimatedSlide(
                                      offset: _aria3Offset,
                                      duration: const Duration(seconds: 2),
                                      curve: Curves.easeOut,
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
                                                  offset: Offset(2, 2),
                                                  blurRadius: 4.0,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Aria4
                                  Expanded(
                                    flex: 1,
                                    child: AnimatedSlide(
                                      offset: _aria4Offset,
                                      duration: const Duration(seconds: 2),
                                      curve: Curves.easeOut,
                                      child: Stack(
                                        alignment: AlignmentGeometry.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/hanazonoBG.png',
                                          ),
                                          Text(
                                            '花\n園\n寮e',
                                            style: GoogleFonts.notoSerifJp(
                                              fontSize: size.width * .04,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              shadows: [
                                                Shadow(
                                                  offset: Offset(2, 2),
                                                  blurRadius: 4.0,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: size.width * .04),
                                ],
                              ),
                            ],
                          ),
                          TopicFrame(),
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
                color: CustomColors.primaryColor,
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
