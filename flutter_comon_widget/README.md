# fluttercomonwidget

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
本文主要用到的第三方库简单列举一下：
         fluttertoast: ^4.0.0   //Toast 提示
          intl: ^0.16.0         //国际化
          http: ^0.12.0         //网络请求
          scoped_model: ^1.0.1  //
          rxdart: ^0.18.1       // 类似于Rxjava的作用


首页 main.dart
 主要控件 
         ListTile(
                       onTap: () {
                         ToastShow().showShortToast('flutter-widget基础');
                         Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
                           return every_page();
                         }));
                       },
                       title: Text('flutter-widget基础'),
                       trailing: Icon(Icons.send),
                     ),
                     可以添加title，icon（left，right）,点击事件onTap,长安事件-onLongPress
 悬浮按钮  FloatingActionButton  可添加icon
  floatingActionButton: FloatingActionButton(
         onPressed: _incrementCounter,
         tooltip: 'Increment',
         child: Icon(Icons.add),
       ), 
点击 悬浮按钮 通过调用
  setState(() {
      _counter++;
    });   来counter++  然后 刷新页面的 Text
间隔线：控制高度height
   Divider(height: 24),
文本框 Text  类似于android的TextView   ios 的 lable
    Text('You have pushed the button this many times:',),
    
基本跳转页面 --传值
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx){
      return every_page();
    }));
 页面路由跳转：
  第一步需先注册路由
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
  第二步跳转只需路由标记即可
             Navigator.pushNamed(context, '/http');
             
 即完成跳转功能。
 
  控件 ListTile  使用 基本属性了解   
  widget --ListView  学习 和使用
 
           body: ListView(
                  children: <Widget>[
                         Text('路由跳转'),
                   ],),           
         
 在 flutter-widget基础  点击进去  material_components 页面 
 基础widget控件编写，学习
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
                      
  大家可以点进去先看看每个widget的效果
  然后再去代码中看看如何实现的；
     1， 最外层用Form包裹起来
     FormDemo页面  注册页面  
            输入框-用户名：
             TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          helperText: '',
                        ),
                        onSaved: (value) {
                          username = value;//输入框的内容 复制给 username
                        },
                        validator: validateUsername,
                        autovalidate: autovalidate,
                      ),
          输入框-密码
           TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        helperText: '',
                      ),
                      onSaved: (value) {
                        password = value;//输入框的内容 复制给 password
                      },
                      validator: validatePassword,
                      autovalidate: autovalidate,
                    ),
    输入框会监听你的输入：
    当输入完成以后，我们把输入框的内容保存起来  输入框的内容 复制给局部变量： password 和 username
    autovalidate：是否自动校验输入内容；当为true时，每一个子FormField内容发生变化时都会自动校验合法性，并直接显示错误信息。否则，需要通过调用FormState.validate()来手动校验。
    
FormState
FormState为Form的State类，可以通过Form.of()或GlobalKey获得。我们可以通过它来对Form的子孙FormField进行统一操作。我们看看其常用的三个方法：


FormState.validate()：调用此方法后，会调用Form子孙FormField的validate回调，如果有一个校验失败，则返回false，所有校验失败项都会返回用户返回的错误提示。
FormState.save()：调用此方法后，会调用Form子孙FormField的save回调，用于保存表单内容
FormState.reset()：调用此方法后，会将子孙FormField的内容清空。

