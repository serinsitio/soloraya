import 'package:flutter/material.dart';
import 'package:tubes_abp/login.dart';

class UserAccount extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Center(
        child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));

                    },
                        color: Color.fromARGB(255, 232, 182, 1),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          
                        ),
                        child: Text(
                          "Logout", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                          
                        ),
                        ),
                        

                      ),
      );
  }
}