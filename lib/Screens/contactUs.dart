import 'package:flutter/material.dart';
import 'package:hotel_website/Widgets/responsive.dart';
import 'package:hotel_website/Widgets/topNavBar.dart';
import 'package:hotel_website/constants.dart';
import 'package:hotel_website/contactUsForm/form.dart';
import 'package:hotel_website/contactUsForm/formController.dart';
import 'package:hotel_website/mWidgets/mtopNavBar.dart';

class ContactUs extends StatefulWidget {
  ContactUs({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  // TextField Controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController feedbackController = TextEditingController();

  // Method to Submit Feedback and save it in Google Sheets
  void _submitForm() {
    // Validate returns true if the form is valid, or false
    // otherwise.
    if (_formKey.currentState.validate()) {
      // If the form is valid, proceed.
      FeedbackForm feedbackForm = FeedbackForm(
          nameController.text,
          emailController.text,
          mobileNoController.text,
          feedbackController.text);

      FormController formController = FormController();

      _showSnackbar("Submitting Inquiry");

      // Submit 'feedbackForm' and save it in Google Sheets.
      formController.submitForm(feedbackForm, (String response) {
        print("Response: $response");
        if (response == FormController.STATUS_SUCCESS) {
          // Feedback is saved succesfully in Google Sheets.
          _showSnackbar("Inquiry Submitted");
        } else {
          // Error Occurred while saving data in Google Sheets.
          _showSnackbar("Error Occurred!");
        }
      });
    }
  }

  // Method to show snackbar with 'message'.
  _showSnackbar(String message) {
    final snackBar = SnackBar(content: Text(message));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Responsive.isMobile(context)?MTopNavBar() :TopNavBar(),
          Padding(
            padding: Responsive.isMobile(context)?EdgeInsets.symmetric(vertical:20.0,horizontal: 24) :EdgeInsets.symmetric(vertical:80.0,horizontal: 160),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],),
              child: Column(
                children: [
                  Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Send Inquiry',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: kGoldColor),),
                  )),
                  Form(
                      key: _formKey,
                      child:
                      Padding(padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextFormField(
                              controller: nameController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter Valid Name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  labelText: 'Name'
                              ),
                            ),
                            TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (!value.contains("@")) {
                                  return 'Enter Valid Email';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  labelText: 'Email'
                              ),
                            ),
                            TextFormField(
                              controller: mobileNoController,
                              validator: (value) {
                                if (value.trim().length != 10) {
                                  return 'Enter 10 Digit Mobile Number';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Mobile Number',
                              ),
                            ),
                            TextFormField(
                              controller: feedbackController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter A Valid Booking';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                  labelText: 'Booking Information'
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                  RaisedButton(
                    color: kLogoBgColor,
                    textColor: kGoldColor,
                    onPressed:_submitForm,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('Submit '),
                    ),
                  ),
                  SizedBox(height: 80,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}