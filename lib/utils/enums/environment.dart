import 'package:flutter/material.dart';

enum Environment {
  dev(label: 'Dev', path: '.env.development', color: Colors.red),
  staging(label: 'Staging', path: '.env.staging', color: Colors.orange),
  prod(label: 'Prod', path: '.env', color: Colors.green);

  final String label;
  final String path;
  final Color color;

  const Environment({
    required this.label,
    required this.path,
    required this.color,
  });
}
