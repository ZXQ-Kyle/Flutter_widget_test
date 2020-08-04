import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CompanyInformationWidget extends StatefulWidget {
  @override
  _CompanyInformationWidgetState createState() => _CompanyInformationWidgetState();
}

class _CompanyInformationWidgetState extends State<CompanyInformationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: RaisedButton(
        child: Text("打开弹窗"),
        onPressed: () => showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.green[200],
            barrierColor: Color(0x8DFFCDD2),
            isDismissible: false,
            enableDrag: false,
            shape: Border(
              bottom: BorderSide(
                color: Colors.amber,
                width: 10,
              ),
              right: BorderSide(
                color: Colors.amber,
                width: 10,
              ),
            ),
            builder: (context) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100)),
                ),
                constraints: BoxConstraints(maxHeight: 700),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 22, top: 50, bottom: 16),
                            child: Text(
                              "头部+列表",
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Color(0xFFBCBCBC),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        Padding(padding: const EdgeInsets.only(right: 8)),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 500,
                          itemBuilder: (context, index) {
                            return Text("${index}");
                          }),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
