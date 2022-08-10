import 'package:flutter/material.dart';

class ResidentBoxShadow{

  static final extraSmall = BoxShadow(
    offset:  const Offset(0,4),
    blurRadius: 8,
    color: Colors.black.withOpacity(0.1)
  );
  static final small = BoxShadow(
    offset:  const Offset(0,6),
    blurRadius: 12,
    color: Colors.black.withOpacity(0.11)
  );
  static final medium = BoxShadow(
    offset:  const Offset(0,9),
    blurRadius: 18,
    color: Colors.black.withOpacity(0.15)
  );
  static final large = BoxShadow(
    offset:  const Offset(0,13),
    blurRadius: 37,
    color: Colors.black.withOpacity(0.21)
  );
  static final extraLarge = BoxShadow(
    offset:  const Offset(0,30),
    blurRadius: 56,
    color: Colors.black.withOpacity(0.29)
  );
  static final cardShadow = BoxShadow(
    offset:  const Offset(0,4),
    blurRadius: 18,
    color: Colors.black.withOpacity(0.15)
  );

}