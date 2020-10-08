import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const double Bottom_Container_height = 80;
const actice_card_color = Color(0xFF1D1E33);
const deactice_card_color = Color(0xFF111328);
const bottom_container_color = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color malecardcolor = deactice_card_color;
  Color femalecardcolor = deactice_card_color;

  void updatecolor(int gender){

    if(gender == 1){
      if(malecardcolor == deactice_card_color){
        malecardcolor = actice_card_color;
        femalecardcolor = deactice_card_color;
      } else {
        malecardcolor = deactice_card_color;
      }
    }

    if(gender == 2){
      if(femalecardcolor == deactice_card_color){
        femalecardcolor = actice_card_color;
        malecardcolor = deactice_card_color;
      } else {
        femalecardcolor = deactice_card_color;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    updatecolor(1);
                                  },
                                  );
                                }, 
                                          child: ReusableCard(
                        colour: malecardcolor,
                        cardchild: IconContent( icon: FontAwesomeIcons.mars, label: 'MALE',),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                                onTap: () {
                                  updatecolor(2);
                                },
                                          child: ReusableCard(
                        colour: femalecardcolor,
                         cardchild: IconContent( icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                        
                  ),
                    )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: actice_card_color,
               
            ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(colour: actice_card_color,
                  ),
                  ),
                  Expanded(
                    child: ReusableCard(colour: actice_card_color,
                  ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottom_container_color,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: Bottom_Container_height,
            )
          ],
        ));
  }
}

