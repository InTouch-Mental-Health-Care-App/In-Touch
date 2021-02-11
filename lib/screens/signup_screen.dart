import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

class SignUpScreen extends StatelessWidget {
  //date format
  final format = DateFormat("yyyy-MM-DD");

//gender list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SIGNUP',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.deepPurple[400],
          padding: EdgeInsets.only(
            top: 70,
          ),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              child: Container(
                transform: Matrix4.translationValues(0.0, -75.0, 0.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.deepPurple[700],
                      child: IconButton(
                        icon: Icon(Icons.edit),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      radius: 50,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[50],
                                borderRadius: BorderRadius.circular(15)),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(15),
                                prefixIcon: Icon(
                                  Icons.account_box,
                                  color: Colors.deepPurpleAccent[400],
                                ),
                                hintText: 'Name',
                                border: InputBorder.none,
                              ),
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[50],
                                borderRadius: BorderRadius.circular(15)),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(15),
                                prefixIcon: Icon(
                                  Icons.mail,
                                  color: Colors.deepPurpleAccent[400],
                                ),
                                hintText: 'Email',
                                border: InputBorder.none,
                              ),
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[50],
                                borderRadius: BorderRadius.circular(15)),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(15),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.deepPurpleAccent[400],
                                ),
                                hintText: 'Password',
                                border: InputBorder.none,
                              ),
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textInputAction: TextInputAction.done,
                              obscureText: true,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[50],
                                borderRadius: BorderRadius.circular(15)),
                            child: DateTimeField(
                              format: format,
                              onShowPicker: (context, currentValue) {
                                return showDatePicker(
                                    context: context,
                                    firstDate: DateTime(1900),
                                    initialDate: currentValue ?? DateTime.now(),
                                    lastDate: DateTime(2100));
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(15),
                                prefixIcon: Icon(
                                  Icons.calendar_today,
                                  color: Colors.deepPurpleAccent[400],
                                ),
                                hintText: 'Date of Birth',
                                border: InputBorder.none,
                              ),
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[50],
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    child: Icon(
                                      Icons.account_box_sharp,
                                      color: Colors.deepPurpleAccent[400],
                                    )),
                                DropDown(
                                  hint: Text(
                                    "Gender",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  items: ["Male", "Female", "Other"],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.purple[900],
                              onPressed: () {},
                              child: Text(
                                "SignUp",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(context, "/"),
                            child: Text(
                              "Already have an Account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.purple[700]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
