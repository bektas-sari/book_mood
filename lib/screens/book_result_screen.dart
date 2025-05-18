import 'package:flutter/material.dart';

class BookResultScreen extends StatelessWidget {
  final Map<String, dynamic> mood;

  const BookResultScreen({required this.mood});

  @override
  Widget build(BuildContext context) {
    final List books = mood['books'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommended Books'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(mood['emoji'], style: TextStyle(fontSize: 48)),
                          SizedBox(height: 8),
                          Text(
                            mood['mood'],
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Here are some book suggestions for you:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 16),
                    ...books.map((book) {
                      return Card(
                        margin: EdgeInsets.only(bottom: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        elevation: 2,
                        child: ListTile(
                          leading: Icon(Icons.book, color: Colors.teal),
                          title: Text(book['title']),
                          subtitle: Text(book['genre']),
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Back'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
