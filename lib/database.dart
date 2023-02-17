import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  Future<String?> addUser({
    required String name,
    required String phone,
    required String dob,
    required String email,
    required String gender,
    required String password
  }) async {
    try {
      CollectionReference users =
      FirebaseFirestore.instance.collection('users');
      // Call the user's CollectionReference to add a new user
      await users.doc(email).set({
        'full_name': name,
        'dob': dob,
        'phone': phone,
        'email': email,
        'gender':gender,
        'password': password
      });
      return 'success';
    } catch (e) {
      return 'Error adding user';
    }
  }

  Future<String?> getUser(String email) async {
    try {
      CollectionReference users =
      FirebaseFirestore.instance.collection('users');
      final snapshot = await users.doc(email).get();
      final data = snapshot.data() as Map<String, dynamic>;
      return data[''];
    } catch (e) {
      return 'Error fetching user';
    }
  }
}