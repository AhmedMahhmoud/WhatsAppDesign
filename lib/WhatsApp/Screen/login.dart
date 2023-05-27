// import 'package:flutter/material.dart';

// import '../Widgets/button_card.dart';
// import '../models/chat_model.dart';
// import 'home.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//           itemCount: chatmodels.length,
//           itemBuilder: (contex, index) => InkWell(
//                 onTap: () {
               
//                   Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                           builder: (builder) => Homescreen(
//                                 chatmodels: chatmodels,
//                                 sourchat: sourceChat,
//                               )));
//                 },
//                 child: ButtonCard(
//                   name: chatmodels[index].name,
//                   icon: Icons.person,
//                 ),
//               )),
//     );
//   }
// }
