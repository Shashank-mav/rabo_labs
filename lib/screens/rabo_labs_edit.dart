// import 'package:rabo/screens/rabo_sampleboy_profile_edit_details.dart';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:rabo_labs/screens/editing_page.dart';
import 'package:rabo_labs/screens/rabo_labs_details.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
// import 'dart:js_util';

class ProfileEdit extends StatefulWidget {
  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  File? image;

  Future _Camera() async {
    final picture = await ImagePicker().pickImage(source: ImageSource.camera);

    print("selected");
    setState(() {
      final imageTemporary = File(picture!.path);
      image = imageTemporary;
      Navigator.of(context).pop();
    });
  }

  Future _Gallery() async {
    final picture = await ImagePicker().pickImage(source: ImageSource.gallery);

    print("selected");
    setState(() {
      final imageTemporary = File(picture!.path);
      image = imageTemporary;
    });
    Navigator.of(context).pop();
  }

  void showBottomDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "hello",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.6),
      transitionDuration: const Duration(milliseconds: 400),
      context: context,
      pageBuilder: (context, _, __) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: _buildDialogContent(),
        );
      },
      transitionBuilder: (_, animation1, __, child) {
        return SlideTransition(
          position: Tween(
            begin: const Offset(0, 1),
            end: const Offset(0, 0),
          ).animate(animation1),
          child: child,
        );
      },
    );
  }

  Widget _buildDialogContent() {
    return IntrinsicHeight(
      child: Container(
        width: double.maxFinite,
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color.fromARGB(
            250,
            235,
            255,
            250,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Material(
          child: Column(
            children: [
              Text(
                "Pick image from source",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                  height: 100,
                  child: Row(children: [
                    TextButton(
                        onPressed: () => _Camera(),
                        child: Icon(
                          Icons.camera_alt_rounded,
                          color: Color.fromARGB(155, 0, 200, 151),
                          size: 50,
                        )),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    TextButton(
                      onPressed: () => _Gallery(),
                      child: Icon(
                        Icons.photo,
                        color: Color.fromARGB(155, 0, 200, 151),
                        size: 50,
                      ),
                    )
                  ])),
              SizedBox(
                  // height: 20,
                  // width: 20,
                  child: Lottie.network(
                "https://assets1.lottiefiles.com/packages/lf20_h4th9ofg.json",
              ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          backgroundColor: Color.fromARGB(153, 0, 200, 151),
          elevation: 0,
        ),
        body: Container(
            color: Color.fromARGB(250, 235, 255, 250),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              Container(
                // height: 250,
                color: Color.fromARGB(153, 0, 200, 151),
                // decoration: BoxDecoration(
                //     // backgroundBlendMode: BlendMode.difference,
                //     // gradient: Gradient(colors: [Color.fromARGB(0, 0, 0, 0)]),
                //     boxShadow: [BoxShadow(offset: Offset.fromDirection(5, 0.8))]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      width: double.maxFinite,
                      height: 100.0,
                      child: CircleAvatar(
                        radius: 16.0,
                        child: ClipRRect(
                          child: image != null
                              ? Image.file(image!)
                              : FlutterLogo(size: 160),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ), // Your image widget here
                    ),
                    TextButton(
                        onPressed: () => showBottomDialog(context),
                        // pickImage(ImageSource.gallery),
                        child: Icon(Icons.edit)),
                  ],
                ),
              ),
              Edit()
            ])));
  }
}
