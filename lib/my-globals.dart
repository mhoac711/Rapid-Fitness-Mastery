
library globals;

import 'dart:collection';

import 'package:rapid_fitness_mastery/Exercise.dart';
List<Exercise> globalEx = [];
List<Exercise> savedList = globalEx.toSet().toList();

List<Exercise> globalWorkEx = [];
List<Exercise> savedWorkList = globalWorkEx.toSet().toList();