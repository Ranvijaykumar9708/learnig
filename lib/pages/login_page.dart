import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/image/L.png",
            fit: BoxFit.cover,
            height: 300,
            width: 300,
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text('Welcome ',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.email,
                    color: Colors.deepOrange,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  hintText: 'Email',
                  labelText: "Enter Email"),
              validator: (value) {
                if (value!.isEmpty) {
                  return "username cannot be empty";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.password,
                    color: Colors.deepOrange,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  hintText: 'Password',
                  labelText: "Enter Password"),
                  validator: (value) {
                if (value!.isEmpty) {
                  return "username cannot be empty";
                }
                return null;
              },
                  
                  
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, Myroutes.homeRoutes);
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
              ))
        ],
      ),
    );
  }
}
