import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lang_learnning_app/models/items_model.dart';

class familyMember_screen extends StatelessWidget {
  List<itemModel> Familys =[
    itemModel(sound: 'father.wav', jpText:  'Chichioya', EText:  'father', image: 'assets/images/family_members/family_father.png',),
   itemModel(sound: 'daughter.wav', jpText:  'Musume', EText:  'daughter', image: 'assets/images/family_members/family_daughter.png',),
    itemModel(sound: 'grand father.wav', jpText:  'Ojīsan', EText:  'Grand Father', image: 'assets/images/family_members/family_grandfather.png',),
    itemModel(sound: 'mother.wav', jpText: 'Hahaoya', EText: 'mother', image: 'assets/images/family_members/family_mother.png',),
    itemModel(sound: 'grand mother.wav', jpText: 'Sobo', EText: 'grand mother', image: 'assets/images/family_members/family_grandmother.png',),
    itemModel(sound: 'older bother.wav', jpText: 'Nīsan', EText: 'older brother', image: 'assets/images/family_members/family_older_brother.png',),
    itemModel(sound: 'older sister.wav', jpText:'Ane', EText: 'older sister', image: 'assets/images/family_members/family_older_sister.png',),
    itemModel(sound: 'son.wav', jpText: 'Musuko', EText:  'son', image: 'assets/images/family_members/family_son.png',),
    itemModel(sound: 'younger brohter.wav', jpText:'otōto', EText:'younger brother', image: 'assets/images/family_members/family_younger_brother.png',),
    itemModel(sound: 'younger sister.wav',jpText: 'Imōto', EText:  'younger sister', image: 'assets/images/family_members/family_younger_sister.png',),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111328),
      appBar: AppBar(
        title: Text('Family',style: TextStyle(fontSize: 30,fontFamily: 'Pacifico'),),
        centerTitle: true,
        backgroundColor: Color(0xFF111328),
      ),
        body:ListView.builder(itemBuilder: (context,index)=>BuildFamilymodel(Familys[index]),itemCount: Familys.length,)


    );
  }
}
Widget BuildFamilymodel(itemModel Family)=>Padding(
  padding: const EdgeInsets.only(right: 8,left: 8,top: 8),
  child: Container(
    height: 120,
    width: double.infinity,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
      color: Color(0xFF558B37),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset('${Family.image}'),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${Family.jpText}',style: TextStyle(fontSize: 22,color: Colors.white),),
              Text('${Family.EText}',style: TextStyle(fontSize: 22,color: Colors.white),),

            ],
          ),
          const Spacer(flex: 1,),

          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(onPressed:() {
              try{
                AudioCache player = AudioCache(prefix: 'assets/sounds/family_members/');
                player.play('${Family.sound}');
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