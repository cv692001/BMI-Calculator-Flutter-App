import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Bottom_button.dart';

class result_page extends StatelessWidget {

  result_page( { @required this.Interpretation, @required this.bmiresult , @required this.bmitext })
;
  final String bmiresult;
  final String bmitext;
  final String Interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator')
      ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            child: Text('Your Results',
            style: ktitletext,),
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,

          ) 
        ),
        Expanded(
          flex: 5,
          child: ReusableCard(
            colour: actice_card_color,
            cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Text(bmitext.toUpperCase(),
                  style: kresulttext,),
                  Text(
                    bmiresult,
                    style: kBMIresulttext,
                  ),
                  Text(
                    Interpretation.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: kstringtext,
                  ),
                  BottomButton(Bottomtitle: 'Re-Calculate', onPress: () {
                    Navigator.pop(context);
                  })
              ],
            ),
            ),
        )
      ],
      ),
    )
  }
}