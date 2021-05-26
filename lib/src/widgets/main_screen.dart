import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/src/models/routes.dart';
import 'package:flutter_course/src/resources/route_path.dart';

class MainScreen extends StatefulWidget {
  final String title;

  MainScreen({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<WidgetRoute> _widgetList;

  List<WidgetRoute> _generateRoutes() {
    List<WidgetRoute> _routeList = [];
    _routeList.add(WidgetRoute(title: 'ALERT DIALOG', route: alertDialog));
    _routeList.add(WidgetRoute(title: 'DRAWER AND TAB', route: drawerAndTab));
    _routeList.add(WidgetRoute(title: 'BUTTONS', route: buttons));
    _routeList.add(WidgetRoute(title: 'CALENDAR', route: calendar));
    _routeList.add(WidgetRoute(title: 'CARDS', route: cards));
    _routeList.add(WidgetRoute(
        title: "CHECKBOX AND RADIO BUTTONS", route: checkBoxAndRadioButton));
    _routeList.add(WidgetRoute(title: 'CONTAINER', route: container));
    _routeList.add(WidgetRoute(title: 'FORMS', route: forms));
    _routeList.add(WidgetRoute(title: 'GRIDVIEW', route: gridview));
    _routeList.add(WidgetRoute(title: 'IMAGES', route: images));
    _routeList.add(WidgetRoute(
        title: 'LINEAR/CIRCULAR PROGRESS BAR', route: linearAndCircularBar));
    _routeList.add(WidgetRoute(title: 'LIST', route: list));
    _routeList.add(WidgetRoute(title: 'ROW AND COLUMN', route: rowAndColumn));
    _routeList.add(WidgetRoute(title: 'SLIDER', route: slider));
    _routeList.add(WidgetRoute(title: 'SNACK BAR', route: snackBar));
    _routeList.add(WidgetRoute(title: 'STACK', route: stack));
    _routeList
        .add(WidgetRoute(title: 'TEXT AND TEXTFIELD', route: textAndTextfield));
    _routeList.add(WidgetRoute(title: 'TOOLTIP', route: tooltip));
    return _routeList;
  }

  @override
  void initState() {
    super.initState();
    _widgetList = _generateRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView.separated(
          padding: const EdgeInsets.all(8.0),
          itemCount: _widgetList.length,
          itemBuilder: (BuildContext context, int index) {
            return FloatingActionButton.extended(
              onPressed: () {
                Navigator.pushNamed(context, _widgetList[index].route,
                    arguments: _widgetList[index].title);
              },
              label: Text(_widgetList[index].title),
              icon: Icon(Icons.touch_app_outlined),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
  }
}
