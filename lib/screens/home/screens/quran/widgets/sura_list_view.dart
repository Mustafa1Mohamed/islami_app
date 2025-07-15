import 'package:flutter/cupertino.dart';

import '../../../../../core/constants.dart';
import '../../../widgets/custom_sura.dart';

class SuraListView extends StatelessWidget {
  const SuraListView({super.key, required this.onSuraTapped});

  final void Function(int)? onSuraTapped;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => CustomSura(
          suraModel: Constants.suraList[index],
          onSuraTap: () => onSuraTapped!(index),
        ),
        separatorBuilder: (context, index) => SizedBox(height: 20),
        itemCount: Constants.suraList.length,
      ),
    );
  }
}
