import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mera_rashan/views/home_screen.dart';
import 'package:mera_rashan/views/logincutom_scaffold.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State createState() => _SignInState();
}

class _SignInState extends State {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController adharCardController = TextEditingController();
  TextEditingController rashanCardController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return LoginScaffold(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(
                10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Text(
                        "Login here",
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: nameController,
                        autofocus: false,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: "Your name.",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 1.2,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 5, 19, 150),
                              width: 1.2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 5, 19, 150),
                              width: 1.2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 1.2,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter name";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Rashan card no.",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 1.2,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 5, 19, 150),
                              width: 1.2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 5, 19, 150),
                              width: 1.2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 1.2,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter rashan card number';
                          } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                            return 'Please enter a valid 10 digit rashan card  number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Adhar card no.",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 1.2,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 5, 19, 150),
                              width: 1.2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 5, 19, 150),
                              width: 1.2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 1.2,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter adhar card number';
                          } else if (!RegExp(r'^[0-9]{12}$').hasMatch(value)) {
                            return 'Please enter a valid 12 digit adhar card  number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 25),
                      ElevatedButton(
                        onPressed: () {
                          bool validator = formKey.currentState!.validate();

                          if (validator) {}
                          clearControllers();
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (_) => const HomeScreen(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.blue.shade200,
                          ),
                          minimumSize: const MaterialStatePropertyAll(
                            Size(
                              320,
                              50,
                            ),
                          ),
                        ),
                        child: Text(
                          "Login...",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // ),
          ],
        ),
      ),
    );
  }

  void clearControllers() {
    adharCardController.clear();
    rashanCardController.clear();
    nameController.clear();
  }
}
