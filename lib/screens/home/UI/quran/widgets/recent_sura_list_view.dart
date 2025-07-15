import 'package:flutter/material.dart';
import 'package:islamy_app/models/sura_model.dart';

import '../sura_details.dart';
import 'recent_sura.dart';

class RecentSuraListView extends StatelessWidget {
  const RecentSuraListView({super.key, required this.suraModel});

  // final SuraModel suraModel;
  final List<SuraModel> suraModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              SuraDetails.id,
              arguments: suraModel[index],
            );
          },
          child: RecentSura(suraModel: suraModel[index]),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: suraModel.length,
      ),
    );
  }
}
