import 'package:flutter/material.dart';
import 'package:islamy_app/models/sura_model.dart';

class CustomSura extends StatelessWidget {
  const CustomSura({
    super.key,
    required this.suraModel,
    required this.onSuraTap,
  });

  final VoidCallback onSuraTap;
  final SuraModel suraModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSuraTap,
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: Column(

          children: [
            Expanded(
              flex: 200,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/sura_icon.png'),
                      ),
                    ),
                    child: Text(
                      suraModel.suraNumber.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        suraModel.enName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '${suraModel.verses} verses',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    suraModel.arName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 50,right: 40),
                child: Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
