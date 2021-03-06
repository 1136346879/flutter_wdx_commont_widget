import 'package:flutter/material.dart';
import 'package:fluttercomonwidget/materialComponents/button_demo.dart';
import 'package:fluttercomonwidget/materialComponents/floating_action_button_demo.dart';
import 'package:fluttercomonwidget/materialComponents/popup_menu_button_demo.dart';
import 'package:fluttercomonwidget/materialComponents/checkbox_demo.dart';
import 'package:fluttercomonwidget/materialComponents/radio_demo.dart';
import 'package:fluttercomonwidget/materialComponents/switch_demo.dart';
import 'package:fluttercomonwidget/materialComponents/slider_demo.dart';
import 'package:fluttercomonwidget/materialComponents/datetime_demo.dart';
import 'package:fluttercomonwidget/materialComponents/simple_dialog_demo.dart';
import 'package:fluttercomonwidget/materialComponents/alert_dialog_demo.dart';
import 'package:fluttercomonwidget/materialComponents/bottom_sheet_demo.dart';
import 'package:fluttercomonwidget/materialComponents/snack_bar_demo.dart';
import 'package:fluttercomonwidget/materialComponents/expansion_panel_demo.dart';
import 'package:fluttercomonwidget/materialComponents/chip_demo.dart';
import 'package:fluttercomonwidget/materialComponents/data_table_demo.dart';
import 'package:fluttercomonwidget/materialComponents/paginated_data_table_demo.dart';
import 'package:fluttercomonwidget/materialComponents/card_demo.dart';
import 'package:fluttercomonwidget/materialComponents/stepper_demo.dart';
import 'form_demo.dart';
import 'i18n/i18n_demo.dart';
import 'ToastShow.dart';
class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'Stepper', page: StepperDemo()),
          ListItem(title: 'Card', page: CardDemo()),
          ListItem(title: 'PaginatedDataTable', page: PaginatedDataTableDemo()),
          ListItem(title: 'DataTable', page: DataTableDemo()),
          ListItem(title: 'Chip', page: ChipDemo()),
          ListItem(title: 'ExpansionPanel', page: ExpansionPanelDemo()),
          ListItem(title: 'SnackBar', page: SnackBarDemo()),
          ListItem(title: 'BottomSheet', page: BottomSheetDemo()),
          ListItem(title: 'AlertDialog', page: AlertDialogDemo()),
          ListItem(title: 'SimpleDialog', page: SimpleDialogDemo()),
          ListItem(title: 'Date & Time', page: DateTimeDemo()),
          ListItem(title: 'Slider', page: SliderDemo()),
          ListItem(title: 'Switch', page: SwitchDemo()),
          ListItem(title: 'Radio', page: RadioDemo()),
          ListItem(title: 'Checkbox', page: CheckboxDemo()),
          ListItem(title: 'Form', page: FormDemo()),
          ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
          ListTile(
            onTap: () {
              ToastShow().showShortToast('I18nDemo');
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
                return I18nDemo();
              }));
            },
            title: Text('I18nDemo'),
            trailing: Icon(Icons.send),
          ),
//          ListItem(title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
          ListTile(
            onTap: () {
              ToastShow().showShortToast('路由跳转');
              Navigator.pushNamed(context, '/http');
            },
            title: Text('路由跳转'),
            trailing: Icon(Icons.send),
          ),
        ],

      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            ),
          ],
        ),
      )
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}