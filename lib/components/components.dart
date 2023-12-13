import 'package:flutter/material.dart';
import '../utils.dart';

class textform extends StatelessWidget {

  final TextInputType type;
  final String label;
  Function validate;
  bool password ;
  String hiddenlabel ;

  textform({Key? key,

    required this.type,
    required this.label,
    required this.validate,
    this.password = false,
    this.hiddenlabel = ' ',

  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      keyboardType: type,
      decoration: InputDecoration(
        labelText: label,
        hintText: hiddenlabel,hintStyle: TextStyle(fontSize: 14.0),
        border: OutlineInputBorder(borderRadius:BorderRadius.circular(30.0)),
      ),
      obscureText: password,
      validator: validate(),
    );
  }
}

class defultButton extends StatelessWidget {
  final String text;
  final Function onpress;

  defultButton({Key? key,

    required this.text,
    required this.onpress,

  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // frame4zNu (132:16)
      onPressed: ()
      {
        onpress();
      },
      style: TextButton.styleFrom (
        padding: EdgeInsets.zero,
      ),
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration (
          color: Color(0xbc4aa7b8),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            text,
            style: SafeGoogleFont (
              'Outfit',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff26343b),
            ),
          ),
        ),
      ),
    );
  }
}

class backButton extends StatelessWidget {

  final Alignment position;

  final Function onpress;

  backButton({Key? key,

    required this.position,
    required this.onpress,

  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: position,
      child: CircleAvatar(
        child: TextButton(
          // frame4zNu (132:16)
          onPressed: ()
          {
            onpress();
          },
          style: TextButton.styleFrom (
            padding: EdgeInsets.zero,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey[300],
            ),
            child: Center(
                child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)
            ),
          ),
        ),
      ),
    );
  }
}


