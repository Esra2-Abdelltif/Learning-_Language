 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 void NavigateTo({context,router})=>  Navigator.push(context,MaterialPageRoute(builder: (context) => router));


Widget defultCardHome({required function,required String imagepath,required String titleCard, required Color CardColor })=>Expanded(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: function,
      child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
            color:CardColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(titleCard,style: TextStyle(fontSize: 40,fontFamily: 'Pacifico',color: Colors.white),),
                Spacer(flex: 1,),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(imagepath),
                  ),
                ),

              ],
            ),
          )),
    ),
  ),
);