import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    final amountController = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Container(
            height: size.height * 0.32,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey,
                    width: 1.0
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.width * 0.15,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Update your Wallet',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                      ),
                      Row(
                        children: const[Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text('0.0',style: TextStyle(color: Colors.white),) ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.account_balance_wallet,color: Colors.white,),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: amountController,
                        keyboardType: TextInputType.number,
                        decoration:  const InputDecoration(
                          prefixIcon: Icon(Icons.currency_rupee_outlined),
                          hintText: '1000',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            )
                          )
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(onPressed: (){}, child: const Text('+1000')),
                          TextButton(onPressed: (){}, child: const Text('+2000')),
                          TextButton(onPressed: (){}, child: const Text('+5000'))
                        ],
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(6))
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          width: double.infinity,
                          child: const Text(textAlign: TextAlign.center,'Add money to wallet',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                        ),
                      ),
                      const SizedBox(height: 10,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
