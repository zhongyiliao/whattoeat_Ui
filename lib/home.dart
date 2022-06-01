import 'dart:convert';
import 'dart:developer';
import 'dart:io' as Io;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var url = Uri.parse('http://192.168.1.185:30000/generateQr');
  // Uint8List _base64;
  String _base64;
  String qrCodeId = '';
  TextEditingController _amountcontroller = TextEditingController();
  // var header = {
  //   'Content-type': 'application/json',
  //   'authorization': 'Bearer 60043c5b-b2fe-4a07-9309-89556b1a02ed',
  //   'resourceOwnerId': 'l747c6fead8c514e63beab1dd05e642057',
  //   'requestUId': '',
  //   'accept-language': 'EN',
  // };

  // http.post(url,
  //     body: json.encode(body),
  //     headers: { 'Content-type': 'application/json','resourceOwnerId': 'l747c6fead8c514e63beab1dd05e642057','requestUId':'{{$guid}}','accept-language': 'EN',
  //       "Authorization": ""},
  //     encoding: encoding)

  generateQr(uid, amount) async {
    print('click');
    http.Response response = await http.post(url, body: {
      "Uid": uid.toString(),
      "Amount": amount.toString(),
      "Ref1": "sneakerjordan012"
    });
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response}');
    inspect(response);
    print(response);
    var result = jsonDecode(response.body);
    // inspect(result['data']);
    // print("result == " + result['data']['qrcodeId']);

    // result.replaceAll('"', "");
    // print(result[result.length - 1]);
    setState(() {
      _base64 = result['data']['qrImage'];
      qrCodeId = result['data']['qrcodeId'];
    });
    // return Image.memory(base64Decode(response.body));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            _base64 == null ? Container() : Text('Qr code id: $qrCodeId'),
            _base64 == null
                ? Container(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(labelText: 'Userid'),
                        ),
                        TextField(
                          controller: _amountcontroller,
                          decoration: InputDecoration(labelText: 'Amount'),
                        ),
                      ],
                    ),
                  )
                // Icon(
                //     Icons.image,
                //     size: 32,
                //   )

                : Image.memory(
                    base64Decode(_base64),
                    fit: BoxFit.cover,
                  ),
            FloatingActionButton.extended(
              label: Text('Generate'),
              onPressed: () {
                generateQr('mock123456', _amountcontroller.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
