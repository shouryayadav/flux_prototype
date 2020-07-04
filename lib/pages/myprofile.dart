import 'package:flutter/material.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';
import '../sidebar/menu_item.dart';

class MyProfilePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar : PreferredSize(
        preferredSize: Size.fromHeight(75.0),
      child: AppBar(

        actions: <Widget>[
          IconButton(
            onPressed: (){
              BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.SettingsClickedEvent);
            },
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
      body : Column(
        children: <Widget>[
          Container(
            width: 175,
            height: 175,
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(110, 30, 80, 30),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage('assets/dp.jpeg'),
                fit: BoxFit.cover,
              ),
            ) ,
          ),

          Text(
            'SHOURYA YADAV',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              color: Colors.black,
              fontFamily: 'Roboto',
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  '@shouryay',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              VerticalDivider(color: Colors.black,
                thickness: 2, width: 10,
                indent: 25,
                endIndent: 25,),
              Container(
                child: Text(
                  '28,000 points',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal:10.0),
            child:Container(
              height:1.0,
              width:130.0,
              margin: EdgeInsets.fromLTRB(100, 0, 100, 75),
              color:Colors.black,),),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Credit Cards Linked',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
          ),

          Padding(
            padding:EdgeInsets.symmetric(),
            child:Container(
              height:5.0,
              width:250.0,
              color:Colors.purple[900],),),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Bills Due',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
          ),

          Padding(
            padding:EdgeInsets.symmetric(),
            child:Container(
              height:5.0,
              width:250.0,
              color:Colors.purple[900],),),

          FlatButton(
            onPressed: () {},
            child: Text(
              'Saved Coupons',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
          ),

          Padding(
            padding:EdgeInsets.symmetric(),
            child:Container(
              height:5.0,
              width:250.0,
              color:Colors.purple[900],),),


        ],
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {},
//        child: Text('Click'),
//        backgroundColor: Colors.black,
//      ),
    );
  }
}
