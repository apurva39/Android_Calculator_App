// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CalculatorButton extends StatelessWidget {
//   const CalculatorButton({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 5),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: <Widget>[
//             // Calculator display
//             SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Text('$text',
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 100,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 calcbutton('AC',Colors.grey,Colors.black),
//                 calcbutton('+/-',Colors.grey,Colors.black),
//                 calcbutton('%',Colors.grey,Colors.black),
//                 calcbutton('/',Colors.amber,Colors.white),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 calcbutton('7',Colors.grey,Colors.white),
//                 calcbutton('8',Colors.grey,Colors.white),
//                 calcbutton('9',Colors.grey,Colors.white),
//                 calcbutton('x',Colors.amber,Colors.white),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 calcbutton('4',Colors.grey,Colors.white),
//                 calcbutton('5',Colors.grey,Colors.white),
//                 calcbutton('6',Colors.grey,Colors.white),
//                 calcbutton('-',Colors.amber,Colors.white),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 calcbutton('1',Colors.grey,Colors.white),
//                 calcbutton('2',Colors.grey,Colors.white),
//                 calcbutton('3',Colors.grey,Colors.white),
//                 calcbutton('+',Colors.amber,Colors.white),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 //this is button Zero
//                 RaisedButton(
//                   padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
//                   onPressed: (){
//                     calculation('0');
//                   },
//                   shape: StadiumBorder(),
//                   child: Text('0',
//                     style: TextStyle(
//                         fontSize: 35,
//                         color: Colors.white),
//                   ),
//                   color: Colors.grey[850],
//                 ),
//                 calcbutton('.',Colors.grey,Colors.white),
//                 calcbutton('=',Colors.amber,Colors.white),
//               ],
//             ),
//             SizedBox(height: 10,),
//           ],
//         ),
//       ),
//     );
//   }
//
//   calcbutton(String s, MaterialColor grey, Color white) {}
// }
//
// //Calculator logic
// dynamic text ='0';
// double numOne = 0;
// double numTwo = 0;
//
// dynamic result = '';
// dynamic finalResult = '';
// dynamic opr = '';
// dynamic preOpr = '';
// void calculation(btnText) {
//
//
//   if(btnText  == 'AC') {
//     text ='0';
//     numOne = 0;
//     numTwo = 0;
//     result = '';
//     finalResult = '0';
//     opr = '';
//     preOpr = '';
//
//   } else if( opr == '=' && btnText == '=') {
//
//     if(preOpr == '+') {
//       finalResult = add();
//     } else if( preOpr == '-') {
//       finalResult = sub();
//     } else if( preOpr == 'x') {
//       finalResult = mul();
//     } else if( preOpr == '/') {
//       finalResult = div();
//     }
//
//   } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {
//
//     if(numOne == 0) {
//       numOne = double.parse(result);
//     } else {
//       numTwo = double.parse(result);
//     }
//
//     if(opr == '+') {
//       finalResult = add();
//     } else if( opr == '-') {
//       finalResult = sub();
//     } else if( opr == 'x') {
//       finalResult = mul();
//     } else if( opr == '/') {
//       finalResult = div();
//     }
//     preOpr = opr;
//     opr = btnText;
//     result = '';
//   }
//   else if(btnText == '%') {
//     result = numOne / 100;
//     finalResult = doesContainDecimal(result);
//   } else if(btnText == '.') {
//     if(!result.toString().contains('.')) {
//       result = result.toString()+'.';
//     }
//     finalResult = result;
//   }
//
//   else if(btnText == '+/-') {
//     result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();
//     finalResult = result;
//
//   }
//
//   else {
//     result = result + btnText;
//     finalResult = result;
//   }
//
//
//   setState(() {
//     text = finalResult;
//   });
//
// }
//
// void setState(Null Function() param0) {
// }
//
//
// String add() {
//   result = (numOne + numTwo).toString();
//   numOne = double.parse(result);
//   return doesContainDecimal(result);
// }
//
// String sub() {
//   result = (numOne - numTwo).toString();
//   numOne = double.parse(result);
//   return doesContainDecimal(result);
// }
// String mul() {
//   result = (numOne * numTwo).toString();
//   numOne = double.parse(result);
//   return doesContainDecimal(result);
// }
// String div() {
//   result = (numOne / numTwo).toString();
//   numOne = double.parse(result);
//   return doesContainDecimal(result);
// }
//
//
// String doesContainDecimal(dynamic result) {
//
//   if(result.toString().contains('.')) {
//     List<String> splitDecimal = result.toString().split('.');
//     if(!(int.parse(splitDecimal[1]) > 0))
//       return result = splitDecimal[0].toString();
//   }
//   return result;
// }
//
// }
