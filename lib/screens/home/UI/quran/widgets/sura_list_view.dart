import 'package:flutter/cupertino.dart';
import 'package:islamy_app/models/sura_model.dart';

import 'custom_sura.dart';

class SuraListView extends StatelessWidget {
  const SuraListView(
      {super.key, required this.onSuraTapped, required this.suraList});

  final void Function(int)? onSuraTapped;
  final List<SuraModel>suraList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => CustomSura(
          suraModel: suraList[index],
          onSuraTap: () => onSuraTapped!(suraList[index].suraNumber - 1),
        ),
        separatorBuilder: (context, index) => SizedBox(height: 20),
        itemCount: suraList.length,
      ),
    );
  }
}
