import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:freeu/Global.dart';
import 'package:freeu/common/Other%20Commons/CustomTextFormField.dart';
import 'package:freeu/common/Other%20Commons/customNextButton.dart';
import 'package:freeu/common/Other%20Commons/sized_box.dart';
import 'package:freeu/controllers/entry_point_controller.dart';
import 'package:freeu/profile/profile.dart';
import 'package:freeu/ViewModel/Profile/Getprofile.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  final ProfileImageController editProfileImage =
      Get.put(ProfileImageController());
  bool editBool = false;
  late Future myfuture;
  Future<File> saveFilePermanently(String imagePath) async {
    return File(imagePath).copy(imagePath);
  }

  final controllerEntryPoint = Get.put(EntryPointController());

  // builduploadprofile() {
  //   return showModalBottomSheet(
  //     isScrollControlled: true,
  //     context: context,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(26.r),
  //         topRight: Radius.circular(26.r),
  //       ),
  //     ),
  //     builder: (context) {
  //       return Container(
  //         margin: EdgeInsets.symmetric(horizontal: 36.w, vertical: 26.h),
  //         child: Padding(
  //           padding: EdgeInsets.only(
  //               bottom: MediaQuery.of(context).viewInsets.bottom),
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 'Profile Photo',
  //                 style: TextStyle(
  //                     color: const Color(0xff444444),
  //                     fontSize: 22.sp,
  //                     fontFamily: 'Poppins'),
  //               ),
  //               sizedBoxHeight(40.h),
  //               Row(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 children: [
  //                   GestureDetector(
  //                     onTap: () {
  //                       editProfileImage.getImage(ImageSource.camera);
  //                       Get.back();
  //                     },
  //                     child: Column(
  //                       children: [
  //                         CircleAvatar(
  //                           radius: 27.r,
  //                           backgroundColor: const Color(0xff143C6D),
  //                           child: Icon(
  //                             Icons.camera_alt_outlined,
  //                             size: 30.sp,
  //                             color: Colors.white,
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           height: 6.h,
  //                         ),
  //                         Text(
  //                           'Camera',
  //                           style: TextStyle(
  //                               fontSize: 13.sp,
  //                               color: const Color(0xff444444),
  //                               fontFamily: 'Poppins'),
  //                         )
  //                       ],
  //                     ),
  //                   ),
  //                   sizedBoxWidth(36.w),
  //                   GestureDetector(
  //                     onTap: () {
  //                       editProfileImage.getImage(ImageSource.gallery);
  //                       Get.back();
  //                     },
  //                     child: Column(
  //                       children: [
  //                         CircleAvatar(
  //                           radius: 27.r,
  //                           backgroundColor: const Color(0xff143C6D),
  //                           child: Icon(
  //                             Icons.image_outlined,
  //                             size: 30.sp,
  //                             color: Colors.white,
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           height: 6.h,
  //                         ),
  //                         Text(
  //                           'Gallery',
  //                           style: TextStyle(
  //                               fontSize: 13.sp,
  //                               color: const Color(0xff444444),
  //                               fontFamily: 'Poppins'),
  //                         )
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  void initState() {
    // TODO: implement initState
    myfuture = GetProfile().GetProfileAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back(result: true);
        return false;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: controllerEntryPoint.logedIn!
              ? FutureBuilder(
                  future: myfuture,
                  builder: (ctx, snapshot) {
                    if (snapshot.data == null) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Center(child: CircularProgressIndicator())],
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                            '${snapshot.error} occured',
                            style: TextStyle(fontSize: 18.spMin),
                          ),
                        );
                      }
                    }
                    return _buildBody(
                      context,
                    );
                  },
                )
              : _buildBody(context)),
    );
  }

  Widget _buildBody(context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back(result: true);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 24.sp,
                  ),
                ),
                Visibility(
                  visible: !editBool,
                  child: GestureDetector(
                    onTap: (() async {
                      // setState(() async {
                      // editBool = true;
                      final result = await Get.toNamed("/edituser", arguments: {
                        "id": ProfileObj!.user!.id ?? "NA",
                        "name": ProfileObj!.user!.name ?? "NA",
                        // "first_name": ProfileObj!.user!.firstName ?? "NA",
                        // "last_name": ProfileObj!.user!.lastName ?? "NA",
                        "contact_number":
                            ProfileObj!.user!.contactNumber ?? "NA",
                        "email": ProfileObj!.user!.email ?? "NA",
                        "address": ProfileObj!.user!.address ?? "NA",
                        "profile_image": ProfileObj?.user?.profileImage ?? ""
                      });
                      print("result $result");
                      if (result) {
                        myfuture = GetProfile().GetProfileAPI();
                        setState(() {
                          // GetProfile().GetProfileAPI();
                        });
                      }
                      // });
                    }),
                    child: SvgPicture.asset(
                      'assets/images/Group 51018.svg',
                      width: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Investor profile",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w500),
            ),
            sizedBoxHeight(30.h),
            // editBool
            //     ? editProfile()
            //     :
            Column(
              children: [
                sizedBoxHeight(30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: SizedBox.fromSize(
                          size: Size.fromRadius(60.r),
                          child: ProfileObj?.user?.profileImage != ''
                              ? ClipOval(
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(25.r),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          ProfileObj!.user!.profileImage!),
                                      radius: 25.r,
                                    ),
                                  ),
                                )
                              : Image.asset('assets/images/user.png')),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        ProfileObj!.user!.name ?? "NA",
                        // nameValue == null || nameValue!.isEmpty
                        //     ? ProfileObj!.user!.name ?? "NA"
                        //     //  myusername!
                        //     : '$nameValue $lastNameValue',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 27.h,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xff002A5B),
                      radius: 25.r,
                      child: const Icon(Icons.phone_in_talk_sharp),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      ProfileObj!.user!.contactNumber ?? "NA",
                      // phoneValue == null || phoneValue!.isEmpty
                      //     ? ProfileObj!.user!.contactNumber ?? "NA"
                      //     : '$phoneValue',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 36.h,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xff002A5B),
                      radius: 25.r,
                      child: const Icon(Icons.mail_outline),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Flexible(
                      child: Text(
                        ProfileObj!.user!.email ?? "NA",
                        // emailValue == null || emailValue!.isEmpty
                        //     ? ProfileObj!.user!.email ?? "NA"
                        //     : '$emailValue',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 36.h,
                  color: Colors.grey,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xff002A5B),
                      radius: 25.r,
                      child: const Icon(Icons.location_on_outlined),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          sizedBoxHeight(10.h),
                          Text(
                            ProfileObj!.user!.address ?? "NA",
                            // addressValue == null ||
                            //         addressValue!.isEmpty
                            //     ? ProfileObj!.user!.address ?? "NA"
                            //     : '$addressValue',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 36.h,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SMS updates',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    FlutterSwitch(
                      switchBorder: Border.all(
                        strokeAlign: BorderSide.strokeAlignCenter,
                        style: BorderStyle.solid,
                        width: 1,
                        color: const Color(0xffCCCCCC),
                      ),
                      padding: 4.h,
                      borderRadius: 20.r,
                      width: 80.w,
                      height: 30.h,
                      toggleSize: 20.sp,
                      toggleColor: const Color(0xff143C6D),
                      activeColor: Colors.white,
                      inactiveColor: const Color(0xffB1B1B1),
                      value: smsUpdate,
                      onToggle: (value) {
                        smsUpdate;
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget editProfile() {
  //   return Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Center(
  //           child: Stack(
  //               clipBehavior: Clip.none,
  //               alignment: Alignment.center,
  //               children: [
  //                 Obx(
  //                   () => ClipOval(
  //                     child: SizedBox.fromSize(
  //                         size: Size.fromRadius(60.r),
  //                         child: editProfileImage.profilePicPath.value != ''
  //                             ? Image(
  //                                 image: FileImage(File(
  //                                     editProfileImage.profilePicPath.value)),
  //                                 fit: BoxFit.cover,
  //                                 width: 200.w,
  //                                 height: 200.h,
  //                               )
  //                             : Image.asset('assets/images/user.png')),
  //                   ),
  //                 ),
  //                 Positioned(
  //                   bottom: 0,
  //                   right: 0,
  //                   child: GestureDetector(
  //                     onTap: () {
  //                       builduploadprofile();
  //                     },
  //                     child: Material(
  //                       elevation: 1,
  //                       shape: const CircleBorder(),
  //                       child: CircleAvatar(
  //                         radius: 16.5.r,
  //                         backgroundColor: Colors.white,
  //                         child: const Icon(
  //                           Icons.edit_outlined,
  //                           color: Color(0xffCCCCCC),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ]),
  //         ),
  //         sizedBoxHeight(33.h),
  //         Text(
  //           "First Name",
  //           style: TextStyle(
  //             fontFamily: 'Poppins',
  //             fontSize: 20.sp,
  //           ),
  //         ),
  //         SizedBox(
  //           height: 15.h,
  //         ),
  //         CustomTextFormField(
  //             validator: (value) {
  //               if (value == null || value.isEmpty) {
  //                 return 'Please enter a Username';
  //               }
  //               if (!RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(value)) {
  //                 return 'Please enter a valid username (letters and numbers only)';
  //               }
  //               // v1 = true;
  //               return null;
  //             },
  //             textEditingController: nameController,
  //             hintText: 'Enter First Name',
  //             validatorText: 'Enter First Name'),
  //         SizedBox(height: 20.h),
  //         Text(
  //           "Last Name",
  //           style: TextStyle(
  //             fontFamily: 'Poppins',
  //             fontSize: 20.sp,
  //           ),
  //         ),
  //         SizedBox(
  //           height: 6.h,
  //         ),
  //         CustomTextFormField(
  //             validator: (value) {
  //               if (value == null || value.isEmpty) {
  //                 return 'Please enter lastname';
  //               }
  //               if (!RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(value)) {
  //                 return 'Please enter a valid name (letters and numbers only)';
  //               }
  //               // v1 = true;
  //               return null;
  //             },
  //             textEditingController: lastNameController,
  //             hintText: 'Enter Last Name',
  //             validatorText: 'Enter Last Name'),
  //         SizedBox(height: 20.h),
  //         Text(
  //           "Phone Number",
  //           style: TextStyle(
  //             fontFamily: 'Poppins',
  //             fontSize: 20.sp,
  //           ),
  //         ),
  //         SizedBox(
  //           height: 6.h,
  //         ),
  //         CustomTextFormField(
  //             texttype: TextInputType.phone,
  //             validator: (value) {
  //               if (value == value.isEmpty) {
  //                 return 'Mobile number is required';
  //               } else if (!RegExp(r'(^(?:[+0]9)?[0-9]{10}$)')
  //                   .hasMatch(value)) {
  //                 return 'Enter valid mobile number';
  //               }
  //               // v3 = true;
  //               return null;
  //             },
  //             textEditingController: phoneController,
  //             hintText: 'Enter Phone Number',
  //             validatorText: 'Enter Phone Number'),
  //         SizedBox(height: 20.h),
  //         Text(
  //           "Email Id",
  //           style: TextStyle(
  //             fontFamily: 'Poppins',
  //             fontSize: 20.sp,
  //           ),
  //         ),
  //         SizedBox(
  //           height: 6.h,
  //         ),
  //         CustomTextFormField(
  //             validator: (value) {
  //               if (value == value.isEmpty) {
  //                 return 'Please enter your email';
  //               }
  //               if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
  //                   .hasMatch(value)) {
  //                 return 'Please enter a valid email address';
  //               }
  //               // v4 = true;
  //               return null;
  //             },
  //             textEditingController: emailController,
  //             hintText: 'Enter Email Id',
  //             validatorText: 'Enter Email Id '),
  //         SizedBox(height: 20.h),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.end,
  //           children: [
  //             Column(
  //               children: [
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.end,
  //                   children: const [
  //                     Text(
  //                       'SMS updates',
  //                       textAlign: TextAlign.left,
  //                       style: TextStyle(
  //                         fontSize: 14,
  //                         fontFamily: 'Poppins',
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       width: 70,
  //                     )
  //                   ],
  //                 ),
  //                 const SizedBox(
  //                   height: 10,
  //                 ),
  //                 Row(
  //                   children: [
  //                     FlutterSwitch(
  //                       switchBorder: Border.all(
  //                         strokeAlign: BorderSide.strokeAlignCenter,
  //                         style: BorderStyle.solid,
  //                         width: 1,
  //                         color: const Color(0xffCCCCCC),
  //                       ),
  //                       padding: 0,
  //                       borderRadius: 20,
  //                       width: 40,
  //                       height: 15,
  //                       toggleSize: 15,
  //                       toggleColor: const Color(0xff143C6D),
  //                       activeColor: Colors.white,
  //                       inactiveColor: const Color(0xffB1B1B1),
  //                       value: smsUpdate,
  //                       onToggle: (value) {
  //                         setState(() {
  //                           smsUpdate = value;
  //                         });
  //                       },
  //                     ),
  //                     const SizedBox(
  //                       width: 10,
  //                     ),
  //                     const Text(
  //                       'Opt Out / Opt In',
  //                       textAlign: TextAlign.left,
  //                       style: TextStyle(
  //                         color: Color(0xff737373),
  //                         fontSize: 14,
  //                         fontFamily: 'Poppins',
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //         Text(
  //           "Address",
  //           style: TextStyle(
  //             fontFamily: 'Poppins',
  //             fontSize: 20.sp,
  //           ),
  //         ),
  //         SizedBox(
  //           height: 6.h,
  //         ),
  //         TextFormField(
  //           controller: addressController,
  //           style: TextStyle(fontSize: 16.sp),
  //           cursorColor: const Color(0xFFFFB600),
  //           autovalidateMode: AutovalidateMode.onUserInteraction,
  //           decoration: InputDecoration(
  //             contentPadding: EdgeInsets.all(12.h),
  //             filled: true,
  //             fillColor: Colors.white,
  //             border: OutlineInputBorder(
  //               borderRadius: BorderRadius.circular(10),
  //               borderSide:
  //                   const BorderSide(color: Color(0xffCCCCCC), width: 1),
  //             ),
  //             enabledBorder: OutlineInputBorder(
  //               borderRadius: BorderRadius.circular(10),
  //               borderSide:
  //                   const BorderSide(color: Color(0xffCCCCCC), width: 1),
  //             ),
  //             focusedBorder: OutlineInputBorder(
  //               borderRadius: BorderRadius.circular(10),
  //               borderSide:
  //                   const BorderSide(color: Color(0xffCCCCCC), width: 1),
  //             ),
  //             errorBorder: OutlineInputBorder(
  //               borderRadius: BorderRadius.circular(30),
  //               borderSide: const BorderSide(color: Colors.red, width: 1),
  //             ),
  //             focusedErrorBorder: OutlineInputBorder(
  //               borderRadius: BorderRadius.circular(30),
  //               borderSide: const BorderSide(color: Colors.red, width: 1),
  //             ),
  //             hintStyle:
  //                 const TextStyle(color: Color(0x80000000), fontSize: 14),
  //             hintText: "Address",
  //           ),
  //           minLines: 5,
  //           maxLines: null,
  //         ),
  //         SizedBox(
  //           height: 30.h,
  //         ),
  //         CustomNextButton(
  //           text: 'Update',
  //           ontap: (() {
  //             _submit();
  //           }),
  //         )
  //       ],
  //     ),
  //   );
  // }

  // void _submit() {
  //   setState(() {
  //     setState(() {
  //       editBool = false;
  //       nameValue = nameController.text;
  //       lastNameValue = lastNameController.text;
  //       phoneValue = phoneController.text;
  //       emailValue = emailController.text;
  //       addressValue = addressController.text;
  //     });
  //   });
  // }
}
