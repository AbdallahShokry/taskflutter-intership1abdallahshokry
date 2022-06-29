import 'package:country_pickers/country.dart';
import 'package:task1flutter/FT.dart';
import 'package:task1flutter/button.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class register extends StatefulWidget {
  final formKey =GlobalKey<FormState>();
  register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _register();
}

class _register extends State<register> {

  final formKey =GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,

      //color set to transperent or set your own color
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Card(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.all(0),
                child: Image.asset(
                  'smart.png',
                  fit: BoxFit.cover,

                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                'Welcome to Fashion Daily',
                style: TextStyle(
                    fontSize: 15, color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Help',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.help,
                    color: Colors.deepPurple,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 5.0),
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize:15,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Ft(t:"EG.WEAE@email.com" ,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 5.0),
              child: Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black54,
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15.0,
                ),
                CountryPickerDropdown(
                  itemBuilder: Item,
                  sortComparator: (Country a, Country b) =>
                      a.isoCode.compareTo(b.isoCode),
                  onValuePicked: (Country country) {
                  },
                ),
                Container(
                  width: 280.0,
                  decoration: BoxDecoration(

                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.black54,
                    ),
                  ),
                  child: TextFormField(decoration: const InputDecoration(hintText: "EG.1212123"),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 5.0),
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Ft(
                isPassword: true,
                t: "Password",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child:Button(
                text: 'Register',
                OnClick: (){
                },
              ),
            ),
            const Center(
              child: Text('Or',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  color: Colors.transparent,
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage('assets/google.png'),
                        height: 30.0,
                        width: 30.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Sign with by google',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Doesn\'t has any account',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget Item(Country country) => Container(
    child: Row(
      children: <Widget>[
        const SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}"),
      ],
    ),
  );
}
