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

int calculateAge(DateTime birthDate) {
  DateTime today = DateTime.now();
  int age = today.year - birthDate.year;
  if (today.month < birthDate.month ||
      (today.month == birthDate.month && today.day < birthDate.day)) {
    age--;
  }

  return age;
}

List<String>? getDiabetesLabelForImpactGraph(
  bool isNegative,
  PredictionDiabetesRecord prediction,
) {
  int multiplier = 1;
  if (isNegative) multiplier = -1;
  List<String> myList = [];
  if (multiplier * prediction.age! > 0) {
    myList.add("Age");
  }
  if (multiplier * prediction.anyHealthcare! > 0) {
    myList.add("AnyHealthcare");
  }
  if (multiplier * prediction.bmi! > 0) {
    myList.add("BMI");
  }
  if (multiplier * prediction.cholCheck! > 0) {
    myList.add("CholCheck");
  }
  if (multiplier * prediction.diffWalk! > 0) {
    myList.add("DiffWalk");
  }
  if (multiplier * prediction.fruits! > 0) {
    myList.add("Fruits");
  }
  if (multiplier * prediction.genHlth! > 0) {
    myList.add("GenHlth");
  }
  if (multiplier * prediction.highBP! > 0) {
    myList.add("HighBP");
  }
  if (multiplier * prediction.highChol! > 0) {
    myList.add("HighChol");
  }
  if (multiplier * prediction.hvyAlcoholConsump! > 0) {
    myList.add("HvyAlcoholConsump");
  }
  if (multiplier * prediction.mentHlth! > 0) {
    myList.add("MentHlth");
  }
  if (multiplier * prediction.noDocbcCost! > 0) {
    myList.add("NoDocbcCost");
  }
  if (multiplier * prediction.physActivity! > 0) {
    myList.add("PhysActivity");
  }
  if (multiplier * prediction.physHlth! > 0) {
    myList.add("PhysHlth");
  }
  if (multiplier * prediction.sex! > 0) {
    myList.add("Sex");
  }
  if (multiplier * prediction.smoker! > 0) {
    myList.add("Smoker");
  }
  if (multiplier * prediction.stroke! > 0) {
    myList.add("Stoke");
  }
  if (multiplier * prediction.veggies! > 0) {
    myList.add("Veggies");
  }

  return myList;
}

List<String>? getHeartLabelForImpactGraph(
  bool isNegative,
  PredictionHeartRecord prediction,
) {
  int multiplier = 1;
  if (isNegative) multiplier = -1;
  List<String> myList = [];
  if (multiplier * prediction.age! > 0) {
    myList.add("Age");
  }
  if (multiplier * prediction.anyHealthcare! > 0) {
    myList.add("AnyHealthcare");
  }
  if (multiplier * prediction.bmi! > 0) {
    myList.add("BMI");
  }
  if (multiplier * prediction.cholCheck! > 0) {
    myList.add("CholCheck");
  }
  if (multiplier * prediction.diffWalk! > 0) {
    myList.add("DiffWalk");
  }
  if (multiplier * prediction.fruits! > 0) {
    myList.add("Fruits");
  }
  if (multiplier * prediction.genHlth! > 0) {
    myList.add("GenHlth");
  }
  if (multiplier * prediction.highBP! > 0) {
    myList.add("HighBP");
  }
  if (multiplier * prediction.highChol! > 0) {
    myList.add("HighChol");
  }
  if (multiplier * prediction.hvyAlcoholConsump! > 0) {
    myList.add("HvyAlcoholConsump");
  }
  if (multiplier * prediction.mentHlth! > 0) {
    myList.add("MentHlth");
  }
  if (multiplier * prediction.noDocbcCost! > 0) {
    myList.add("NoDocbcCost");
  }
  if (multiplier * prediction.physActivity! > 0) {
    myList.add("PhysActivity");
  }
  if (multiplier * prediction.physHlth! > 0) {
    myList.add("PhysHlth");
  }
  if (multiplier * prediction.sex! > 0) {
    myList.add("Sex");
  }
  if (multiplier * prediction.smoker! > 0) {
    myList.add("Smoker");
  }
  if (multiplier * prediction.stroke! > 0) {
    myList.add("Stoke");
  }
  if (multiplier * prediction.veggies! > 0) {
    myList.add("Veggies");
  }

  return myList;
}

List<double>? getHeartValueForImpactGraph(
  bool isNegative,
  PredictionHeartRecord prediction,
) {
  int multiplier = 1;
  if (isNegative) multiplier = -1;
  List<double> results = [];
  if (multiplier * prediction.age! > 0) {
    results.add(multiplier * prediction.age! * 100);
  }
  if (multiplier * prediction.anyHealthcare! > 0) {
    results.add(multiplier * prediction.anyHealthcare! * 100);
  }
  if (multiplier * prediction.bmi! > 0) {
    results.add(multiplier * prediction.bmi! * 100);
  }
  if (multiplier * prediction.cholCheck! > 0) {
    results.add(multiplier * prediction.cholCheck! * 100);
  }
  if (multiplier * prediction.diffWalk! > 0) {
    results.add(multiplier * prediction.diffWalk! * 100);
  }
  if (multiplier * prediction.fruits! > 0) {
    results.add(multiplier * prediction.fruits! * 100);
  }
  if (multiplier * prediction.genHlth! > 0) {
    results.add(multiplier * prediction.genHlth! * 100);
  }
  if (multiplier * prediction.highBP! > 0) {
    results.add(multiplier * prediction.highBP! * 100);
  }
  if (multiplier * prediction.highChol! > 0) {
    results.add(multiplier * prediction.highChol! * 100);
  }
  if (multiplier * prediction.hvyAlcoholConsump! > 0) {
    results.add(multiplier * prediction.hvyAlcoholConsump! * 100);
  }
  if (multiplier * prediction.mentHlth! > 0) {
    results.add(multiplier * prediction.mentHlth! * 100);
  }
  if (multiplier * prediction.noDocbcCost! > 0) {
    results.add(multiplier * prediction.noDocbcCost! * 100);
  }
  if (multiplier * prediction.physActivity! > 0) {
    results.add(multiplier * prediction.physActivity! * 100);
  }
  if (multiplier * prediction.physHlth! > 0) {
    results.add(multiplier * prediction.physHlth! * 100);
  }
  if (multiplier * prediction.sex! > 0) {
    results.add(multiplier * prediction.sex! * 100);
  }
  if (multiplier * prediction.smoker! > 0) {
    results.add(multiplier * prediction.smoker! * 100);
  }
  if (multiplier * prediction.stroke! > 0) {
    results.add(multiplier * prediction.stroke! * 100);
  }
  if (multiplier * prediction.veggies! > 0) {
    results.add(multiplier * prediction.veggies! * 100);
  }
  return results;
}

List<double>? getDiabetesValueForImpactGraph(
  bool isNegative,
  PredictionDiabetesRecord prediction,
) {
  int multiplier = 1;
  if (isNegative) multiplier = -1;
  List<double> results = [];
  if (multiplier * prediction.age! > 0) {
    results.add(multiplier * prediction.age! * 100);
  }
  if (multiplier * prediction.anyHealthcare! > 0) {
    results.add(multiplier * prediction.anyHealthcare! * 100);
  }
  if (multiplier * prediction.bmi! > 0) {
    results.add(multiplier * prediction.bmi! * 100);
  }
  if (multiplier * prediction.cholCheck! > 0) {
    results.add(multiplier * prediction.cholCheck! * 100);
  }
  if (multiplier * prediction.diffWalk! > 0) {
    results.add(multiplier * prediction.diffWalk! * 100);
  }
  if (multiplier * prediction.fruits! > 0) {
    results.add(multiplier * prediction.fruits! * 100);
  }
  if (multiplier * prediction.genHlth! > 0) {
    results.add(multiplier * prediction.genHlth! * 100);
  }
  if (multiplier * prediction.highBP! > 0) {
    results.add(multiplier * prediction.highBP! * 100);
  }
  if (multiplier * prediction.highChol! > 0) {
    results.add(multiplier * prediction.highChol! * 100);
  }
  if (multiplier * prediction.hvyAlcoholConsump! > 0) {
    results.add(multiplier * prediction.hvyAlcoholConsump! * 100);
  }
  if (multiplier * prediction.mentHlth! > 0) {
    results.add(multiplier * prediction.mentHlth! * 100);
  }
  if (multiplier * prediction.noDocbcCost! > 0) {
    results.add(multiplier * prediction.noDocbcCost! * 100);
  }
  if (multiplier * prediction.physActivity! > 0) {
    results.add(multiplier * prediction.physActivity! * 100);
  }
  if (multiplier * prediction.physHlth! > 0) {
    results.add(multiplier * prediction.physHlth! * 100);
  }
  if (multiplier * prediction.sex! > 0) {
    results.add(multiplier * prediction.sex! * 100);
  }
  if (multiplier * prediction.smoker! > 0) {
    results.add(multiplier * prediction.smoker! * 100);
  }
  if (multiplier * prediction.stroke! > 0) {
    results.add(multiplier * prediction.stroke! * 100);
  }
  if (multiplier * prediction.veggies! > 0) {
    results.add(multiplier * prediction.veggies! * 100);
  }
  return results;
}

List<String>? getExpenseLabelForImpactGraph(
  bool isNegative,
  PredictionExpenseRecord prediction,
) {
  int multiplier = 1;
  if (isNegative) multiplier = -1;
  List<String> myList = [];
  if (multiplier * prediction.age! > 0) {
    myList.add("Age");
  }
  if (multiplier * prediction.bmi! > 0) {
    myList.add("BMI");
  }
  if (multiplier * prediction.steps! > 0) {
    myList.add("Steps");
  }
  if (multiplier * prediction.children! > 0) {
    myList.add("Children");
  }
  if (multiplier * prediction.sex! > 0) {
    myList.add("Sex");
  }
  if (multiplier * prediction.smoker! > 0) {
    myList.add("Smoker");
  }

  return myList;
}

List<double>? getExpenseValueForImpactGraph(
  bool isNegative,
  PredictionExpenseRecord prediction,
) {
  int multiplier = 1;
  if (isNegative) multiplier = -1;
  List<double> results = [];
  if (multiplier * prediction.age! > 0) {
    results.add(multiplier * prediction.age! * 100);
  }
  if (multiplier * prediction.bmi! > 0) {
    results.add(multiplier * prediction.bmi! * 100);
  }
  if (multiplier * prediction.steps! > 0) {
    results.add(multiplier * prediction.steps! * 100);
  }
  if (multiplier * prediction.children! > 0) {
    results.add(multiplier * prediction.children! * 100);
  }
  if (multiplier * prediction.sex! > 0) {
    results.add(multiplier * prediction.sex! * 100);
  }
  if (multiplier * prediction.smoker! > 0) {
    results.add(multiplier * prediction.smoker! * 100);
  }

  return results;
}

List<int> getLevelCountbyDepartment(
  List<ExpenseSummaryRecord> summarydocs,
  int level,
) {
  // get list of count by given level from summary docs
  List<int> countList = [];
  for (var i = 0; i < summarydocs.length; i++) {
    if (summarydocs[i].level == level) {
      countList.add(summarydocs[i].count!);
    }
  }
  return countList;
}

List<String> getListofDepartments(List<ExpenseSummaryRecord> summarydocs) {
  //  get list of uniqe department from summarydocs
  List<String> uniqueDepartments = [];
  for (var i = 0; i < summarydocs.length; i++) {
    if (!uniqueDepartments.contains(summarydocs[i].department)) {
      uniqueDepartments.add(summarydocs[i].department ?? "");
    }
  }
  return uniqueDepartments;
}

String getLowestExpense(List<ExpenseSummaryRecord> summarydocs) {
  // find unique department from summarydocs and put it in hashmap
  Map<String, int> departmentCount = {};
  for (var doc in summarydocs) {
    if (doc.department != null) {
      if (departmentCount.containsKey(doc.department)) {
        String departmentStr = doc.department ?? "";
        departmentCount[departmentStr] =
            departmentCount[departmentStr]! + (doc.count! * doc.level!);
      } else {
        String departmentStr = doc.department ?? "";
        departmentCount[departmentStr] = (doc.count! * doc.level!);
      }
    }
  }
  int min = 9999999;
  String topDepartment = '';
  for (var key in departmentCount.keys) {
    if (departmentCount[key]! < min) {
      min = departmentCount[key]!;
      topDepartment = key;
    }
  }
  return topDepartment;
}

double getNCDDiabetesAverageRisk(List<SummaryDiabetesRecord> summarydocs) {
  // find average of totalrisk from summarydocs
  double totalRisk = 0.0;
  int count = 0;
  for (var summarydoc in summarydocs) {
    if (summarydoc.totalRisk != null) {
      totalRisk += summarydoc.totalRisk ?? 0.0;
      count += summarydoc.evaluated ?? 0;
    }
  }
  return (totalRisk / count) * 100;
}

int getNCDDiabetesTotalCount(List<SummaryDiabetesRecord> summarydocs) {
  // find total count from summarydocs
  int totalCount = 0;
  for (var i = 0; i < summarydocs.length; i++) {
    totalCount += summarydocs[i].count ?? 0;
  }
  return totalCount;
}

List<int> getNCDDiabtesRiskbyDepartment(
    List<SummaryDiabetesRecord> summarydocs) {
  // return list of count from summarydocs
  List<int> ncdRiskbyDepartment = [];
  for (var i = 0; i < summarydocs.length; i++) {
    ncdRiskbyDepartment.add(summarydocs[i].count!);
  }
  return ncdRiskbyDepartment;
}

double getNCDHeartAverageRisk(List<SummaryHeartRecord> summarydocs) {
  // find average of totalrisk from summarydocs
  double totalRisk = 0.0;
  int count = 0;
  for (var summarydoc in summarydocs) {
    if (summarydoc.totalRisk != null) {
      totalRisk += summarydoc.totalRisk ?? 0.0;
      count += summarydoc.evaluated ?? 0;
    }
  }
  return (totalRisk / count) * 100;
}

List<int> getNCDHeartRiskbyDepartment(List<SummaryHeartRecord> summarydocs) {
  // return list of count from summarydocs
  List<int> ncdHeartRiskbyDepartment = [];
  for (var i = 0; i < summarydocs.length; i++) {
    ncdHeartRiskbyDepartment.add(summarydocs[i].count!);
  }
  return ncdHeartRiskbyDepartment;
}

int getNCDHeartTotalCount(List<SummaryHeartRecord> summarydocs) {
  // find total count from summarydocs
  int totalCount = 0;
  for (var i = 0; i < summarydocs.length; i++) {
    totalCount += summarydocs[i].count ?? 0;
  }
  return totalCount;
}

List<String> getNCDListofDepartments(List<SummaryHeartRecord> summarydocs) {
  //  get list of uniqe department from summarydocs
  List<String> uniqueDepartments = [];
  for (var i = 0; i < summarydocs.length; i++) {
    if (!uniqueDepartments.contains(summarydocs[i].department)) {
      uniqueDepartments.add(summarydocs[i].department ?? "");
    }
  }
  return uniqueDepartments;
}

String getTopDiabetesRisk(List<SummaryDiabetesRecord> summarydocs) {
  // find department that has maximum average risk calculated by totalrisk divided by evaluated
  if (summarydocs.isEmpty) {
    return '';
  }
  double max = 0;
  String? top = null;
  for (var doc in summarydocs) {
    if (doc.evaluated == 0) {
      continue;
    }
    double avg = doc.totalRisk! / doc.evaluated!;
    if (avg > max) {
      max = avg;
      top = doc.department;
    }
  }
  return top ?? '';
}

String getTopExpense(List<ExpenseSummaryRecord> summarydocs) {
  // find unique department from summarydocs and put it in hashmap
  Map<String, int> departmentCount = {};
  for (var doc in summarydocs) {
    if (doc.department != null) {
      if (departmentCount.containsKey(doc.department)) {
        String departmentStr = doc.department ?? "";
        departmentCount[departmentStr] =
            departmentCount[departmentStr]! + (doc.count! * doc.level!);
      } else {
        String departmentStr = doc.department ?? "";
        departmentCount[departmentStr] = (doc.count! * doc.level!);
      }
    }
  }
  int max = 0;
  String topDepartment = '';
  for (var key in departmentCount.keys) {
    if (departmentCount[key]! > max) {
      max = departmentCount[key]!;
      topDepartment = key;
    }
  }
  return topDepartment;
}

String getTopHeartRisk(List<SummaryHeartRecord> summarydocs) {
  // find department that has maximum average risk calculated by totalrisk divided by evaluated
  if (summarydocs.isEmpty) {
    return '';
  }
  double max = 0;
  String? top = null;
  for (var doc in summarydocs) {
    if (doc.evaluated == 0) {
      continue;
    }
    double avg = doc.totalRisk! / doc.evaluated!;
    if (avg > max) {
      max = avg;
      top = doc.department;
    }
  }
  return top ?? '';
}

int getTotalCountExpenseByLevel(
  int level,
  List<ExpenseSummaryRecord> summarydocs,
) {
  // loop through summary docs and find total count by level
  int totalCount = 0;
  for (var i = 0; i < summarydocs.length; i++) {
    if (summarydocs[i].level == level) {
      if (summarydocs[i].count != null)
        totalCount = totalCount + summarydocs[i].count!;
    }
  }
  return totalCount;
}

int getTotalEvaluated(List<SummaryHeartRecord> summarydocs) {
  // find total evaluated for all summarydocs
  int totalEvaluated = 0;
  DateTime tstamp = DateTime.now();
  for (var summarydoc in summarydocs) {
    totalEvaluated += summarydoc.evaluated ?? 0;
  }
  return totalEvaluated;
}
