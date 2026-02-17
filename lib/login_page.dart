import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              /// 🌿 TOP SECTION
              Container(
                height: 500,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 0, bottom: 30),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFE6F0C5), Color(0xFFF6F7E6)],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        // width: MediaQuery.of(context).size.width * 0.9,
                        child: Image.asset(
                          "assets/vegetables.png",
                          height: 300,
                          width: 600,
                        ),
                      ),
                    ),
                    Container(
                      width: 145,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF00B761),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/logo_peedika.png',
                          width: 116,
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),
                    const Text(
                      "Delivering Freshness\nto Your Doorstep!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              /// 🤍 BOTTOM SECTION
              Expanded(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(229, 249, 247, 247),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    border: Border.all(color: Colors.yellow),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Get started with Native Peedika",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 25),
                        Text(
                          'Enter your mobile number',
                          style: TextStyle(
                            color: const Color(0xFF6D6B6B),
                            fontSize: 13.36,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        const SizedBox(height: 10),

                        /// 📞 Phone Field
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.phone),
                              prefixText: "+91 ",
                              hintText: "Enter your mobile number",
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,

            child: Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          activeColor: Colors.green,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),

                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black, // default color
                              ),
                              children: [
                                TextSpan(text: "I accept the "),
                                TextSpan(
                                  text: "Terms of Use & Privacy Policy",
                                  style: TextStyle(
                                    color: Colors.red, // 👈 only this part red
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Continue",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 10),
                    const Text(
                      "Grocery Delivery at Your Fingertips!",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 15, 14, 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
