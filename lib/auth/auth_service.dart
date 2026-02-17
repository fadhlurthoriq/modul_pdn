import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? getCurrentUser() {
    return _auth.currentUser;
  }

  // login
  Future<UserCredential> signInWithEmailPassword(String email, String password) async {
    try {
      // user yang terdaftar
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, 
          password: password);
      // menyimpan user jika belum terdaftar
      _firestore.collection("user").doc(userCredential.user!.uid).set({
        "uid": userCredential.user!.uid,
        "email": email,
      });

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
  
  // register
  Future<UserCredential> signUpWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: email, 
          password: password
      );
      // menyimpan data user di dokumen yang beda
      _firestore.collection("user").doc(userCredential.user!.uid).set({
        "uid": userCredential.user!.uid,
        "email": email,
      });

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // logout
  Future<void> signOut() async {
    return await _auth.signOut();
  }
}