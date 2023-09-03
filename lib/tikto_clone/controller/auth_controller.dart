import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:titok_clone/tikto_clone/data_models/user_model.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  File  ? proimg;
  pickImage()
  async
  {
    final image =  await  ImagePicker().pickImage(source: ImageSource.gallery);
      if(image  ==  null ) return;
      final img =  File(image.path);
      proimg = img ;
  }
   signup(
      String username, String email, String password, File? file) async {
    try {
      if (username.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          file != null) {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        String downloadurl = await _uploadProPic(file);
        UserModel userModel = UserModel(
            name: username,
            email: email,
            uuid: userCredential.user!.uid,
            propic: downloadurl);
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user!.uid)
            .set(userModel.toJson());
      } else {
        Get.snackbar("Error while creating user account",
            "Please Enter all Required Fields ");
      }
    } catch (e) {
      Get.snackbar("title", e.toString());
    }
  }

  Future<String> _uploadProPic(File file) async {
    Reference reference = FirebaseStorage.instance
        .ref()
        .child("profilePic")
        .child(FirebaseAuth.instance.currentUser!.uid);
    UploadTask uploadTask = reference.putFile(file);
    TaskSnapshot taskSnapshot = await uploadTask;
    String imageDwnUrl = await taskSnapshot.ref.getDownloadURL();
    return imageDwnUrl;
  }
}
