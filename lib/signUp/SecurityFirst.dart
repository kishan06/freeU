// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeu/common/signupAppbar.dart';

import 'package:get/get.dart';
import '../common/customNextButton.dart';

class SecurityFirst extends StatefulWidget {
  const SecurityFirst({super.key});

  @override
  State<SecurityFirst> createState() => _SecurityFirstState();
}

class _SecurityFirstState extends State<SecurityFirst> {
  build4digitpin() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Let's set your 4 Digit Pin",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text("Choose a PIN of Your choice"),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: pincontroller,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          hintText: "",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Color(0xFF707070)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF707070))),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text("Please Re-Enter the PIN"),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: confirmpincontroller,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          hintText: "",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Color(0xFF707070)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF707070))),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomNextButton(
                    ontap: () {
                      Get.toNamed("/complete_profile");
                    },
                    text: 'Submit',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String gender = "security-first";
  bool onclickoftouchid = false;
  bool onclickofpin = false;
  TextEditingController pincontroller = TextEditingController();
  TextEditingController confirmpincontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: CustomSignupAppBar(
        titleTxt: "Security First",
        bottomtext: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Select to login Method",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                // ignore: prefer_const_constructors
                height: 125,
                decoration: BoxDecoration(
                  color: onclickofpin ? const Color(0xff143C6D) : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                alignment: const Alignment(50, 0),
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  trailing: SvgPicture.asset(
                    onclickofpin
                        ? "assets/images/four-dg-white.svg"
                        : "assets/images/four-dg-black.svg",
                  ),
                  onTap: () {},
                  title: Text(
                    "4 Digit PIN",
                    style: TextStyle(
                      color: onclickofpin ? Colors.white : Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  leading: Transform.scale(
                    scale: 1.5,
                    child: Radio(
                        activeColor: (Colors.white),
                        value: "4 Digit PIN",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            print(value);
                            onclickoftouchid = false;
                            onclickofpin = true;
                            gender = value.toString();
                            build4digitpin();
                          });
                        }),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                // ignore: prefer_const_constructors
                height: 125,
                decoration: BoxDecoration(
                  color:
                      onclickoftouchid ? const Color(0xff143C6D) : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                alignment: const Alignment(50, 0),
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  trailing: SvgPicture.asset(
                    onclickoftouchid
                        ? "assets/images/touch-white.svg"
                        : "assets/images/touch-black.svg",
                  ),
                  title: Text(
                    "Touch Id",
                    style: TextStyle(
                        color: onclickoftouchid ? Colors.white : Colors.black,
                        fontSize: 18),
                  ),
                  leading: Transform.scale(
                    scale: 1.5,
                    child: Radio(
                        // fillColor:
                        //     MaterialStateProperty.all<Color>(Color(0xff143C6D)),
                        focusColor: const Color(0xff143C6D),
                        activeColor: (Colors.white),
                        value: "Touch Id",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            onclickoftouchid = true;
                            onclickofpin = false;

                            gender = value.toString();
                            Get.toNamed("/touchid");
                            // Navigator.push(
                            //             context,
                            //             MaterialPageRoute(
                            //               builder: (context) =>
                            //                   const touch_id(),
                            //             ),
                            //           )
                          });
                        }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
