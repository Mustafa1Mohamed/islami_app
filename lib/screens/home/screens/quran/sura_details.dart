import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/models/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String id = '/suraDetails';
   const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  @override
  Widget build(BuildContext context) {
    final data=ModalRoute.of(context)!.settings.arguments as SuraModel;
    if(verses.isEmpty)
    {
      loadSuraData(data.suraNumber);
    }
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffE2BE7F)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          data.enName,
          style: TextStyle(
            color: Color(0xffE2BE7F),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 18,
            child: Image.asset('assets/images/left_cor.png'),
          ),
          Positioned(
            top: 30,
            right: 18,
            child: RotatedBox(
              quarterTurns: 1,
              child: Image.asset('assets/images/left_cor.png'),
            ),
          ),
          Positioned(
            top: 60,
            left: 180,
            child: Text(
              data.arName,
              style: TextStyle(
                color: Color(0xffE2BE7F),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned.fill(
            top: 140,
            // bottom: 50,
            child: ListView.separated(
              itemBuilder: (context,index){
                return Text(
                  '(${index+1})${verses[index]}',
                  style: TextStyle(
                    color: Color(0xffE2BE7F),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                );
              },
              itemCount: verses.length,
              separatorBuilder: (context,index){
                return SizedBox(height: 10,);
              },
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/images/bottom_mosqe.png',
              fit: BoxFit.cover,
              width: 410,
            ),
          ),
        ],
      ),
    );
  }

  List<String>verses=[];

  Future<void>loadSuraData(int index)async{
   String content= await rootBundle.loadString('assets/files/$index.txt');
    verses=content.split('\n');
    setState(() {

    });
  }
}
