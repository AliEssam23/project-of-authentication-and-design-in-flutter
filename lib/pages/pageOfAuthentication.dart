// ignore: file_names
// ignore_for_file: unused_import, unnecessary_import, sort_child_properties_last, file_names, use_key_in_widget_constructors, no_logic_in_create_state, non_constant_identifier_names, duplicate_ignore, prefer_typing_uninitialized_variables, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

// ignore: duplicate_ignore
class PageOfLogin extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const PageOfLogin({required this.StateOfAuthentication});
  final StateOfAuthentication;
  @override
  State<PageOfLogin> createState() =>
      _PageOfLoginState(state_Authentication: StateOfAuthentication);
}

class _PageOfLoginState extends State<PageOfLogin> {
  bool ShowPassword = false;

  _PageOfLoginState({required this.state_Authentication});

  late bool state_Authentication;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: ShaderMask(
                    shaderCallback: ((bounds) => const LinearGradient(
                          colors: [
                            Color(0xFFF00dbdf),
                            Color(0xFFF307fd),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ).createShader(bounds)),
                    child: const Icon(
                      Icons.mic_none,
                      color: Colors.white,
                      size: 80.0,
                    ),
                  ),
                ),

                const Text(
                  "SIGN IN",
                  style: TextStyle(fontSize: 16.0),
                ),
                const Text(
                  "TO CONTINUE",
                  style: TextStyle(fontSize: 16.0),
                ),

//TextFormField Of Name
                state_Authentication == true
                    ? Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: TextFormField(
                          style: const TextStyle(fontSize: 18.0),
                          keyboardType: TextInputType.name,
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            disabledBorder: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: "Name",
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                      )
                    : const Padding(padding: EdgeInsets.only(top: 0.0)),

                //TextFormField Of Email
                Padding(
                  padding: state_Authentication == false
                      ? const EdgeInsets.only(top: 50.0)
                      : const EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    style: const TextStyle(fontSize: 18.0),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                     
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: "Email",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                ),
                //End TextFormField Of Email
                //TextFormField Of Password
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    style: const TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 2.0,
                    ),
                    obscureText: ShowPassword == false ? true : false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: "Password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      suffixIcon: ShowPassword == false
                          ? IconButton(
                              splashColor: Colors.transparent,
                              icon: const Icon(Icons.visibility_off_outlined),
                              color: Colors.grey,
                              onPressed: (() {
                                setState(() {
                                  ShowPassword = !ShowPassword;
                                });
                              }),
                            )
                          : IconButton(
                              splashColor: Colors.transparent,
                              icon: const Icon(Icons.visibility_outlined,
                                  color: Colors.grey),
                              onPressed: () {
                                setState(() {
                                  ShowPassword = !ShowPassword;
                                });
                              },
                            ),
                    ),
                  ),
                ), //End TextFormField Of Password

                ///Button Of Log in
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Stack(
                    children: [
                      ShaderMask(
                        blendMode: BlendMode.modulate,
                        shaderCallback: ((bounds) => const LinearGradient(
                              colors: [
                                // ignore: use_full_hex_values_for_flutter_colors
                                Color(0xFFF00dbdf),
                                Color(0xFFF307fd),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ).createShader(bounds)),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Container(
                            constraints: BoxConstraints.expand(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.width * 0.11,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          onTap: () {
                            // ignore: avoid_print
                            print("Log in");
                          },
                        ),
                      ),

                      Positioned(
                        child: Text(
                                state_Authentication == false
                                    ? "Log in"
                                    : "Sign up",
                                style:
                                    const TextStyle(fontSize: 18.0, color: Colors.white),
                              ),
                              top:10.0 ,
                              left: 75.0,
                      ),
                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Lost password?",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
//Row of Google and Facebook
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            child: Stack(
                              children: [
                                Container(
                                  constraints: const BoxConstraints.expand(
                                      width: 120.0, height: 40.0),
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        // ignore: use_full_hex_values_for_flutter_colors
                                        Color(0xFFF00dbdf),
                                        Color(0xFFF307fd),
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                ),
                                Positioned(
                                  // ignore: sort_child_properties_last
                                  child: Container(
                                    constraints: const BoxConstraints.expand(
                                        width: 110.0, height: 30.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ShaderMask(
                                              blendMode: BlendMode.modulate,
                                              shaderCallback: ((bounds) =>
                                                   const LinearGradient(
                                                    colors: [
                                                      // ignore: use_full_hex_values_for_flutter_colors
                                                      Color(0xFFF00dbdf),
                                                      Color(0xFFF307fd),
                                                    ],
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                  ).createShader(bounds)
                                                  
                                                  ),

                                              child: const Text(
                                                "Google",
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                  top: 5.0,
                                  left: 5.0,
                                ),
                              ],
                            ),
                            onTap: () {
                              // ignore: avoid_print
                              print("Google");
                            },
                          )
                        ],
                      ),
                      ////////////////////////////////

                      Column(
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            child: Stack(
                              children: [
                                Container(
                                  constraints: const BoxConstraints.expand(
                                      width: 120.0, height: 40.0),
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        // ignore: use_full_hex_values_for_flutter_colors
                                        Color(0xFFF00dbdf),
                                        Color(0xFFF307fd),
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                ),
                                Positioned(
                                  // ignore: sort_child_properties_last
                                  child: Container(
                                    constraints: const BoxConstraints.expand(
                                        width: 110.0, height: 30.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ShaderMask(
                                              blendMode: BlendMode.modulate,
                                              shaderCallback: ((bounds) =>
                                                  const LinearGradient(
                                                    colors: [
                                                      Color(0xFFF00dbdf),
                                                      Color(0xFFF307fd),
                                                    ],
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                  ).createShader(bounds)),
                                              child: const Text(
                                                "Facebook",
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                  top: 5.0,
                                  left: 5.0,
                                ),
                              ],
                            ),
                            onTap: () {
                              // ignore: avoid_print
                              print("Facebook");
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: state_Authentication == false
                      ? const EdgeInsets.only(top: 80.0)
                      : const EdgeInsets.only(top: 10.0),
                  child: const Divider(
                    indent: 120.0,
                    endIndent: 120.0,
                    thickness: 3.0,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state_Authentication == false
                        ? "Don't have an account?"
                        : "Do have an account?"),
                    TextButton(
                      child: Text(
                        state_Authentication == false ? "Register" : "Log in",
                        style: const TextStyle(color: Colors.black),
                      ),
                      onPressed: (() {
                        setState(() {
                          state_Authentication = !state_Authentication;
                        });
                      }),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
