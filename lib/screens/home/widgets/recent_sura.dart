import 'package:flutter/material.dart';
import 'package:islamy_app/models/sura_model.dart';

class RecentSura extends StatelessWidget {
  const RecentSura({super.key, required this.suraModel});

  final SuraModel suraModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 150,
      width: 283,
      decoration: BoxDecoration(
        color: Color(0xffE2BE7F),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.only(top: 12, left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                suraModel.enName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),

              Text(
                suraModel.arName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(height: 10),
              Text(
                '${suraModel.verses} Verses',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),

          Expanded(child: SizedBox(
              child: Image.asset('assets/images/quran_sura.png'))),
        ],
      ),
    );
  }
}
