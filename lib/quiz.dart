import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'answer.dart';
import 'inter.dart';
import 'package:string_validator/string_validator.dart';

class Quiz extends StatefulWidget {
  final String data;
  Quiz({required this.data});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  List<Icon> _scoreTracker = [];
  int _questionIndex = 0;
  int _totalScore = 0;
  bool answerWasSelected = false;
  bool endOfQuiz = false;
  bool correctAnswerSelected = false;

  void _questionAnswered(bool answerScore) {
    setState(() {
      // answer was selected
      answerWasSelected = true;
      // check if answer was correct
      if (answerScore) {
        _totalScore++;
        correctAnswerSelected = true;
      }
      // adding to the score tracker on top
      _scoreTracker.add(
        answerScore
            ? Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : Icon(
                Icons.clear,
                color: Colors.red,
              ),
      );
      //when the quiz ends
      if (_questionIndex + 1 == verified.length) {
        endOfQuiz = true;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
      answerWasSelected = false;
      correctAnswerSelected = false;
    });
    // what happens at the end of the quiz
    if (_questionIndex >= verified.length) {
      _resetQuiz();
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _scoreTracker = [];
      endOfQuiz = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                if (_scoreTracker.length == 0)
                  SizedBox(
                    height: 25.0,
                  ),
                if (_scoreTracker.length > 0) ..._scoreTracker
              ],
            ),
            Container(
              width: double.infinity,
              height: 170.0,
              margin: EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
              padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Column(
                  children: [
                    isURL(verified[_questionIndex]['question'])
                        ? Image.network(
                            verified[_questionIndex]['question'],
                            fit: BoxFit.cover,
                          )
                        : Text(
                            verified[_questionIndex]['question'],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                    // ?verified[_questionIndex]['question']  Text(verified[_questionIndex]['question'])
                    // Image(
                    //     image:
                    //         AssetImage(verified[_questionIndex]['question'])),
                    // Image.asset('assets/images/interdit.png'),
                  ],
                ),
              ),
            ),
            ...(verified[_questionIndex]['answers']
                    as List<Map<String, dynamic>>)
                .map(
              (answer) => Answer(
                answerText: answer['answerText'] as String,
                answerColor: Colors.white,
                //answerWasSelected
                //     ? answer['score']
                //         ? Colors.green
                //         : Colors.red
                //     : null,
                answerTap: () {
                  // if answer was already selected then nothing happens onTap
                  if (answerWasSelected) {
                    return;
                  }
                  //answer is being selected
                  _questionAnswered(answer['score'] as bool);
                },
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0),
              ),
              onPressed: () {
                if (!answerWasSelected) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        'Vous devez choisir une réponse avant d\'allez a la prochaine question'),
                  ));
                  return;
                }
                _nextQuestion();
              },
              child:
                  Text(endOfQuiz ? 'Redemarez Le Quiz' : 'Prochaine Question'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '${_totalScore.toString()}/${verified.length}',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
            if (answerWasSelected && !endOfQuiz)
              Container(
                height: 100,
                width: double.infinity,
                color: correctAnswerSelected ? Colors.green : Colors.red,
                child: Center(
                  child: Text(
                    correctAnswerSelected
                        ? 'Bonne réponse'
                        : 'Mauvaise réponse :/',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            if (endOfQuiz)
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.black,
                child: Center(
                  child: Text(
                    _totalScore > 4
                        ? 'Bravo votre score final est : $_totalScore'
                        : 'Votre score final est : $_totalScore. vous ferait mieux la prochaine fois !',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: _totalScore > 4 ? Colors.green : Colors.red,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// List _quiz1 = const [
//   {
//     'question': 'assets/images/interdit.png',
//     'answers': [
//       {'answerText': 'number1', 'score': true},
//       {'answerText': '55km, so 34 miles long.', 'score': false},
//       {'answerText': '90km, so 56 miles long.', 'score': false},
//     ],
//   },
//   {
//     'question': 'assets/images/interdit.png',
//     'answers': [
//       {'answerText': 'January', 'score': false},
//       {'answerText': 'October', 'score': false},
//       {'answerText': 'September', 'score': true},
//     ],
//   },
//   {
//     'question': 'assets/images/interdit.png',
//     'answers': [
//       {'answerText': 'Britney Spears', 'score': false},
//       {'answerText': 'Timbaland', 'score': false},
//       {'answerText': 'Michael Jackson', 'score': true},
//     ],
//   },
//   {
//     'question': 'assets/images/interdit.png',
//     'answers': [
//       {'answerText': 'Hamburgers', 'score': false},
//       {'answerText': 'Fried chicken', 'score': true},
//       {'answerText': 'Pizza', 'score': false},
//     ],
//   },
//   {
//     'question': 'assets/images/interdit.png',
//     'answers': [
//       {'answerText': 'His tongue', 'score': true},
//       {'answerText': 'His leg', 'score': false},
//       {'answerText': 'His butt', 'score': false},
//     ],
//   },
//   {
//     'question': 'assets/images/interdit.png',
//     'answers': [
//       {'answerText': 'Ecuador', 'score': true},
//       {'answerText': 'Panama (duh)', 'score': false},
//       {'answerText': 'Portugal', 'score': false},
//     ],
//   },
//   {
//     'question': 'assets/images/interdit.png',
//     'answers': [
//       {'answerText': 'Belgium', 'score': true},
//       {'answerText': 'France (duh)', 'score': false},
//       {'answerText': 'Switzerland', 'score': false},
//     ],
//   },
//   {
//     'question': 'assets/images/interdit.png',
//     'answers': [
//       {'answerText': 'Great White Sharks', 'score': false},
//       {'answerText': 'Killer Whales', 'score': false},
//       {'answerText': 'The Octopus', 'score': true},
//     ],
//   },
//   {
//     'question': 'assets/images/interdit.png',
//     'answers': [
//       {'answerText': 'Belgium', 'score': false},
//       {'answerText': 'The Netherlands', 'score': false},
//       {'answerText': 'Switzerland', 'score': true},
//     ],
//   },
// ];
// List _questions = const [
//   {
//     'question': 'assets/images/interdit.png',
//     'answers': [
//       {'answerText': 'number1', 'score': true},
//       {'answerText': '55km, so 34 miles long.', 'score': false},
//       {'answerText': '90km, so 56 miles long.', 'score': false},
//     ],
//   },
//   {
//     'question': 'assets/images/interdit.png',
//     'answers': [
//       {'answerText': 'January', 'score': false},
//       {'answerText': 'October', 'score': false},
//       {'answerText': 'September', 'score': true},
//     ],
//   },
// ];
// List _quiz2 = const [
//   {
//     'question': 'quiz 2',
//     'answers': [
//       {'answerText': 'number1', 'score': true},
//       {'answerText': '55km, so 34 miles long.', 'score': false},
//       {'answerText': '90km, so 56 miles long.', 'score': false},
//     ],
//   },
//   {
//     'question': 'quiz 2',
//     'answers': [
//       {'answerText': 'January', 'score': false},
//       {'answerText': 'October', 'score': false},
//       {'answerText': 'September', 'score': true},
//     ],
//   },
// ];
// List _quiz3 = const [
//   {
//     'question': 'quiz 3',
//     'answers': [
//       {'answerText': 'number1', 'score': true},
//       {'answerText': '55km, so 34 miles long.', 'score': false},
//       {'answerText': '90km, so 56 miles long.', 'score': false},
//     ],
//   },
//   {
//     'question': 'quiz 3',
//     'answers': [
//       {'answerText': 'January', 'score': false},
//       {'answerText': 'October', 'score': false},
//       {'answerText': 'September', 'score': true},
//     ],
//   },
// ];
