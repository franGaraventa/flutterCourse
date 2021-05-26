import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/src/resources/route_path.dart';
import 'package:flutter_course/src/widgets/alert_dialog.dart';
import 'package:flutter_course/src/widgets/app_drawer_and_tab.dart';
import 'package:flutter_course/src/widgets/buttons.dart';
import 'package:flutter_course/src/widgets/calendar_widget.dart';
import 'package:flutter_course/src/widgets/cards.dart';
import 'package:flutter_course/src/widgets/checkbox_radio_button.dart';
import 'package:flutter_course/src/widgets/container.dart';
import 'package:flutter_course/src/widgets/form_widget.dart';
import 'package:flutter_course/src/widgets/gridview_widget.dart';
import 'package:flutter_course/src/widgets/images.dart';
import 'package:flutter_course/src/widgets/linear_circular_progress_bar.dart';
import 'package:flutter_course/src/widgets/list_widget.dart';
import 'package:flutter_course/src/widgets/main_screen.dart';
import 'package:flutter_course/src/widgets/row_and_column.dart';
import 'package:flutter_course/src/widgets/slider_widget.dart';
import 'package:flutter_course/src/widgets/snack_bar.dart';
import 'package:flutter_course/src/widgets/stack_widget.dart';
import 'package:flutter_course/src/widgets/text_and_textfield.dart';
import 'package:flutter_course/src/widgets/tooltip_widget.dart';
import 'package:flutter_course/utils/Strings.dart';

class NavigationRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    String title = settings.arguments as String;
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => MainScreen(
            title: appTitle,
          ),
        );
      case alertDialog:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: AlertDialogWidget(),
                  ),
                ));
      case drawerAndTab:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: MyAppDrawer(),
                  ),
                ));
      case buttons:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: Buttons(),
                  ),
                ));
      case calendar:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: CalendarWidget(),
                  ),
                ));
      case cards:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: CardWidget(),
                  ),
                ));
      case checkBoxAndRadioButton:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: CheckBoxAndRadioButton(),
                  ),
                ));
      case container:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: ContainerWidget(),
                  ),
                ));
      case forms:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: FormWidget(),
                  ),
                ));
      case gridview:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: GridViewWidget(),
                  ),
                ));
      case images:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: AssetImageWidget(),
                  ),
                ));
      case linearAndCircularBar:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: LinearProgressBar(),
                  ),
                ));
      case list:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: BasicList(),
                  ),
                ));
      case rowAndColumn:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: RowAndColumns(),
                  ),
                ));
      case slider:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: SliderWidget(),
                  ),
                ));
      case snackBar:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: SnackBarWidget(),
                  ),
                ));
      case stack:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: StackWidget(),
                  ),
                ));
      case textAndTextfield:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: TextAndTextField(),
                  ),
                ));
      case tooltip:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                  ),
                  body: Center(
                    child: TooltipWidget(),
                  ),
                ));
    }
  }
}
