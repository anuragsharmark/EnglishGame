import 'package:flutter/material.dart';
import 'dart:math';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int DiceOne = 0;
  int DiceTwo = 0;
  int SumOfDice = 0;
  bool IsPresent = false;
  bool IsPast = false;
  bool Isfuture = false;
  List<String> images = [
    'assets/images/zero.jpeg',
    'assets/images/one.jpeg',
    'assets/images/Two.jpeg',
    'assets/images/Three.jpeg',
    'assets/images/four.jpeg',
    'assets/images/five.jpeg',
    'assets/images/six.jpeg',
  ];
  List<String> Tense = [
    '',
    'IInd form',
    'Ist form + s/es',
    'will/shall + Ist form',
    'was/were + Ist form + ing',
    'am/is/are + Ist form + ing',
    'will be + Ist form + ing',
    'had + IIIrd form',
    'have/has + IIIrd form',
    'will have + IIIrd form',
    'had been + Ist form + ing',
    'have/has been + Ist form + ing',
    'will have been + Ist form + ing',
  ];

  @override
  Widget build(BuildContext context) {
    SumOfDice = DiceOne + DiceTwo;
    if (SumOfDice == 2 || SumOfDice == 5 || SumOfDice == 8 || SumOfDice == 11) {
      IsPresent = true;
    } else if (SumOfDice == 1 ||
        SumOfDice == 4 ||
        SumOfDice == 7 ||
        SumOfDice == 10) {
      IsPast = true;
    } else if (SumOfDice == 3 ||
        SumOfDice == 6 ||
        SumOfDice == 9 ||
        SumOfDice == 12) {
      Isfuture = true;
    }
    return Scaffold(
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.black,
        title: Text(
          'English Game',
          style: TextStyle(
              fontFamily: 'Myfont', fontSize: 24, color: Colors.black),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.brown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                DrawerHeader(
                    child: Image.asset(
                  'assets/images/DiceLogo.png',
                )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'A B O U T  G A M E',
                  style: TextStyle(fontSize: 20, fontFamily: 'Myfont'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Through this game, you can improve your spoken and written English skills by correcting your tenses errors. Make at least one sentence according to the screen rules. It will help you to learn tenses and enhance your overall English knowledge.',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, fontFamily: 'Myfont'),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'D E V E L O P E D  B Y',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Myfont',
                    color: Colors.brown[200],
                  ),
                ),
                Text(
                  'A N U R A G  S H A R M A',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Myfont',
                      color: Colors.brown[200]),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Past',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Myfont',
                    color: IsPast ? Colors.yellow : Colors.brown[200]),
              ),
              Text(
                '  Present',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Myfont',
                    color: IsPresent ? Colors.yellow : Colors.brown[200]),
              ),
              Text(
                'Future',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Myfont',
                    color: Isfuture ? Colors.yellow : Colors.brown[200]),
              )
            ],
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 524,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  children: [
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[1],
                        color: SumOfDice == 1 ? Colors.yellow : Colors.brown),
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[2],
                        color: SumOfDice == 2 ? Colors.yellow : Colors.brown),
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[3],
                        color: SumOfDice == 3 ? Colors.yellow : Colors.brown), 
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[4],
                        color: SumOfDice == 4 ? Colors.yellow : Colors.brown),
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[5],
                        color: SumOfDice == 5 ? Colors.yellow : Colors.brown),
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[6],
                        color: SumOfDice == 6 ? Colors.yellow : Colors.brown),
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[7],
                        color: SumOfDice == 7 ? Colors.yellow : Colors.brown),
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[8],
                        color: SumOfDice == 8 ? Colors.yellow : Colors.brown),
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[9],
                        color: SumOfDice == 9 ? Colors.yellow : Colors.brown),
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[10],
                        color: SumOfDice == 10 ? Colors.yellow : Colors.brown),
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[11],
                        color: SumOfDice == 11 ? Colors.yellow : Colors.brown),
                    TenseBlock(
                        text: SumOfDice == 0 ? '' : Tense[12],
                        color: SumOfDice == 12 ? Colors.yellow : Colors.brown),
                  ],
                ),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(bottom: 14, right: 14, left: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: Offset(12, 10),
                        color: Colors.brown,
                        blurRadius: 20,
                        spreadRadius: 4)
                  ]),
                  child: Image.asset(images[DiceOne]),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: Offset(12, 10),
                        color: Colors.brown,
                        blurRadius: 20,
                        spreadRadius: 4)
                  ]),
                  child: Image.asset(images[DiceTwo]),
                ),
                const SizedBox(
                  width: 2,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(116, 67, 27, 1)),
                    onPressed: () {
                      setState(() {
                        DiceOne = Random().nextInt(7);
                        DiceTwo = Random().nextInt(7);
                        IsPresent = false;
                        IsPast = false;
                        Isfuture = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 44, horizontal: 4),
                      child: Icon(
                        Icons.ads_click,
                        size: 32,
                        color: Colors.black,
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class TenseBlock extends StatelessWidget {
  const TenseBlock({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Myfont',
            ),
          ),
        ),
      ),
    );
  }
}
