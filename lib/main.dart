import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimationExample(),
    );
  }
}

class AnimationExample extends StatefulWidget {
  @override
  _AnimationExampleState createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.black,
      Colors.blue,
      Colors.orange,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 90,
                  child: TextLiquidFill(
                    boxHeight: 90.0,
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                    boxBackgroundColor: Colors.black,
                    text: 'Flutter',
                    waveColor: Colors.blueAccent,
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 40,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        WavyAnimatedText('Hello World!'),
                        WavyAnimatedText('Flutter has grown!'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontSize: 40,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        FadeAnimatedText(
                          'Flutter is cool!',
                        ),
                        FadeAnimatedText(
                          'Flutter is amazing!',
                        ),
                        FadeAnimatedText(
                          'Flutter is spectacular!',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: AnimatedTextKit(
                    repeatForever: true,
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Alibaba',
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                      ColorizeAnimatedText(
                        'BMW',
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                      ColorizeAnimatedText(
                        'Google Ads',
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w200,
                      fontSize: 50,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        ScaleAnimatedText('Build apps'),
                        ScaleAnimatedText('Android'),
                        ScaleAnimatedText('IOS'),
                        ScaleAnimatedText('Web'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 65,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 45,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        TyperAnimatedText('Learn from docs,'),
                        TyperAnimatedText('courses, youtube'),
                        TyperAnimatedText('and many more.'),
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Flutter apps are ',
                      style: TextStyle(color: Colors.green, fontSize: 30),
                    ),
                    SizedBox(
                      height: 70,
                      child: DefaultTextStyle(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 35,
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          isRepeatingAnimation: true,
                          animatedTexts: [
                            RotateAnimatedText('fast'),
                            RotateAnimatedText('smooth'),
                            RotateAnimatedText('beautiful'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 50,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        FlickerAnimatedText('Android Studio'),
                        FlickerAnimatedText('VS Code'),
                        FlickerAnimatedText('IntelliJ IDEA'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: DefaultTextStyle(
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 50,
                        fontWeight: FontWeight.w900),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        TypewriterAnimatedText('Keep learning!'),
                        TypewriterAnimatedText('Keep building!'),
                        TypewriterAnimatedText('Keep fluttering!'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
