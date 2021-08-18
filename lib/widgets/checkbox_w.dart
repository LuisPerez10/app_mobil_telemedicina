import 'package:flutter/material.dart';

class DemoCheck extends StatefulWidget {
  final List<String> listValues;
  final String titulo;
  final Function(List<String>) callback;

  DemoCheck(
      {Key key,
      @required this.listValues,
      @required this.callback,
      @required this.titulo});

  @override
  DemoCheckState createState() => new DemoCheckState();
}

class DemoCheckState extends State<DemoCheck> {
  List<String> valuesSelected = [];
  Map<String, bool> mapValues = {};
  @override
  void initState() {
    // TODO: implement initState
    listToMap();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      // height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              widget.titulo,
              style: TextStyle(
                  fontSize: 14,
                  // fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          Container(
              // color: Theme.of(context).secondaryHeaderColor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 242, 242, 242),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 1.0,
                      spreadRadius: 0.1,
                      offset: Offset(0.0, 1.0))
                ],
              ),
              width: size.width,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: mapValues.keys.map((String key) {
                  return Container(
                    width: size.width * .4,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            child: new Checkbox(
                          activeColor: Colors.red,
                          value: mapValues[key],
                          onChanged: (bool value) {
                            setState(() {
                              mapValues[key] = value;
                              isValidItemsSelected();
                              widget.callback(this.valuesSelected);
                            });
                          },
                        )),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 246, 246, 246),
                            border: Border.all(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.only(
                              left: 7, right: 7, top: 5, bottom: 5),
                          margin: EdgeInsets.only(
                              left: 5, right: 5, top: 10, bottom: 10),
                          child: Text('$key', style: TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }

  listToMap() {
    widget.listValues.forEach((element) {
      mapValues[element] = false;
    });
  }

  bool isValidItemsSelected() {
    this.valuesSelected = getItems(mapValues);
    return this.valuesSelected.isNotEmpty;
  }

  List<String> getItems(Map<String, bool> mapItemsSelected) {
    // bool validar = false;
    List<String> items = [];
    mapItemsSelected.forEach((key, value) {
      if (value == true) {
        items.add(key);
      }
    });
    return items;
  }
}
