import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int? minusFuntion(
  int? num1,
  int? num2,
) {
  if (num1 != null && num2 != null) {
    return num1 - num2;
  } else {
    return 0;
  }
}

bool? equalFuntion(
  bool? value1,
  bool? value2,
) {
  if (value1 == value2) {
    return true;
  } else {
    return false;
  }
}

bool? genderFuntion1(
  String? myGender,
  bool? ifMan,
  bool? ifWoman,
) {
  if (myGender != null) {
    if (myGender == "man") {
      if (ifMan == true) {
        return true;
      }
    } else {
      if (ifWoman == true) {
        return true;
      }
    }
  }
  return false;
}

bool? genderFuntion2(
  int? manNum,
  int? womanNum,
  bool? ifMan,
  bool? ifWoman,
) {
  if (ifMan == false) {
    if (manNum != 0) {
      return false;
    }
  } else if (ifWoman == false) {
    if (womanNum != 0) {
      return false;
    }
  }
  return true;
}

bool? bothTrueFuntion(
  bool? bool1,
  bool? bool2,
) {
  if (bool1 == true && bool2 == true) {
    return true;
  } else {
    return false;
  }
}

bool? passengerNumFuntion(
  int? maxNum,
  int? curNum,
) {
  if (maxNum == null || curNum == null) {
    return false;
  }
  if (maxNum > curNum) {
    return true;
  } else {
    return false;
  }
}
