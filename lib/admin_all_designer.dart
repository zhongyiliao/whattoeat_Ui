// import 'dart:html';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Admin_all_designer extends StatefulWidget {
  const Admin_all_designer({Key key}) : super(key: key);

  @override
  State<Admin_all_designer> createState() => _Admin_all_designerState();
}

class _Admin_all_designerState extends State<Admin_all_designer> {
  List<String> _choices = <String>['All Designer', 'Ban Designer', 'Normal'];
  List<String> _alldesigners = <String>['All Designer'];

// String answer = "einmal";

  String selected = "";

  Widget _Buttons() {
    return Container(
      // color: Colors.amber,
      height: 40,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: 20,
              ),
          scrollDirection: Axis.horizontal,
          itemCount: _choices.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 140,
              child: RaisedButton(
                elevation: 0,
                hoverElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
                child: new Text(_choices[index]),
                color: selected == _choices[index]
                    ? Colors.deepOrange
                    : Colors.white70,
                // color: selected == _choices[index]
                //     ? (selected == answer ? Colors.green : Colors.red)
                //     : Colors.white,
                onPressed: () => {
                  setState(() {
                    selected = _choices[index];
                    // Navigator.of(context).pop();
                  })
                },
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(30.0)),
              ),
            );
          }),
    );
  }

  Widget _Dropdownlist() {
    return Row(
      children: [
        Container(
          width: 100,
          child: DropdownButton(
            underline: SizedBox(),
            // iconDisabledColor: Colors.red,
            isExpanded: true,
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            value: dropdownValue,
            items: <String>['All', 'Active', 'Not active']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  GlobalKey<ScaffoldState> _key = GlobalKey();
  List<int> _data = [for (var i = 0; i < 50; i++) i];

  final leftEditIcon = Container(
    color: Colors.green,
    child: Icon(Icons.edit),
    alignment: Alignment.centerLeft,
  );
  final rightDeleteIcon = Container(
    color: Colors.red,
    child: Icon(Icons.delete),
    alignment: Alignment.centerRight,
  );
  String dropdownValue = 'All';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        // title: const Text('Title'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 30,
                )),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              _Buttons(),
              SizedBox(
                height: 10,
              ),
              _Dropdownlist(),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Slidable(
                          key: const ValueKey(0),
                          endActionPane: ActionPane(
                            extentRatio: 1 / 5,
                            motion: ScrollMotion(),
                            children: [
                              SlidableAction(
                                // onPressed: (context) =>

                                // An action can be bigger than the others.

                                backgroundColor: Colors.red,
                                // foregroundColor: Colors.,
                                // icon: Icons.delete,
                                label: 'Ban',
                              ),
                            ],
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white70,
                            ),
                            height: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTile(
                                  leading: Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://s3-alpha-sig.figma.com/img/6f9c/4d6f/5ab0a962adb486a239325be7db08eb1e?Expires=1650240000&Signature=GKQu3QtwQncaElNQGATamWXCEUyt6h~6aEkhV33~mq-kpbJhegxQFviF3PnFnq6R2MbufjppfzKWoMzFC1hZj6mByCoQTJP0JavlVaUN~hfFV~Gaedh2rsBOuNto3O4WPRP38CENbJdQAjYe19PmevGTMArKqgeD2N67vzmfQseGuBHNnyrrQtaLHql~lTJbrKTnEoteN2KgzwIXtDMowDICEAwnzfLAxWhQwhh42CyZo6xOxyMLpEu1rgaey3csV0BsyWEGDu9EVqK6omSJ27QABQewpX8RDzxCup5vmBZuCAmJ~funGOXIVXKN~OdV2JxL-PQasgoNOCZN0GonJA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                                        width: 62,
                                        height: 57,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  title: Text('Miss A'),
                                  subtitle: Text('4 Complete'),
                                  trailing: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('07/02/65'),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        // width: 100,
                                        // color: Colors.green,
                                        child: RichText(
                                            // textAlign: TextAlign.start,
                                            text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: CircleAvatar(
                                                radius: 6,
                                                backgroundColor: Colors.green,
                                              ),
                                            ),
                                            WidgetSpan(
                                                child: SizedBox(
                                              width: 5, // your of space
                                            )),
                                            TextSpan(
                                              text: 'Active',
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ),
                                          ],
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                          height: 20,
                        ),
                    itemCount: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
