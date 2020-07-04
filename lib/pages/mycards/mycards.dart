import 'package:flutter/material.dart';

import '../../bloc.navigation_bloc/navigation_bloc.dart';
import 'card_background.dart';
import 'card_company.dart';
import 'card_network_type.dart';
import 'credit_card_slider.dart';
import 'credit_card_widget.dart';
import 'validity.dart';

class MyCardsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageStateCreate(),
    );
  }
}

Color kPink = Color(0xFFEE4CBF);
Color kRed = Color(0xFFFA3754);
Color kBlue = Color(0xFF4AA3F2);
Color kPurple = Color(0xFFAF92FB);

class _HomePageState extends State<HomePageStateCreate> {
  List<CreditCard> _creditCards = [];

  @override
  void initState() {
    super.initState();

    _creditCards = [
      CreditCard(
        cardBackground: SolidColorCardBackground(Colors.black.withOpacity(0.6)),
        cardNetworkType: CardNetworkType.visaBasic,
        cardHolderName: 'Shourya YADAV',
        cardNumber: '1234 1234 1234 1234',
        company: CardCompany.yesBank,
        validity: Validity(
          validThruMonth: 1,
          validThruYear: 21,
          validFromMonth: 1,
          validFromYear: 16,
        ),
      ),
      CreditCard(
        cardBackground: SolidColorCardBackground(kRed.withOpacity(0.4)),
        cardNetworkType: CardNetworkType.mastercard,
        cardHolderName: 'Arjun RAO',
        cardNumber: '2434 2434 **** ****',
        company: CardCompany.kotak,
        validity: Validity(
          validThruMonth: 1,
          validThruYear: 21,
        ),
      ),
      CreditCard(
        cardBackground: GradientCardBackground(LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [kBlue, kPurple],
          stops: [0.3, 0.95],
        )),
        cardNetworkType: CardNetworkType.mastercard,
        cardHolderName: 'HAN Gary',
        cardNumber: '4567',
        company: CardCompany.boc,
        validity: Validity(
          validThruMonth: 2,
          validThruYear: 2021,
        ),
      ),
      CreditCard(
        cardBackground: SolidColorCardBackground(Colors.green.withOpacity(0.4)),
        cardNetworkType: CardNetworkType.mastercard,
        cardHolderName: 'Carrie LAM',
        cardNumber: '2434 2434 **** ****',
        company: CardCompany.virgin,
        validity: Validity(
          validThruMonth: 1,
          validThruYear: 20,
        ),
        numberColor: Colors.black,
        validityColor: Colors.black,
        cardHolderNameColor: Colors.black,
      ),
      CreditCard(
        cardNetworkType: CardNetworkType.rupay,
        cardHolderName: 'THE BORING DEVELOPER',
        cardNumber: '2434 2434 **** ****',
        company: CardCompany.boc,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar : PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: AppBar(

          actions: <Widget>[
            IconButton(
//              onPressed: (){
//                BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.SettingsClickedEvent);
//              },
              icon: Icon(Icons.settings),
              color: Colors.black,
              iconSize: 35,
            ),

          ],
          title : Text(
            'Flux.',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.black,
              fontFamily: 'Roboto',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: Center(
        child: CreditCardSlider(
          _creditCards,
          percentOfUpperCard: 3.14/2,
          onCardClicked: (index) {
            print('Clicked at index: $index');
          },
        ),

      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text('Add New Card'),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class HomePageStateCreate extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

