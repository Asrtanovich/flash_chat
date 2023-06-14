// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class ChatView extends StatelessWidget {
//   ChatView({super.key});
//   UserModel userModel = UserModel(
//       sender: 'Manas',
//       sms: 'Salam EEEE KAndai',
//       dateTime: DateTime.now(),
//       isMe: false);
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final theme = Theme.of(context).colorScheme;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('ChatView'),
//         centerTitle: true,
//       ),
//       body: Column(children: [
//         UserWidget(
//           userModel: userModel,
//           width: width,
//           theme: theme,
//         ),
//         Container(
//           child: Row(
//             children: [Expanded(child: TextField())],
//           ),
//         )
//       ]),
//     );
//   }
// }
