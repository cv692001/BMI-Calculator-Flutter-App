import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const double Bottom_Container_height = 80;
const actice_card_color = Color(0xFF1D1E33);
const deactice_card_color = Color(0xFF111328);
const bottom_container_color = Color(0xFFEB1555);
enum Gender { Male , Female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  // ignore: non_constant_identifier_names
  Gender selected_gender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                        onPress: () {
                          setState(() {
                             selected_gender = Gender.Male;
                          },);
                        },
                        colour: selected_gender == Gender.Male ? actice_card_color : deactice_card_color,
                        cardchild: IconContent( icon: FontAwesomeIcons.mars, label: 'MALE',),
                      ),
                  ),
                  Expanded(
                    child: ReusableCard(
                        onPress: () {
                          setState(() {
                             selected_gender = Gender.Female;
                          },);
                        },
                        colour: selected_gender == Gender.Female ? actice_card_color : deactice_card_color,
                         cardchild: IconContent( icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                        
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: actice_card_color,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,

                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kstringtext,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: knumber_text_style,
                        ),
                        Text(
                          'cm',
                          style: kstringtext,
                        )
                      ],
                    ),
                    SliderTheme(

                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor:  Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape( enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                      ),
                                          child: Slider(
                        value: height.toDouble(), 
                        min: 120,
                        max: 220,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newvalue){
                          setState(() {
                            height = newvalue.round(),
                          });
                        } 
                        ),
                    )

                  ],
                ),
               
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
        ),);
  }
}

