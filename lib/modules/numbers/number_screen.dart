
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lang_learnning_app/models/items_model.dart';

class number_screen extends StatelessWidget {

  List<itemModel> Numbers =[
    itemModel(image:'assets/images/numbers/number_one.png' , jpText:'ichi' , EText: 'One',sound: 'number_one_sound.mp3',),
    itemModel(image:'assets/images/numbers/number_two.png' , jpText:'Ni' , EText: 'Two',sound: 'number_two_sound.mp3',),
    itemModel(image:'assets/images/numbers/number_three.png' , jpText:'San' , EText: 'Three', sound: 'number_three_sound.mp3',),
    itemModel(image:'assets/images/numbers/number_four.png' , jpText:'Shi' , EText: 'Four',sound: 'number_four_sound.mp3',),
    itemModel(image:'assets/images/numbers/number_five.png' , jpText:'Go' , EText: 'Five',sound: 'number_five_sound.mp3',),
    itemModel(image:'assets/images/numbers/number_six.png' , jpText:'Roku' , EText: 'Six'  ,sound: 'number_six_sound.mp3',),
    itemModel(image:'assets/images/numbers/number_seven.png' , jpText:'Sebun' , EText: 'Seven',sound: 'number_seven_sound.mp3',),
    itemModel(image:'assets/images/numbers/number_eight.png' , jpText:'hachi' , EText: 'Eight',sound: 'number_eight_sound.mp3',),
    itemModel(image:'assets/images/numbers/number_nine.png' , jpText:'Kyū' , EText: 'Nine',sound: 'number_nine_sound.mp3',),
    itemModel(image:'assets/images/numbers/number_ten.png' , jpText:'Jū' , EText: 'Ten',  sound: 'number_ten_sound.mp3',),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF111328),
        appBar: AppBar(
          title: Text('Numbers',style: TextStyle(fontSize: 30,fontFamily: 'Pacifico'),),
          centerTitle: true,
          backgroundColor: Color(0xFF111328),
        ),
        body:ListView.builder(itemBuilder: (context,index)=>BuildNumbermodel(Numbers[index]),itemCount: Numbers.length,)
    );

  }
}


Widget BuildNumbermodel(itemModel Number)=>Padding(
  padding: const EdgeInsets.only(right: 8,left: 8,top: 8),
  child: Container(
    height: 120,
    width: double.infinity,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
      color: Color(0xFFEF9235),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset('${Number.image}'),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${Number.jpText}',style: TextStyle(fontSize: 22,color: Colors.white),),
              Text('${Number.EText}',style: TextStyle(fontSize: 22,color: Colors.white),),

            ],
          ),
          const Spacer(flex: 1,),

          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(onPressed:() {
             try{
               AudioCache player = AudioCache(prefix: 'assets/sounds/numbers/');
               player.play('${Number.sound}');
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