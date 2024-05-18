import 'package:first_flutter_app/Screens/home_screen.dart'; 
import 
'package:first_flutter_app/Services/firebase_service.dart'; import 'package:flutter/material.dart'; 
void main() async { 
 WidgetsFlutterBinding.ensureInitialized(); 
 await FirebaseService.init(); 
 runApp(const MyApp()); 
} 
class MyApp extends StatelessWidget { 
 const MyApp({Key? key}) : super(key: key); 
 static const String _title = 'Crud Application'; 
 @override 
 Widget build(BuildContext context) { 
 return MaterialApp( 
 debugShowCheckedModeBanner: false, 
 title: _title, 
 home: HomeScreen(title: _title),
 ); 
 } 
} 
