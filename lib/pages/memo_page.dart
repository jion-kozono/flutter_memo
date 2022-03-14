import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_memo/model/memo.dart';

class MemoPage extends StatelessWidget {
  final QueryDocumentSnapshot? memo;

  MemoPage(this.memo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(memo?.get("title") ?? ""),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "メモ内容",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              memo?.get("title") ?? "",
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ]),
        ));
  }
}
