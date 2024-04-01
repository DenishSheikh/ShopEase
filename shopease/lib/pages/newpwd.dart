import 'package:flutter/material.dart';
import 'package:shopease/pages/signin.dart';

class newpassword extends StatelessWidget {
  const newpassword({super.key});

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
            SizedBox(height: 25),
            Text(
              "Set New Password",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Text(
              "Enter your 8 digit alphanumeric password",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Form(
              child: Column(
                children: [
                  SizedBox(height: 25),

                  // Email
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "New Password",
                      suffix: Icon(Icons.visibility),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),

                  //Password
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Confirm your Password",
                      suffix: Icon(Icons.visibility),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 35),

                  // button

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            foregroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signin()),
                          );
                        },
                        child: Text("Save Changes")),
                  ),

                  SizedBox(height: 25),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
