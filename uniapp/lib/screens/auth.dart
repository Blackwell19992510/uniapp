import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign up with email and password
  Future<User?> signUpWithEmailAndPassword(
      String email, String password, String displayName) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Save additional user details to Firestore
      await saveUserDetails(userCredential.user!.uid, displayName, email);

      // You can return user information or perform other actions as needed
      return userCredential.user;
    } catch (e) {
      // Handle sign-up errors
      print('Failed to sign up: $e');
      throw e; // Rethrow the error for further handling in UI
    }
  }

  // Save user details to Firestore
  Future<void> saveUserDetails(
      String userId, String displayName, String email) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(userId).set({
        'displayName': displayName,
        'email': email,
        // Add more fields as needed
      });
    } catch (e) {
      // Handle Firestore errors
      print('Failed to save user details: $e');
      throw e; // Rethrow the error for further handling in UI
    }
  }
}
