
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: Text('Search')),
        SliverToBoxAdapter(child: Text('Empty Recommendation')),
        SliverToBoxAdapter(child: Text('Empty Saves')),
      ],
    );
  }
}