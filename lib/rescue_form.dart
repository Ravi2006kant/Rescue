// import 'package:flutter/material.dart';
// import 'rescueForm.dart'; // make sure this file exists

// class RescueFormScreen extends StatefulWidget {
//   const RescueFormScreen({super.key});

//   @override
//   State<RescueFormScreen> createState() => _RescueFormScreenState();
// }

// class _RescueFormScreenState extends State<RescueFormScreen> {

//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController problemController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Rescue Form"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [

//             TextField(
//               controller: nameController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Full Name",
//               ),
//             ),

//             const SizedBox(height: 20),

//             TextField(
//               controller: problemController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Problem",
//               ),
//             ),

//             const SizedBox(height: 30),

//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {

//                   if (nameController.text.isEmpty || problemController.text.isEmpty) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(content: Text("Please fill all fields")),
//                     );
//                     return;
//                   }

                  
//                 },
//                 child: const Text("Submit"),
//               ),
//             ),

//           ],
//         ),
//       ),
//     );
//   }
// }