import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class category {
  final Color bg;
  final String title;
  final IconData icon;
  final Color IconColor;

  category(
      {required this.bg,
      required this.title,
      required this.icon,
      required this.IconColor});
}

List<category> groups = [
  category(
    bg: const Color(0xFFFFF8E6),
    title: "Party na club",
    icon: Icons.celebration,
    IconColor: const Color(0xFFF4B913),
  ),
  category(
      bg: const Color(0xFFEBEFFF),
      title: "Music",
      icon: CupertinoIcons.music_note_2,
      IconColor: const Color(0xFF4C63E3)),
  category(
      bg: const Color(0xFFDCF7E8),
      title: "Free",
      icon: Icons.star_border,
      IconColor: const Color(0xFF57AB89)),
  category(
      bg: const Color(0xFFFCEEEB),
      title: "For You",
      icon: Icons.favorite,
      IconColor: const Color(0xFFFF5250))
];
