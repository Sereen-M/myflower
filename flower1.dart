import 'package:flutter/material.dart';

void main(){
    runApp(MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text('Choose Your Boquet',
           style: TextStyle(
           color: Colors.white,
            ),),
          centerTitle: true,
          backgroundColor: Colors.pink[300],
        ),
     body: myflower(),
    ),

));

}

class myflower extends StatefulWidget {
  const myflower({super.key});

  @override
  State<myflower> createState() => _myflowerState();
}

class _myflowerState extends State<myflower> {

   int redflower= 1;
   int yellowflower= 1;
   int blueflower= 1;

   void increaseRed(){
    setState(() {
      redflower=redflower<5 ? redflower+1 : 0 ;
    });
     
   }

   void increaseBlue(){
    setState(() {
       blueflower=blueflower<5 ? blueflower+1 : 0 ;
    });
   
   }

  void increaseYellow(){
    setState(() {
       yellowflower=yellowflower<5 ? yellowflower+1 : 0;
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Container(
          child: Text('Pick Your Flowers ',
           style: TextStyle(
             fontSize: 30,
             color: Colors.white,
           ),
          ),
           color: Colors.pink[200],
           padding: EdgeInsets.all(10),
        ),
        Row(
          children: [
            Text(' Yellow Flower :', 
            style: TextStyle(
            color: Colors.pink[900],
            ),),
            for(int i =0 ; i<yellowflower ; i++)
            Image.asset('assets/img/yellowflower.jpg',width: 20,),
            Text('\n\n  $yellowflower',style: TextStyle(color: Colors.pink[900]),),
            const Expanded (child: SizedBox()),
            FilledButton(
               style: FilledButton.styleFrom(
                backgroundColor: Colors.pink[400],
                foregroundColor: Colors.white,
                ),
              onPressed: increaseYellow, 
              child: Text('+'))
           
          ]
          
        ),
        Row(
          children: [
            Text('  Red Flower :' , 
            style: TextStyle(
            color: Colors.pink[900],
            ),),
            for(int i =0;i<redflower;i++)
            Image.asset('assets/img/redflower.png',width: 20,),
            Text('\n\n  $redflower',style: TextStyle(color: Colors.pink[900]),),
            const Expanded (child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.pink[400],
                foregroundColor: Colors.white,
              ),
              onPressed: increaseRed, 
            child: Text('+'))
          ],
        ),
        Row(
          children: [
            Text('  Blue Flower :' , 
            style: TextStyle(
            color: Colors.pink[900],
              ),
              ),
              for(int i =0 ; i < blueflower ; i++)
             Image.asset('assets/img/blueflower.jpg',width: 20,
             color: Colors.white,
             colorBlendMode: BlendMode.multiply,
             ), 
            Text('\n\n $blueflower',
            style: TextStyle(
              color: Colors.pink[900]),
              ),
           
            const Expanded (child: SizedBox()),
             FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.pink[400],
              foregroundColor: Colors.white,
            ),
            onPressed: increaseBlue,
             child: Text('+')
            )
            
          ],
        ),
      ],
      
    );
    
  }
}