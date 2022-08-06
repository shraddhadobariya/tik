import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:first(),
  ));
}
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  int t=0,o=0,x=0;
  String turn="o",winner="";
  List list=List.filled(9, "");
  win()
  {
    if(list[0]=="o" && list[1]=="o" && list[2]=="o" ||
        list[0]=="o" && list[4]=="o" && list[8]=="o" ||
        list[0]=="o" && list[3]=="o" && list[6]=="o" ||
        list[1]=="o" && list[4]=="o" && list[7]=="o" ||
        list[2]=="o" && list[5]=="o" && list[8]=="o" ||
        list[6]=="o" && list[7]=="o" && list[8]=="o" ||
        list[3]=="o" && list[4]=="o" && list[5]=="o" ||
        list[2]=="o" && list[4]=="o" && list[6]=="o"
    )
      {
        winner="o";
      }
    else if(list[0]=="o" && list[1]=="o" && list[2]=="x" ||
        list[0]=="x" && list[4]=="x" && list[8]=="x" ||
        list[0]=="x" && list[3]=="x" && list[6]=="x" ||
        list[1]=="x" && list[4]=="x" && list[7]=="x" ||
        list[2]=="x" && list[5]=="x" && list[8]=="x" ||
        list[6]=="x" && list[7]=="x" && list[8]=="x" ||
        list[3]=="x" && list[4]=="x" && list[5]=="x" ||
        list[2]=="x" && list[4]=="x" && list[6]=="x"

    )
      {
        winner="x";
      }

  }
   changeval(int pos)
   {
     setState(() {
       if(list[pos]=="")
         {
           if(t%2==0)
             {
               list[pos]="o";
               o++;
               turn="x";
             }
           else
             {
               list[pos]="x";
               x++;
               turn="o";
             }
           t++;
           win();
         }
       print("t");
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(flex:3,child: InkWell(onTap: () {changeval(0);},child: Container(alignment:Alignment.center,height:double.infinity,margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(
                width: 3
            ),
            borderRadius: BorderRadius.circular(15)
        ),
                child: Text("${list[0]}",style: TextStyle(
                  fontSize: 70
                ),)
      )),),
              Expanded(flex:3,child: InkWell(onTap: () {changeval(1);},child: Container(alignment:Alignment.center,height:double.infinity,margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(
                width: 3
            ),
            borderRadius: BorderRadius.circular(15)
        ),
                child: Text("${list[1]}",style: TextStyle(fontSize:70),),
      )),),
              Expanded(flex:3,child: InkWell(onTap: () {changeval(2);},child: Container(alignment:Alignment.center,height:double.infinity,margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(
                width: 3
            ),
            borderRadius: BorderRadius.circular(15)
        ),
                child: Text("${list[2]}",style: TextStyle(
                    fontSize: 70
                ),),
      )),),
            ],
          )),
          Expanded(child:Row(
            children: [
              Expanded(flex:3,child: InkWell(onTap: () {changeval(3);},child: Container(alignment:Alignment.center,height:double.infinity,margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(

                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Text("${list[3]}",style: TextStyle(
                    fontSize: 70
                ),),
              )),),
              Expanded(flex:3,child: InkWell(onTap: () {changeval(4);},child: Container(alignment:Alignment.center,height:double.infinity,margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Text("${list[4]}",style: TextStyle(
                    fontSize: 70
                ),),
              )),),
              Expanded(flex:3,child: InkWell(onTap: () {changeval(5);},child: Container(alignment:Alignment.center,height:double.infinity,margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Text("${list[5]}",style: TextStyle(
                    fontSize: 70
                ),),
              )),),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(flex:3,child: InkWell(onTap: () {changeval(6);},child: Container(alignment:Alignment.center,height:double.infinity,margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Text("${list[6]}",style: TextStyle(
                    fontSize: 70
                ),),
              )),),
              Expanded(flex:3,child: InkWell(onTap: () {changeval(7);},child: Container(alignment:Alignment.center,height:double.infinity,margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Text("${list[7]}",style: TextStyle(
                    fontSize: 70
                ),),
              )),),
              Expanded(flex:3,child: InkWell(onTap: () {changeval(8);},child: Container(alignment:Alignment.center,height:double.infinity,margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Text("${list[8]}",style: TextStyle(
                    fontSize: 70
                ),),
              )),),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(flex:1,child: Container(margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                alignment: Alignment.center,
                child: Text("X:$x ",style: TextStyle(
                  fontSize: 30,fontStyle: FontStyle.italic
                ),),
              )),
              Expanded(flex:1,child: Container(margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                alignment: Alignment.center,
                child: Text("O:$o",style: TextStyle(
                  fontSize: 30,fontStyle: FontStyle.italic
                ),),
              )),
              Expanded(flex:1,child: Container(margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                alignment: Alignment.center,
                child: Text("$turn turn",style: TextStyle(
                    fontSize: 30,fontStyle: FontStyle.italic
                ),),
              )),

            ],
          )),
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
                border: Border.all(
                    width: 3
                ),
              borderRadius: BorderRadius.circular(15)
            ),
            margin: EdgeInsets.all(20),
            alignment: Alignment
                .center,
            child: Text("$winner winner",style: TextStyle(
              fontSize: 30,fontStyle: FontStyle.italic
            ),),
          ))
        ],
      )


    );
  }
}



