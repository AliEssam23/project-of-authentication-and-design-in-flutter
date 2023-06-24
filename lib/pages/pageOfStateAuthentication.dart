// ignore_for_file: unused_import, file_names

import 'package:project_of_authen/pages/pageOfAuthentication.dart';
import "package:flutter/material.dart";


class PageOfAuthentication extends StatefulWidget {
  const PageOfAuthentication({Key? key}) : super(key: key);

  @override
  State<PageOfAuthentication> createState() => _PageOfAuthenticationState();
}

class _PageOfAuthenticationState extends State<PageOfAuthentication> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // ignore: use_full_hex_values_for_flutter_colors
            Color(0xFFF00dbdf),
            Color(0xFFF307fd),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.mic_none,
                size: 120.0,
                color: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Text(
                  "WELCOME TO",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "MUSIC",
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 3.0),
                  ),
                  Text(
                    "APP",
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        letterSpacing: 2.0),
                  )
                ],
              ),

              ///Button Of Log in
              Padding(
                padding: const EdgeInsets.only(top: 55.0),
                child: InkWell(
                  child: Container(
                    constraints: BoxConstraints.expand(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.11,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const PageOfLogin(
                          StateOfAuthentication: false,
                        );
                      }),
                    );
                  },
                ),
              ),

              ///End Button Of Log in
              ///Button Of Register
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: InkWell(
                  child: Container(
                    constraints: BoxConstraints.expand(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.11,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Center(
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const PageOfLogin(
                          StateOfAuthentication: true,
                        );
                      }),
                    );
                  },
                ),
              ),

              ///End Button Of Register

              const Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text(
                  "Or quick login\nwith Touch ID",
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Icon(
                  Icons.fingerprint_outlined,
                  size: 80.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
