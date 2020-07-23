import 'package:flutter/material.dart';
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
/// 可以随意切换页面
class every_page extends StatefulWidget{

  every_page() : super();
  @override
  every_pageState createState() {
    return every_pageState();
  }
}


class every_pageState extends State<every_page>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: Locale('en', 'US'),
//         locale: Locale('zh', 'CN'),
         localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
           return Locale('en', 'US');
         },
        localizationsDelegates: [
          NinghaoDemoLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
        ],
        debugShowCheckedModeBanner: false,
        initialRoute: '/mdc',
        routes: {
          '/': (context) => MyHomePage(title: 'back'),
          '/form': (context) => FormDemo(),
          '/mdc': (context) => MaterialComponents(),
          '/state-management': (context) => StateManagementDemo(),
          '/stream': (context) => StreamDemo(),
          '/rxdart': (context) => RxDartDemo(),
          '/bloc': (context) => BlocDemo(),
          '/http': (context) => HttpDemo(),
          '/animation': (context) => AnimationDemo(),
          '/i18n': (context) => I18nDemo(),
          '/test': (context) => TestDemo(),
        },
//        theme: ThemeData(
//          primarySwatch: Colors.yellow,
//          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
//          splashColor: Colors.white70,
//          accentColor:  Color.fromRGBO(3, 54, 255, 1.0),
//        ),//可切换主题颜色
      title: 'common_widget',
      theme: ThemeData.light(),
    );
  }

}