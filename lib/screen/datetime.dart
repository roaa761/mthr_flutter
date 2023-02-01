 // ignore_for_file: prefer_const_constructors
//
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// class DateTime extends StatelessWidget {
//   DateTime dateTime = DateTime(2022, 02, 25, 12, 30);
//
//   DateTime(int i, int j, int k, int l, int m);
//
//   @override
//   Widget build(BuildContext context) {
//     var dateTime;
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               '${dateTime.day}/${dateTime.month}/${dateTime.year} - ${dateTime.hour}:${dateTime.minute}',
//               style: TextStyle(fontSize: 30),),
//             const SizedBox(height: 10,),
//
//             ElevatedButton(
//               child: Text('Selet data & time', style: TextStyle(fontSize: 20),),
//               onPressed: () async{
//
//                 late DateTime? newDate;
//                 showDatePicker(context: context,
//                   initialDate: DateTime(2000),
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2100),
//
//                 );
//
//                 if (newDate == null) return null;
//
//                 TimeOfDay? newTime = await showTimePicker(context: context,
//                   initialTime: TimeOfDay(
//                       hour: dateTime.hour,
//                       minute: dateTime.minute),
//                 );
//                 if (newTime == null) return null;
//
//                 final newDateTime = DateTime(
//                   newDate.year,
//                   newDate.month,
//                   newDate.day,
//                   newTime.hour,
//                   newTime.minute,
//                 );
//
//                 setState(() {
//                   dateTime =  newDateTime;
//                 });
//               },)
//           ],
//         ),
//       ),
//     );
//   }
//
//   void setState(Null Function() param0) {}
// }
