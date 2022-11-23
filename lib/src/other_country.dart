import 'package:flutter/material.dart';

class OtherCountry extends StatefulWidget {
  final Function(String login, String password)? onLogin;

  const OtherCountry({Key? key, this.onLogin}) : super(key: key);

  @override
  State<OtherCountry> createState() => _OtherCountryState();
}

class _OtherCountryState extends State<OtherCountry> {
  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();

  @override
  void dispose() {
    controllerLogin.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 48),
              TextField(
                controller: controllerLogin,
                decoration: const InputDecoration(
                  hintText: "Login",
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: controllerPassword,
                decoration: const InputDecoration(
                  hintText: "Password",
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: kToolbarHeight),
              GestureDetector(
                onTap: () => widget.onLogin?.call(
                  controllerLogin.text,
                  controllerPassword.text,
                ),
                behavior: HitTestBehavior.opaque,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
