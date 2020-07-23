import 'package:flutter/material.dart';
import 'ToastShow.dart';
import 'every_page.dart';
import 'i18n/intl/ninghao_demo_localizations.dart';
import 'i18n/i18n_demo.dart';
import 'main.dart';
import 'rxdart_demo.dart';
import 'form_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'animation_demo.dart';
import 'bloc_demo.dart';
import 'http_demo.dart';
import 'stream_demo.dart';
import 'state_management_demo.dart';
import 'material_components.dart';
import 'tabbarDemo.dart';
import 'test_demo.dart';
void main() => runApp(MyApp());
/**
 * 官方demo  首页  添加入口 跳转
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              onTap: () {
                ToastShow().showShortToast('flutter-widget基础');
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
                  return every_page();
                }));
              },
              title: Text('flutter-widget基础'),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              onTap: () {
                ToastShow().showShortToast('FormDemo');
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
                  return FormDemo();
                }));
              },
              title: Text('FormDemo'),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              onTap: () {
                ToastShow().showShortToast('StateManagementDemo');
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
                  return StateManagementDemo();
                }));
              },
              title: Text('StateManagementDemo'),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              onTap: () {
                ToastShow().showShortToast('StreamDemo');
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
                  return StreamDemo();
                }));
              },
              title: Text('StreamDemo'),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              onTap: () {
                ToastShow().showShortToast('RxDartDemo');
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
                  return RxDartDemo();
                }));
              },
              title: Text('RxDartDemo'),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              onTap: () {
                ToastShow().showShortToast('BlocDemo');
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
                  return BlocDemo();
                }));
              },
              title: Text('BlocDemo'),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              onTap: () {
                ToastShow().showShortToast('HttpDemo');
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
                  return HttpDemo();
                }));
              },
              title: Text('HttpDemo'),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              onTap: () {
                ToastShow().showShortToast('AnimationDemo');
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
                  return AnimationDemo();
                }));
              },
              title: Text('AnimationDemo'),
              trailing: Icon(Icons.send),
            ),
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
            ListTile(
              onTap: () {
                ToastShow().showShortToast('TestDemo');
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
                  return TestDemo();
                }));
              },
              title: Text('TestDemo'),
              trailing: Icon(Icons.send),
            ),
            Divider(height: 24),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
