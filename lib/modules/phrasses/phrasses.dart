import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lang_learnning_app/models/items_model.dart';

class phrasses_screen extends StatelessWidget {

   List<itemModel> Phrases =[
     itemModel(sound: 'dont_forget_to_subscribe.wav', jpText: 'Kōdoku suru koto o wasurenaide kudasai', EText:  'dont forget to subscribe',),
     itemModel(sound: 'i_love_programming.wav', jpText:  'Watashi wa puroguramingu daisukidesu', EText:  'i love  programming',),
    itemModel(sound: 'programming_is_easy.wav', jpText:  'Puroguramingu wa kantandesu ', EText:  'programming is easy',),
    itemModel(sound: 'where_are_you_going.wav', jpText: 'Doko ni iku no', EText:  'where are you going',),
     itemModel(sound: 'what_is_your_name.wav', jpText:  'Namae wa nandesu ka', EText:  'what is your name ?',),
     itemModel(sound: 'i_love_anime.wav', jpText:  'Watashi wa anime ga daisukidesu', EText:  'i love anime',),
    itemModel(sound: 'how_are_you_feeling.wav', jpText:  'Go kibun wa ikagadesu ka',EText:  'how are you feeling?',),
     itemModel(sound: 'are_you_coming.wav', jpText:  'Kimasu ka', EText: 'are you coming?',),
     itemModel(sound: 'yes_im_coming.wav', jpText:  'Hai watashi wa kite imasu', EText: 'yes i am coming',
     ),

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
        body:ListView.builder(itemBuilder: (context,index)=>BuildPhrasesmodel(Phrases[index]),itemCount: Phrases.length,)
    );
  }
}
Widget BuildPhrasesmodel(itemModel Phrasses)=>Padding(
  padding: const EdgeInsets.only(right: 8,left: 8,top: 8),
  child: Container(
    height: 120,
    width: double.infinity,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
      color:  Color(0xFF50ADC7),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${Phrasses.jpText}',style: TextStyle(fontSize: 15,color: Colors.white,),),
              Text('${Phrasses.EText}',style: TextStyle(fontSize: 15,color: Colors.white),),

            ],
          ),
          const Spacer(flex: 1,),

          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(onPressed:() {
              try{
                AudioCache player = AudioCache(prefix: 'assets/sounds/phrases/');
                player.play('${Phrasses.sound}');
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