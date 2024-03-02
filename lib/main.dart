import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:unify/app.dart';
import 'package:unify/common/controllers/video_controller.dart';
import 'package:unify/data/repositories/authentication_repository.dart';

void main() async {

    await dotenv.load(fileName: ".env");

    await Supabase.initialize(
    url: dotenv.env['PROJECT_URL'].toString(),
    anonKey: dotenv.env['SUPABASE_ANON_KEY'].toString(),
  ).then((value) => {
    Get.put(AuthenticationRepository()),
    });

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;