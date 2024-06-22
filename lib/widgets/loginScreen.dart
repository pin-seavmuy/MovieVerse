import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
// import 'register.dart';
// import 'register_screen.dart';
import '../widgets/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Color _emailColor = Colors.black;
  Color _passwordColor = Colors.black;
  Color _emailLabelColor = const Color.fromARGB(255, 78, 80, 78);
  Color _passwordLabelColor = const Color.fromARGB(255, 78, 80, 78);
  bool _passwordVisible = false;
  bool _emailError = false;
  bool _passwordError = false;
  bool _rememberMe = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/bg2.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 15),
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 229, 223, 223).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                // width: 400,
                height: 770,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 50),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            _buildTextFormField(
                              controller: _emailController,
                              labelText: 'Email',
                              icon: Icons.email,
                              iconSize: 20,
                              focusColor: _emailColor,
                              labelColor: _emailLabelColor,
                              onChanged: (value) => setState(() {
                                _emailColor = const Color.fromARGB(255, 228, 6, 99); // TEXT COLOR WHEN TYPING
                              }),
                              onTap: () => setState(() {
                                _emailLabelColor = const Color.fromARGB(255, 78, 80, 78); // WHEN CLICK ON AND RELEASE
                              }),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  setState(() => _emailError = true);
                                  return 'Please enter your email';
                                } else {
                                  setState(() => _emailError = false);
                                  return null;
                                }
                              },
                            ),
                            const SizedBox(height: 20),
                            _buildTextFormField(
                              controller: _passwordController,
                              labelText: 'Password',
                              icon: Icons.lock,
                              iconSize: 20,
                              focusColor: _passwordColor,
                              labelColor: _passwordLabelColor,
                              obscureText: !_passwordVisible,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                                  size: 20,
                                  color: _passwordLabelColor,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              onChanged: (value) => setState(() {
                                _passwordColor = const Color.fromARGB(255, 228, 6, 99);
                              }),
                              onTap: () => setState(() {
                                _passwordLabelColor = const Color.fromARGB(255, 78, 80, 78);
                              }),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  setState(() => _passwordError = true);
                                  return 'Please enter your password';
                                } else {
                                  setState(() => _passwordError = false);
                                  return null;
                                }
                              },
                            ),
                            const SizedBox(height: 10), // Adjust spacing here
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items to the right
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: _rememberMe,
                                      onChanged: (value) {
                                        setState(() {
                                          _rememberMe = value!;
                                        });
                                      },
                                      activeColor: const Color.fromARGB(255, 228, 6, 99),
                                    ),
                                    Text(
                                      'Remember Me',
                                      style: TextStyle(color: Colors.black, fontSize: 16),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle forget password action
                                  },
                                  child: Text(
                                    'Forget Password',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: 200, // Adjust button width here
                              height: 60, // Increase button height
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ?? false) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Logging in...')),
                                    );
                                    // Navigate to your main application screen
                                  } else {
                                    setState(() {
                                      _emailColor = Colors.red;
                                      _passwordColor = Colors.red;
                                    });
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 228, 6, 99),
                                  padding: EdgeInsets.zero, // Remove default padding
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  shadowColor: _emailError || _passwordError
                                      ? Colors.transparent
                                      : Colors.black.withOpacity(0.2),
                                ),
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ), // Button text style
                                ),
                              ),
                            ),
                            const SizedBox(height: 25), // Additional spacing for the line
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 1.5,
                                  width: double.infinity,
                                  color: const Color.fromARGB(255, 46, 40, 40),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  color: Colors.white,
                                  child: Text(
                                    'OR',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 25), // Additional spacing before social login buttons

                            // Social Login Icons Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 45,
                                  margin: EdgeInsets.only(right: 30),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: const Color.fromARGB(255, 95, 93, 93), width: 1),
                                    color: Colors.transparent,
                                  ),
                                  child: Icon(
                                    Icons.facebook,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 45,
                                  margin: EdgeInsets.only(right: 30),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: const Color.fromARGB(255, 95, 93, 93), width: 1),
                                    color: Colors.transparent,
                                  ),
                                  child: Icon(
                                    Icons.laptop_chromebook_sharp,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: const Color.fromARGB(255, 95, 93, 93), width: 1),
                                    color: Colors.transparent,
                                  ),
                                  child: Icon(
                                    Icons.iso,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20), // Additional spacing before "Don't have an account?" text

                            // "Don't have an account?" Text
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account?",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      // decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  const SizedBox(width: 15), // Add spacing between the texts
                                  Text(
                                    'Sign up',
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 228, 6, 99),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 35), 
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BottomNavBar()),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "SKIP FOR NOW",
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 228, 6, 99),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
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
          ),
        ],
      ),
    );
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String labelText,
    required IconData icon,
    required Color focusColor,
    required Color labelColor,
    bool obscureText = false,
    double iconSize = 24, // Default icon size
    Widget? suffixIcon,
    required Function(String) onChanged,
    required Function() onTap,
    required String? Function(String?) validator,
  }) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          if (!_emailError && !_passwordError) // Conditionally apply shadow
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: labelColor, size: iconSize),
          suffixIcon: suffixIcon,
          labelText: labelText,
          labelStyle: TextStyle(color: labelColor, fontSize: 18),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.transparent, width: 1.2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.pink, width: 0.7),
          ),
          floatingLabelStyle: const TextStyle(color: Colors.black, fontSize: 16),
        ),
        style: TextStyle(color: focusColor, fontSize: 18),
        validator: validator,
        onChanged: onChanged,
        onTap: onTap,
      ),
    );
  }
}
