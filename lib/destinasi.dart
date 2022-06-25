import 'package:flutter/material.dart';
import 'package:tubes_abp/homepage.dart';
import 'package:tubes_abp/main.dart';



class Destinasi extends StatefulWidget {
  const Destinasi({Key? key}) : super(key: key);

  @override
  State<Destinasi> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Destinasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      body: CustomScrollView(
        slivers: [
          // sliver app bar
          SliverAppBar(
            expandedHeight: 100,
            backgroundColor: Color.fromARGB(255, 66, 52, 2),
            leading: BackButton(),
            // title: Text('Kuliner',
            //   style: TextStyle(fontSize: 20),
            //   ),
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('D E S T I N A S I'),
              background: Container(color: Color.fromARGB(255, 84, 76, 2)),
            ),
          ),

          // sliver items 1
            SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.deepPurple[400],
                  height: 150,
                  alignment: Alignment.centerRight,
                ),
              ),
            ),
          ),
          // sliver items 2
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.deepPurple[400],
                  height: 150,
                ),
              ),
            ),
          ),

          // sliver items 3
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Color.fromARGB(255, 228, 228, 228),
                  height: 150,
                ),
              ),
            ),
          ),

          // sliver items 4
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.deepPurple[400],
                  height: 150,
                ),
              ),
            ),
          ),

          // sliver items 5
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Color.fromRGBO(246, 246, 246, 1),
                  height: 150,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}