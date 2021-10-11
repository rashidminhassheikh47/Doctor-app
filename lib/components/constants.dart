import 'package:flutter/material.dart';

const kSlideBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(20),
    topLeft: Radius.circular(20),
  ),
);

const kPrimaryColor = Color(0xff00416A);

const kSmallRoundedBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(50)),
  boxShadow: [
    BoxShadow(
      color: Colors.grey,
      blurRadius: 0.2,
      spreadRadius: 0.1,
      offset: Offset(0, 3),
    )
  ],
  color: Colors.white,
);

const inProgressColor = Colors.black87;

const todoColor = Color(0xffffff);

const kMontserratRegularFont14Black = TextStyle(
  fontSize: 14,
  fontFamily: 'montserrat_regular',
);

const kBigContainerBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(20),
    topLeft: Radius.circular(20),
  ),
);