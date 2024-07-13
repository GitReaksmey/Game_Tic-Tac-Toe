import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/game_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController player1Controller = TextEditingController();
  final TextEditingController player2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(186, 23, 173, 199),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.network("https://s3-alpha.figma.com/hub/file/479379372/7e6df39f-585d-4a9e-9bf3-4ef4c00f816b-cover.png"),
            SizedBox(height: 20,),
            Text(
              "Enter Players Name",
              style: TextStyle(
                fontFamily: "GaMaamli",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 15, 17, 173),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                    controller: player1Controller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 252, 46, 46)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 243, 243, 243)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 252, 46, 46)),
                      ),
                      hintText: "Player 1 Name",
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter player 1 name ";
                      }
                      return null;
                    })),
            Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                    controller: player2Controller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 252, 46, 46)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 243, 243, 243)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 252, 46, 46)),
                      ),
                      hintText: "Player 2 Name",
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter player 2 name ";
                      }
                      return null;
                    })),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GameScreen(
                              player1: player1Controller.text,
                              player2: player2Controller.text)));
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 90, 51, 228),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                child: Text(
                  "Start Game",
                  style: TextStyle(
                    fontFamily: "GaMaamli",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 252, 252, 252)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
