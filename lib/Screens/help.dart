import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
    final List<bool> _isOpen = [false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chalo Bazaar FAQs'),
        elevation: 0,
      ),
      body: Column(
        children: <ExpansionPanelList>[
          ExpansionPanelList(
            animationDuration: const Duration(seconds: 1),
            elevation: 0,
          expansionCallback: (int i, bool isOpen) {
    setState(() {
    _isOpen[i] = !isOpen;
    });
    },
            children: [
              ExpansionPanel(
                 headerBuilder:  (context, isOpen){
                    return
                         const Padding(
                           padding:  EdgeInsets.only(left: 8.0,top: 14.0),
                           child:  Text('What is Chalo Bazaar?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),textAlign: TextAlign.start,),
                         );
                  },
                body: const Padding(
                  padding:  EdgeInsets.only(left:8.0,bottom: 8.0),
                  child:  Text('Chalo Bazaar is an all purpose app that helps the users with the shopping related tasks and queries',style: TextStyle(color: Colors.grey,fontSize: 16,),textAlign: TextAlign.start,),
                ),
                isExpanded: _isOpen[0]
              ),
              ExpansionPanel(
                  headerBuilder:  (context, isOpen){
                    return const Padding(
                        padding: EdgeInsets.only(left: 8,top: 14.0),
                          child: Text('Who can use this app?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),textAlign: TextAlign.start,),
                        );
                  },
                  body: const Padding(
                    padding:  EdgeInsets.only(left: 8.0,bottom: 8.0),
                    child:  Text('Anyone willing to look to shop for a certain product can use the app',style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.start,),
                  ),
                  isExpanded: _isOpen[1]
              ),
              ExpansionPanel(
                  headerBuilder:  (context, isOpen){
                    return const Padding(
                        padding: EdgeInsets.only(left: 8,top: 14.0),
                        child:  Text('What are the payment methods available?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),));
                  },
                  body: const Padding(
                    padding:  EdgeInsets.only(left: 8.0,bottom: 8.0),
                    child:  Text('Chalo Bazaar provides the options to pay in cash, through UPI and credit card.',style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.start,),
                  ),
                  isExpanded: _isOpen[2]
              ),
              ExpansionPanel(
                  headerBuilder:  (context, isOpen){
                    return const Padding(
                        padding: EdgeInsets.only(left: 8,top: 14.0),
                        child:  Text('How long do to the cashback last?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),));
                  },
                  body: const Padding(
                    padding:  EdgeInsets.only(left: 8.0,bottom: 8.0),
                    child:  Text('The Cashback points usually last 365 days from the day of transaction.',style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.start,),
                  ),
                  isExpanded: _isOpen[3]
              )
            ],
          )

        ],
      ),
    );
  }
}
