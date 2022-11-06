import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_instagram_clone_firebase/providers/user_provider.dart';
import 'package:flutter_instagram_clone_firebase/utils/global_variables.dart';
import 'package:provider/provider.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({super.key, required this.webScreenLayout, required this.mobileScreenLayout});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {

  @override
  void initState() {
    
    
    super.initState();
    addData();
  }


  addData()async{
    UserProvider _userProvider=Provider.of(context,listen: false);
    await _userProvider.refreshUser();

  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth>webScreenSize){
              //web screen

              return widget.webScreenLayout;

        } else{
          return widget.mobileScreenLayout;
        }
      },
    );
  }
}