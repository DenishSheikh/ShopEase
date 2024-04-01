import 'package:flutter/material.dart';
import 'package:shopease/pages/signin.dart';

class signup extends StatelessWidget {
  signup({super.key});

  GlobalKey<FormState> _formkey = GlobalKey();

  TextEditingController FNameController = TextEditingController();
  TextEditingController LNameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController DOBController = TextEditingController();
  TextEditingController ContactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo/logo.png",
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20),
            Text(
              "Create your Account",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Sign up now to get started with an account",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 20),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  // First & Last Name
                  Row(
                    children: [
                      // first name
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.teal)),
                            labelText: "First Name",
                            labelStyle: TextStyle(color: Colors.teal),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "First Name is required";
                            }
                          },
                          controller: FNameController,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //last name
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.teal)),
                            labelText: "Last Name",
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          ),
                          controller: LNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Last Name is required";
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  // Email
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: "Email",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                    controller: EmailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "First Name is Email";
                      } else if (!value.contains("@") ||
                          value.contains(".com")) {
                        return "Email is not valid";
                      }
                    },
                  ),
                  SizedBox(height: 25),

                  //Password
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: "Password",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                    controller: PasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "First Name is password";
                      } else if (value.length < 8) {
                        return "password should  be atleast 8 character long";
                      }
                    },
                  ),
                  SizedBox(height: 25),

                  //Contact No
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: "DOB",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                    controller: DOBController,
                  ),
                  SizedBox(height: 15),

                  //Region
                  TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
                        labelText: "Contact No",
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                      ),
                      controller: ContactController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Contact No is required";
                        }
                      }),

                  SizedBox(height: 15),

                  // signup button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            foregroundColor: Colors.white),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {}
                        },
                        child: Text("Sign up")),
                  ),

                  SizedBox(height: 15),

                  //text button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => signin()),
                            );
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
