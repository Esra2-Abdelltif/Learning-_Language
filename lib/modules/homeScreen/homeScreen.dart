import 'package:flutter/material.dart';
import 'package:lang_learnning_app/modules/colors/colors_screen.dart';
import 'package:lang_learnning_app/modules/familyMember/familyMember.dart';
import 'package:lang_learnning_app/modules/numbers/number_screen.dart';
import 'package:lang_learnning_app/modules/phrasses/phrasses.dart';
import 'package:lang_learnning_app/shared/compontes/compontes.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF111328),
      appBar: AppBar(
        title: Text('Toku',style: TextStyle(fontSize: 30,fontFamily: 'Pacifico'),),
        centerTitle: true,
        backgroundColor: Color(0xFF111328),
      ),
      body:Column(children:
      [
        //colors card
        defultCardHome(
            function: (){
              NavigateTo(router:  colors_screen(),context: context);
            },
            imagepath:"assets/images/home/colors.jpg", titleCard: 'Colors',CardColor: Color(0xFF79359F) ),
        //number card
        defultCardHome(
            function: (){
              NavigateTo(router:  number_screen(),context: context);
            },
            imagepath:"assets/images/home/numbers.jpg", titleCard: 'Numbers',CardColor: Color(0xFFEF9235),),
        //phrasses card
        defultCardHome(
            function: (){
              NavigateTo(router:  phrasses_screen(),context: context);
            },
            imagepath:"assets/images/home/Conversations.png", titleCard: 'Phrasses',CardColor: Color(0xFF50ADC7)),
        //family card
        defultCardHome(
            function: (){
              NavigateTo(router:  familyMember_screen(),context: context);
            },
            imagepath:"assets/images/home/family.png", titleCard: 'family',CardColor: Color(0xFF558B37),)





      ]
        ,),
      );

  }
}
