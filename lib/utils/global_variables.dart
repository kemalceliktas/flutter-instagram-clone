import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_firebase/screens/add_post.dart';
import 'package:flutter_instagram_clone_firebase/screens/feed_screen.dart';
import 'package:flutter_instagram_clone_firebase/screens/profile_screen.dart';
import 'package:flutter_instagram_clone_firebase/screens/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text("notif"),
  ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid,),
];
