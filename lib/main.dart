import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginpage/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  late double height, width;

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Login Page',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: SafeArea(
                child: Scaffold(
              // backgroundColor: Colors.lightBlueAccent,
              body: HomePage(),
            )));
      },
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       builder: () => MaterialApp(
//         home: Scaffold(
//           body: SafeArea(
//             child: Column(
//               children: [
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
