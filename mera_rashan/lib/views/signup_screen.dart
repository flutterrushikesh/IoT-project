import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mera_rashan/views/signup_scaffold.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State createState() => _SignUpState();
}

class _SignUpState extends State {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController adharCardController = TextEditingController();
  TextEditingController rashanCardController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SignScaffold(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
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
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Text(
                        "Register here",
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
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Your name.",
                          prefixIcon: const Icon(Icons.person_2_outlined),
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
                            return 'Please enter your name';
                          }
                          // Validate name using a regular expression
                          final nameRegExp = RegExp(r'^[a-zA-Z ]+$');
                          if (!nameRegExp.hasMatch(value)) {
                            return 'Please enter a valid name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Phone number.",
                          prefixIcon: const Icon(Icons.phone),
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
                            return 'Please phone number';
                          } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                            return 'Please enter a valid 10 digit phone  number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Adhar card no.",
                          prefixIcon: const Icon(
                            Icons.credit_card_sharp,
                          ),
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
                      const SizedBox(height: 15),
                      TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.note),
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
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          bool validator = formKey.currentState!.validate();

                          if (validator) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Register successful"),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Enter valid details"),
                              ),
                            );
                          }
                          clearControllers();
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
                          "Register yours",
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
          ],
        ),
      ),
    );
  }

  void clearControllers() {
    nameController.clear();
    phoneNoController.clear();
    adharCardController.clear();
    rashanCardController.clear();
  }
}
