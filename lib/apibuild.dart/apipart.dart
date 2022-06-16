import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class PostBuild extends StatefulWidget {
  const PostBuild({Key? key}) : super(key: key);

  @override
  State<PostBuild> createState() => _PostBuildState();
}

class _PostBuildState extends State<PostBuild> {
  late Future<Book> futureBook;
  late Future<List<Book>> futureBooks;

  Future<Book> fetchBook() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));

    if (response.statusCode == 200) {
      return Book.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<List<Book>> fetchBooks() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return List<Book>.from(json.map((x) => Book.fromJson(x)));
    } else {
      throw Exception('Failed to load album');
    }
  }

  void initState() {
    super.initState();
    futureBook = fetchBook();
    futureBooks = fetchBooks();
    debugPrint(futureBook.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("post method "),
      ),
      body: Center(
        child: FutureBuilder<List<Book>>(
          future: futureBooks,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //Text(snapshot.data![index].userid.toString()),
                            Row(
                              children: [
                                Text(snapshot.data![index].id.toString()),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Text(
                                    snapshot.data![index].tittle,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(snapshot.data![index].body),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );

            } 
            
            else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

class Book {
  final int userid;
  final int id;
  final String tittle;
  final String body;

  Book({
    required this.userid,
    required this.id,
    required this.tittle,
    required this.body,
  });
  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
        userid: json['userId'],
        id: json['id'],
        tittle: json['title'],
        body: json['body']);
  }
}