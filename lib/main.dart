import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_profile/constants/context_extension.dart';
import 'package:my_profile/constants/format_util.dart';
import 'package:my_profile/constants/page_assets.dart';
import 'package:my_profile/constants/page_colors.dart';
import 'package:my_profile/constants/page_theme.dart';
import 'package:my_profile/widgets/icon_widget.dart';
import 'package:my_profile/widgets/social_network_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      debugShowCheckedModeBanner: false,
      theme: PageTheme.themeData,
      home: const MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  AnimatedTextController? animatedTextController;

  final List<String> languages = [
    PageAssets.icFlutter,
    PageAssets.icKotlin,
    PageAssets.icAndroid,
    PageAssets.icApple,
  ];

  @override
  void initState() {
    animatedTextController = AnimatedTextController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 60,
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: "👋 Hi, I'm ", style: context.textTheme.headlineLarge),
                              TextSpan(
                                text: "DrawTok",
                                style: context.textTheme.displaySmall?.copyWith(
                                  color: PageColors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("Mobile Developer", style: context.textTheme.displayLarge),
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              "I’m Le Thanh Hoa, also known as DrawTok. "
                              "I’m a Mobile Developer with expertise in Flutter and Java/Kotlin."
                              " Born in 2003, I have a strong passion for coding and"
                              " a deep enthusiasm for building innovative and efficient mobile applications."
                              " I enjoy tackling challenges and constantly learning to improve my skills.",
                              textStyle: context.textTheme.titleLarge,
                              speed: const Duration(milliseconds: 50),
                            ),
                          ],

                          totalRepeatCount: 1,
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                          controller: animatedTextController,
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Follow Me", style: context.textTheme.titleLarge),
                            const SizedBox(width: 10),
                            const SocialNetworkButton(
                              assetName: PageAssets.icFacebook,
                              link: PageAssets.urlFacebook,
                            ),
                            const SizedBox(width: 20),
                            const SocialNetworkButton(
                              assetName: PageAssets.icLinkedIn,
                              link: PageAssets.urlLinkedIn,
                            ),
                            const SizedBox(width: 20),
                            const SocialNetworkButton(
                              assetName: PageAssets.icGmail,
                              link: PageAssets.urlGmail,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: PageColors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  bool isMobile = constraints.maxWidth < 600;

                  return Flex(
                    direction: isMobile ? Axis.vertical : Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildExperienceText(context, isMobile ? 57 * 0.6 : 57),
                      const SizedBox(width: 20, height: 20),
                      _buildIcons(),
                    ],
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "© Copyright 2025 - DrawTok",
                style: context.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceText(BuildContext context, double fontSize) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: [
          TextSpan(text: FormatUtil.calculateYearDifference()),
          const TextSpan(text: "\n\nYears"),
          const TextSpan(text: "\nWorking"),
          const TextSpan(text: "\nExperience"),
        ],
        style: context.textTheme.displayLarge?.copyWith(
          color: PageColors.white,
          fontSize: fontSize,
        ),
      ),
    );
  }

  Widget _buildIcons() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(languages.length, (index) => IconWidget(assetName: languages[index])),
    );
  }
}
