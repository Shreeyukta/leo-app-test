import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {

  String _name;
  String _email;
  String _club;
  String _role;
  String _phoneNumber;
  String _bloodtype;
  String _address;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 30,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildClub() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Club'),
      maxLength: 40,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Club is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _club = value;
      },
    );
  }

  Widget _buildRole() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Role'),
      maxLength: 30,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _role = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone number is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _phoneNumber = value;
      },
    );
  }

  Widget _buildBloodtype() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Blood Type'),
      maxLength: 5,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Blood Type is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _bloodtype = value;
      },
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      maxLength: 30,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Address is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _address = value;
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _buildName(),
              _buildEmail(),
              _buildAddress(),
              _buildClub(),
              _buildRole(),
              _buildPhoneNumber(),
              _buildBloodtype(),
              
              SizedBox(height: 1),
              RaisedButton(
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                onPressed: () {
                  if (!_formKey.currentState.validate()) {
                    return;
                  }

                  _formKey.currentState.save();

                  print(_name);
                  print(_email);
                  print(_phoneNumber);
                  print(_role);
                  print(_club);
                  print(_address);
                  print(_bloodtype);

                  //Send to API
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }