import 'package:flutter/material.dart';

class MyGridViewPage extends StatefulWidget {
  @override
  _MyGridViewPageState createState() => _MyGridViewPageState();
}

class _MyGridViewPageState extends State<MyGridViewPage> {
  ScrollController _scrollController = ScrollController();
  bool _showButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >= 200) {
      // Show the button when scrolled a bit further
      setState(() {
        _showButton = true;
      });
    } else {
      // Hide the button
      setState(() {
        _showButton = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView with Floating Action Button'),
      ),
      body: Listener(
        onPointerMove: (details) {
          // Update scroll position while scrolling
          _scrollListener();
        },
        child: GridView.builder(
          controller: _scrollController,
          itemCount: 100, // Your item count
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
          ),
          itemBuilder: (context, index) {
            return Container(); // Replace with your grid item widget
          },
        ),
      ),
      floatingActionButton: _showButton
          ? FloatingActionButton(
              onPressed: () {
                // Scroll to the top when the button is clicked
                _scrollController.animateTo(
                  0,
                  duration: Duration(milliseconds: 500), // Animation duration
                  curve: Curves.easeInOut, // Animation curve
                );
              },
              child: Icon(Icons.arrow_upward),
            )
          : null, // Hide the button if _showButton is false
    );
  }
}
