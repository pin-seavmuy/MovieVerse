import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Focus nodes for managing focus state
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  // Color variables to manage text and border colors
  Color _emailTextColor = Colors.black;
  Color _emailBorderColor = Colors.black;
  Color _passwordTextColor = Colors.black;
  Color _passwordBorderColor = Colors.black;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/bg.jpg', // Replace with your background image path
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 221, 216, 216).withOpacity(0.5), // Semi-transparent color
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            focusNode: _emailFocusNode,
                            controller: _emailController,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: _emailTextColor),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: _emailBorderColor,
                                  width: 1.0,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Adjusted padding for height
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: _emailBorderColor,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Colors.pink,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            style: TextStyle(color: _emailTextColor),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                // Change text and border color to pink when typing
                                _emailTextColor = Colors.pink;
                                _emailBorderColor = Colors.pink;
                              });
                            },
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            focusNode: _passwordFocusNode,
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: _passwordTextColor),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: _passwordBorderColor,
                                  width: 2.0,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Adjusted padding for height
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: _passwordBorderColor,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Colors.pink,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            style: TextStyle(color: _passwordTextColor),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                // Change text and border color to pink when typing
                                _passwordTextColor = Colors.pink;
                                _passwordBorderColor = Colors.pink;
                              });
                            },
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // Validate form on button press
                                if (_formKey.currentState?.validate() ?? false) {
                                  // Handle login logic
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Logging in...')),
                                  );
                                } else {
                                  // Change text and border color to red when submit with empty fields
                                  setState(() {
                                    _emailTextColor = Colors.red;
                                    _emailBorderColor = Colors.red;
                                    _passwordTextColor = Colors.red;
                                    _passwordBorderColor = Colors.red;
                                  });
                                }
                              },
                              child: const Text('Login'),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(16.0),
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
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
