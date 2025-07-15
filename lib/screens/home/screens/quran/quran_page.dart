import 'package:flutter/material.dart';
import 'package:islamy_app/core/constants.dart';
import 'package:islamy_app/core/services/local_storage.dart';
import 'package:islamy_app/screens/home/screens/quran/sura_details.dart';
import 'package:islamy_app/screens/home/screens/quran/widgets/recent_sura_list_view.dart';
import 'package:islamy_app/screens/home/screens/quran/widgets/sura_list_view.dart';

import '../../../../models/sura_model.dart';
import '../../widgets/custom_header.dart';
import '../../widgets/custom_text_field.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadRecentSuraData();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          CustomHeader(),
          SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomTextField(),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  'Most Recently',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          recentSuraList.isEmpty ? SizedBox() :
          RecentSuraListView(
            suraModel: recentSuraList,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text(
                  'Suras List',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SuraListView(
            onSuraTapped: onItemTapped,
          ),
        ],
      ),
    );
  }

  List<String>recentSuraIndexList = [];

  List<SuraModel>recentSuraList = [];

  onItemTapped(int index) {
    setState(() {
      _cashingSuraData(index);
      Navigator.pushNamed(
          context, SuraDetails.id, arguments: Constants.suraList[index]);
    });
  }

  _cashingSuraData(int index) async {
    String stringIndex = index.toString();
    if (recentSuraIndexList.contains(stringIndex)) {
      return;
    }
    if (recentSuraIndexList.length == 5) recentSuraIndexList.removeLast();
    recentSuraIndexList.insert(0, stringIndex);
    LocalStorage.setStringList('recentSuraIndexList', recentSuraIndexList);
    recentSuraList.add(Constants.suraList[index]);
    loadRecentSuraData();
    setState(() {

    });
  }

  loadRecentSuraData() async {
    recentSuraIndexList = [];
    recentSuraList = [];
    recentSuraIndexList =
        LocalStorage.getStringList('recentSuraIndexList') ?? [];
    recentSuraList =
        recentSuraIndexList
            .map((e) => Constants.suraList[int.parse(e)])
            .toList();

  }
}
