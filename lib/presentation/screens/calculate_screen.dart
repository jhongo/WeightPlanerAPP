import 'package:flutter/material.dart';

class CalculateScreen extends StatelessWidget {
   
  const CalculateScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      backgroundColor: Color(0xFF003153),
      body: Stack(
        children: [
          CustomHeader(),
          
          // Image.asset('assets/imgs/astronaut-in-space.png')
        ],
      )
    );
  }
}

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: CustomPaint(
        painter:HeaderPainter(),
        child: const SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text('Universe App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              fontFamily: 'SpaceAge',
              color:Color(0xFFf4f9e9)
            ), ),
          )
          
          ) ,
      ),

    );
  }
}

class HeaderPainter extends CustomPainter{

  
  @override
  void paint(Canvas canvas, Size size) {

  final Rect rect = Rect.fromCircle(
    center:const Offset(10.0, 30), 
    radius: 200
    );

  const Gradient gradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors:[
      Color(0xFF243748),
      Color(0xFF557c93),
    ]);

  final paint = Paint()..shader = gradient.createShader(rect);
  paint.style = PaintingStyle.fill;

  final path = Path();
  path.lineTo(0, size.height * 0.1); 
  path.quadraticBezierTo(size.width * 0.35, size.height * 0.23 ,size.width * 0.95 , size.height * 0.1 );
  path.lineTo(size.width * 0.95, size.height * 0.96);
  path.quadraticBezierTo(size.width * 0.2, size.height , 0, size.height * 0.8);
  path.lineTo(0, size.height);
  path.lineTo(size.width, size.height);
  path.lineTo(size.width, 0);
  path.lineTo(0, 0);
    
canvas.drawPath(path, paint);
}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate){
    return true;
  }
}


// HEX CODES: 
// #210535
// #6768ab
// #7b337d
// #c874b2
// #f5d5e0