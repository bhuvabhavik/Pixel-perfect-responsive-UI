import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 16.0.w),
      child: Column(
        children: [
          Text(
            'Sign in to BHAVIK BHUVA',
            style: TextStyle(fontSize: 26.sp),
          ),
          getSizedBox(height: 15.h, width: 0),
          getTextField(hint: 'Name'),
          getSizedBox(height: 10.h, width: 0),
          getTextField(hint: 'Email'),
          getSizedBox(height: 10.h, width: 0),
          getTextField(hint: 'Password'),
          getSizedBox(height: 10.h, width: 0),
          getTextField(hint: 'Confirm Password'),
          getSizedBox(height: 10.h, width: 0),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Create Account'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Divider(
                height: 3,
                color: Colors.black,
                thickness: 1,
              ),
              Text('Or sign up via'),
              Divider(
                height: 1,
                color: Colors.black,
                thickness: 1,
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          //   children: [
          //     ListTile(
          //       leading: Icon(Icons.ac_unit),
          //       title: Text('Google'),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget getTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.blueGrey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget getSizedBox({required double height, required double width}) {
    return SizedBox(height: height, width: width);
  }
}
