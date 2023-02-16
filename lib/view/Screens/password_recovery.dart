import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  _PasswordRecoveryState createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('Forgot Password')
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child:  Text('Please enter your registered email address so we can help you recover your password',textAlign : TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: TextFormField(
                  controller: _controller,
                  decoration:  const InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.mail_outline_outlined,color: Colors.grey,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                    )
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Utils.buttonColorBlue
                    ),
                    height: 50,
                    width: double.infinity,
                    child: const Center(child:  Text('Next',style: TextStyle(fontSize: 18,color: Utils.whiteColor,fontWeight: FontWeight.w500),)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
