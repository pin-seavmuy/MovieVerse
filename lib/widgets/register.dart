import 'package:flutter/material.dart';
import '../widgets/loginScreen.dart';
import '../widgets/bottom_nav_bar.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Color _usernameColor = Colors.black;
  Color _emailColor = Colors.black;
  Color _passwordColor = Colors.black;
  Color _usernameLabelColor = const Color.fromARGB(255, 78, 80, 78);
  Color _emailLabelColor = const Color.fromARGB(255, 78, 80, 78);
  Color _passwordLabelColor = const Color.fromARGB(255, 78, 80, 78);
  bool _passwordVisible = false;
  bool _usernameError = false;
  bool _emailError = false;
  bool _passwordError = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 50, 15, 15),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 229, 223, 223).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'REGISTER',
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
                              controller: _usernameController,
                              labelText: 'Username',
                              icon: Icons.person,
                              iconSize: 20,
                              focusColor: _usernameColor,
                              labelColor: _usernameLabelColor,
                              onChanged: (value) => setState(() {
                                _usernameColor = const Color.fromARGB(255, 228, 6, 99);
                              }),
                              onTap: () => setState(() {
                                _usernameLabelColor = const Color.fromARGB(255, 78, 80, 78);
                              }),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  setState(() => _usernameError = true);
                                  return 'Please enter your username';
                                } else {
                                  setState(() => _usernameError = false);
                                  return null;
                                }
                              },
                            ),
                            const SizedBox(height: 20),
                            _buildTextFormField(
                              controller: _emailController,
                              labelText: 'Email',
                              icon: Icons.email,
                              iconSize: 20,
                              focusColor: _emailColor,
                              labelColor: _emailLabelColor,
                              onChanged: (value) => setState(() {
                                _emailColor = const Color.fromARGB(255, 228, 6, 99);
                              }),
                              onTap: () => setState(() {
                                _emailLabelColor = const Color.fromARGB(255, 78, 80, 78);
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
                            const SizedBox(height: 20),
                            _buildTextFormField(
                              controller: _passwordController,
                              labelText: 'Confirm Password',
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
                            const SizedBox(height: 45),
                            SizedBox(
                              width: 200, // Adjust button width here
                              height: 60, // Increase button height
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ?? false) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Logging in...')),
                                    );
                                  } else {
                                    setState(() {
                                      _usernameColor = Colors.red;
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
                                  shadowColor: _usernameError || _emailError || _passwordError
                                      ? Colors.transparent
                                      : Colors.black.withOpacity(0.2),
                                ),
                                child: const Text(
                                  'Register',
                                  style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25), // Additional spacing for the line

                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LoginScreen()),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already have an account?",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 15), // Add spacing between the texts
                                  Text(
                                    'Login',
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
                            const SizedBox(height: 50), // Ensure space after bottom elements
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
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
          if (!_usernameError && !_emailError && !_passwordError) // Conditionally apply shadow
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
