import 'package:task1flutter/NavTo.dart';
import 'package:task1flutter/button.dart';
import 'package:task1flutter/register.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:flutter/material.dart';

class SignIN extends StatelessWidget {
  TextEditingController numberController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  SignIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png")
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
                      'Sign in',
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
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ),

              Row(
                children: [
                  SizedBox(
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
                    width: 275,
                    decoration: BoxDecoration(

                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.black54,
                      ),
                    ),
                    child: TextFormField(decoration: InputDecoration(hintText: "EG.1212123"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Button(
                  text: 'Sign in',
                  OnClick: () {
                    if (formKey.currentState!.validate()) {}
                  },
                ),
              ),
              Center(
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
                    borderRadius: BorderRadius.all(
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
                      children: [
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
                  children: [
                    const Text(
                      'Does not has any account',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, register());
                      },
                      child: Text(
                        'Register now',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Item(Country country) => Container(
    child: Row(
      children: <Widget>[
        SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}"),
      ],
    ),
  );
}
