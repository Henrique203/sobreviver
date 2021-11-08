import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:sobreviver/menu_floresta.dart';
import 'package:sobreviver/video_widget.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();


  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

}


int mano = 3;

class _MyHomePageState extends State<MyHomePage>{
  int teste = 0;
  void mudaValor(){
    setState(() {
      if(teste == 0)
        teste = 1;
      else
        teste = 0;
    });
  }

  void manodoceu(){
    print('oxe');
  }

  int Sum(int numberOne, int numberTwo) {
    int addition = numberOne + numberTwo;
    return addition;
  }

  int getTeste(){
    return teste;
  }



  @override
  Widget build(BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0x14005),
        shadowColor: Colors.transparent,
        title: new Center(child: new Text('             ', textAlign: TextAlign.center)),
      ),
      drawer: Drawer(
          child: new ListView(
            children: <Widget>[
              Container(
                  height: 1000,
                  color: Colors.green[600],
                  child: ListView(
                    children: <Widget> [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        color: Colors.green,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.cancel_outlined, color: Colors.white,))
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 300,
                        color: Colors.green[600],
                        child:      Container(
                          padding: EdgeInsets.all(2),
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.white, // border color
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2), // border width
                            child: Container( // or ClipRRect if you need to clip the content
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey, // inner circle color
                              ),
                              child: CircleAvatar(
                                //backgroundImage: NetworkImage('https://live.staticflickr.com/5452/8839033556_794140663e_b.jpg'),
                                backgroundImage: AssetImage('assets/images/Arvores.png'),
                                backgroundColor: Color(0xff014005),
                              ), // inner content
                            ),
                          ),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.center,
                          height: 80,
                          color: Colors.green,
                          child: Container(
                            color: Colors.white,
                            child: const TextField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                fillColor: Colors.white,
                                filled: true,
                                border: InputBorder.none,
                              ),
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 80,
                        color: Colors.green[600],
                        child: Container(
                            color: Colors.white,
                            child: Container(
                              color: Colors.white,
                              child: const TextField(
                                decoration: InputDecoration(
                                  labelText: 'Senha',
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(fontSize: 20),
                                obscureText: true,
                              ),
                            )
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 80,
                        color: Colors.green,
                        child: Row(
                          children: [
                            SizedBox(
                              child:                       ElevatedButton(
                                onPressed: (){
                                  if(mano == 3)
                                    mudaValor();
                                },
                                child: Text('Cadastro', style: TextStyle(fontSize: 20),),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff014005),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                  padding: EdgeInsets.all(20),
                                ),
                              ),
                              height: 80,
                              width: 125 + 16,
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              color: Colors.transparent,
                              width: 6,
                            ),

                            SizedBox(
                              child:                       ElevatedButton(
                                onPressed: (){},
                                child: Text('Login', style: TextStyle(fontSize: 20),),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff014005),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                  padding: EdgeInsets.all(20),
                                ),
                              ),
                              height: 80,
                              width: 125 + 16,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.green[600],
                        height: 80,
                        child: Stack(
                          children: [
                            SizedBox(
                              child:                       ElevatedButton(
                                onPressed: (){},
                                child: Text('Sugestões', style: TextStyle(fontSize: 20, color: Color(
                                    0xff6f6f6f)),),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff001a03),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                  padding: EdgeInsets.all(20),
                                ),
                              ),
                              height: 80,
                              width: 288,
                            ),
                            Center(
                              child:                       Icon(
                                Icons.lock,
                                color: Colors.white,
                                size: 30.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.green,
                        height: 80,
                        child: Stack(
                          children: [
                            SizedBox(
                              child:                       ElevatedButton(
                                onPressed: (){},
                                child: Text('Conquistas', style: TextStyle(fontSize: 20, color: Color(
                                    0xff6f6f6f)),),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff001a03),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                  padding: EdgeInsets.all(20),
                                ),
                              ),
                              height: 80,
                              width: 288,
                            ),
                            Center(
                              child:                       Icon(
                                Icons.lock,
                                color: Colors.white,
                                size: 30.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.green[600],
                        height: 80,
                        child:                      SizedBox(
                          child:                       ElevatedButton(
                            onPressed: (){},
                            child: Text('Opções', style: TextStyle(fontSize: 20, color: Colors.white),),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff014005),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                              padding: EdgeInsets.all(20),
                            ),
                          ),
                          height: 80,
                          width: 288,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.green[600],
                        height: 80,
                        child:                      SizedBox(
                          child:                       ElevatedButton(
                            onPressed: (){},
                            child: LoadingButton(),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff014005),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                              padding: EdgeInsets.all(20),
                            ),
                          ),
                          height: 80,
                          width: 288,
                        ),
                      ),
                    ],
                  )
              ),
              /*
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
           */
            ],
          )
      ),
      body: Stack(
        children: [
          VideoWidget(),
          Center(
              child: Container(
                padding: EdgeInsets.all(5),
                width: 448,
                height: 448,
                decoration: BoxDecoration(
                    color: Color(0xC3014005),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4)
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xff001000),
                            shape: BoxShape.circle
                        ),
                        child: GestureDetector(
                          child: Stack(
                            children: [
                              CircleAvatar(
                                //backgroundImage: NetworkImage('https://live.staticflickr.com/5452/8839033556_794140663e_b.jpg'),
                                backgroundImage: AssetImage('assets/images/Arvores.png'),
                                backgroundColor: Color(0xff014005),
                                radius: 55,
                                child: LoadingButton(rota: '1',),
                              ),
                              // IconButton(
                              //   icon: Image.asset('assets/images/Arvores.png'),
                              //   iconSize: 90,
                              //   onPressed: () {},
                              // ),
                            ],
                          )
                        ),
                      ),
                      top: 10,
                      left: 160,
                    ),
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xff001000),
                            shape: BoxShape.circle
                        ),
                        child: IconButton(
                          icon: Image.asset('assets/images/Medicina.png'),
                          iconSize: 90,
                          onPressed: () {},
                        ),
                      ),
                      top: 150,
                      right: 10,
                    ),
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xff001000),
                            shape: BoxShape.circle
                        ),
                        child: IconButton(
                          icon: Image.asset('assets/images/THUNDER.png'),
                          iconSize: 90,
                          onPressed: () {},
                        ),
                      ),
                      top: 305,
                      left: 160,
                    ),
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xff001000),
                            shape: BoxShape.circle
                        ),
                        child: IconButton(
                          icon: Image.asset('assets/images/DADOS.png'),
                          iconSize: 90,
                          onPressed: () {},
                        ),
                      ),
                      top: 150,
                      left: 10,
                    ),
                  ],
                ),
              ),
          ),
          if(teste == 1)
            Align(
              alignment: Alignment.bottomCenter,
              child:             Container(
                padding: EdgeInsets.all(5),
                width: 448,
                height: 240,
                decoration: BoxDecoration(
                    color: Color(0xC3014005),
                    border: Border.all(color: Colors.white, width: 4)
                ),
              ),
            ),
          Column(
            children: [
              Container(
                height: 30,
              ),
              Center(
                  child: Image.asset('assets/images/Logo.png', height: 150,)
              )
            ],
          ),
          if(teste == 1)
            Container()
          else
            Align(alignment: Alignment.bottomCenter, child: Container(
              child: Text('Boa noite'),
              color: Colors.red,
            ),)
        ],
        // child: CustomPaint(
        //   size: Size(400, 400),
        //   painter: MyPainter(),
        // )
      ),
    );
  }
}

class LoadingButton extends StatefulWidget {
  var rota;
  LoadingButton({Key? mykey, this.rota}) : super(key: mykey);

  @override
  LoadingButtonState createState() => LoadingButtonState();
}

class LoadingButtonState extends State<LoadingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;


  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    controller.addListener(() {
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => controller.forward(),
      onTapUp: (_) {
        if (controller.status == AnimationStatus.forward) {
          controller.reverse();
        }
        else {
          if(controller.isCompleted == true){
            if('${widget.rota}' == '1'){
              if(mano==2)
                mano=3;
              else
                mano=2;
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Menu_Floresta()));
              controller.reset();
            }
          }
        }
      },
    );
  }
}

// class CircularMenu extends StatefulWidget {
//
//   var img1, img2, img3, img4;
//   CircularMenu({Key? mykey, this.img1, this.img2, this.img3, this.img4}) : super(key: mykey);
//
//
//   @override
//   _CircularMenuState createState() => _CircularMenuState();
//
// }
//
// class _CircularMenuState extends State<CircularMenu> {
//   @override
//
//   Widget build(BuildContext context){
//
//   }
// }
