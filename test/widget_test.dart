// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:cleanmovie/features/domain/entities/movie_entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cleanmovie/main.dart';
import 'package:http/http.dart' as http;

void main() async {
  try {
    // var response = await http.get(
    //     Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=5f48542f466b4925764cd9af170b2ce8&page=1')
    // );
    var response = await Dio().get(
        'https://api.themoviedb.org/3/movie/popular?api_key=5f48542f466b4925764cd9af170b2ce8&page=1'
    );
    MovieEntity results = MovieEntity.fromJson(json.decode(response.toString()));
    print(results);
  } catch (e) {
    print(e);
  }
}
