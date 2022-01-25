import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lang_learnning_app/models/items_model.dart';

class colors_screen extends StatelessWidget {

  List<itemModel> ColorsList =[
    itemModel(sound: 'black.wav', jpText: 'Burakku', EText: 'black', image: 'assets/images/colors/color_black.png',),
    itemModel(sound: 'brown.wav', jpText: 'Chairo', EText: 'brown', image: 'assets/images/colors/color_brown.png',),
    itemModel(sound: 'dusty yellow.wav', jpText: 'Hokori ppoi kiiro', EText:  'dusty yellow', image: 'assets/images/colors/color_dusty_yellow.png',),
    itemModel(sound: 'gray.wav', jpText:  'Gurē', EText:  'gray', image: 'assets/images/colors/color_gray.png',),
    itemModel(sound: 'green.wav', jpText:  'Midori', EText:  'green', image: 'assets/images/colors/color_green.png',),
    itemModel(sound: 'red.wav', jpText:  'Aka', EText:  'red', image: 'assets/images/colors/color_red.png',),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF111328),
      appBar: AppBar(
        title: Text('Colors',style: TextStyle(fontSize: 30,fontFamily: 'Pacifico'),),
        centerTitle: true,
        backgroundColor: Color(0xFF111328),
      ),
        body:ListView.builder(itemBuilder: (context,index)=>BuildColorsmodel(ColorsList[index]),itemCount: ColorsList.length,)
    );
  }
}
Widget BuildColorsmodel(itemModel ColorsList)=>Padding(
  padding: const EdgeInsets.only(right: 8,left: 8,top: 8),
  child: Container(
    height: 120,
    width: double.infinity,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
      color: Color(0xFF79359F),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset('${ColorsList.image}'),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${ColorsList.jpText}',style: TextStyle(fontSize: 22,color:Colors.white),),
              Text('${ColorsList.EText}',style: TextStyle(fontSize: 22,color: Colors.white),),

            ],
          ),
          const Spacer(flex: 1,),

          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(onPressed:() {
              try{
                AudioCache player = AudioCache(prefix: 'assets/sounds/colors/');
                player.play('${ColorsList.sound}');
              }
              catch(ex)
              {
                print(ex);
              }
            }
              ,icon: Icon(Icons.play_arrow),iconSize: 32,color: Colors.white,),
          ),
        ],
      ),
    ),

  ),
);