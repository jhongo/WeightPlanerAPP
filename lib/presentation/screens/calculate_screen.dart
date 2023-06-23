import 'package:flutter/material.dart';

class CalculateScreen extends StatelessWidget {
   
  const CalculateScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xFF210535),
      body: Stack(
        children: [
          CustomHeader()
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
      ),

    );
  }
}

class HeaderPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
  
  final paint = Paint();
  paint.color = Color(0xFFfefae0);
  paint.style = PaintingStyle.stroke;
  paint.strokeWidth = 5;

  final path = Path();
  // path.lin
    
canvas.drawPath(path, paint);
}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}


// HEX CODES: 
// #210535
// #6768ab
// #7b337d
// #c874b2
// #f5d5e0