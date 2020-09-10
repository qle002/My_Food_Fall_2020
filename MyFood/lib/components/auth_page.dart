import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget{
  AuthenticationPage({Key key, this.title}) : super(key:key);
  final String title;
  @override 
  _AuthenticationPage createState()=> _AuthenticationPage();
}
class _AuthenticationPage extends State<AuthenticationPage>{
  String _email="";
  String _password="";
  final _formKey= GlobalKey<FormState>();
  void _saveEmail(String value){
    print("Save email as $value");
    setState(() {
      _email=value;
    });
  }
  void _savePassword(String value){
    print("Save password as $value");
    setState(() {
      _password=value;
    });
  }
  void _onSubmit() async{
    print("Try Submit with $_email and $_password");
  }
  void _onSignIn(){
    print("Try Sign In");
    _formKey.currentState.save();
    if (_formKey.currentState.validate()){
      _onSubmit();
    }
  }
  void _onSignUp(){
    print("Try Sign Up");
    _formKey.currentState.save();
    if (_formKey.currentState.validate()){
      _onSubmit();
    }
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body:Form(
        key:_formKey,
        child:Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter email'
              ),
              validator: (value){
                if (value.isEmpty){
                  return 'Please enter email';
                }
                return null;
              },
              onSaved: _saveEmail,
            ), //Email
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter password'
              ),
              obscureText: true,
              validator: (value){
                if (value.isEmpty){
                  return 'Please enter password';
                }
                return null;
              },
              onSaved: _savePassword,
            ), //password
            Padding(
              padding: const EdgeInsets.symmetric(vertical:  16.0),
              child: RaisedButton(
                onPressed: _onSignIn,
                child: Text('SIGN IN'),
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:  16.0),
              child: RaisedButton(
                onPressed: _onSignUp,
                child: Text('SIGN UP'),
              )
            )
          ],
        ),
      ),
    );

  }
}