import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class Account{
  String userName;
  String userAccountNumber;
  double balance;
  Account(this.userName, this.userAccountNumber, this.balance);
  /// deposit
  void balanceDeposit(double amount){
    if(amount > 0){
      balance = balance + amount;
      print('Balance Added! $amount');
      print('New Balance is: $balance\n\n');
    } else{
      print('Please add a positive value');
    }
  }
  /// withdraw
  void withdraw(double amount){
    if(amount <= balance && amount > 0){
      balance = balance - amount;
    } else {
      print('Something went wrong');
    }
  }
  void displayAccount(){
    print('Account Holder: $userName');
    print('Account Number: $userAccountNumber');
    print('Total Balance: $balance\n\n');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("Bank Deposit"),
      theme: ThemeData(scaffoldBackgroundColor: Colors.cyanAccent),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bank Deposit',
          style: TextStyle(color: Colors.black),
        ),
        toolbarHeight: 80,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(15),
            height: double.infinity,
            width: 550,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: changeState(),
                    child: Container(
                      width: 160,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)
                      ),

                    ) ,
                  ),
                  const SizedBox(height: 20,),
                  Center(
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.amber, width: 1),
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //const SizedBox(height: 10,width: 10,),
                          const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10)),
                          Center(
                            child: SizedBox(
                              width: 250,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Enter your deposit amount',
                                  labelStyle:const TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.amber, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    // Border when the field is focused
                                    borderSide: const BorderSide(
                                        color: Colors.amber, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          const Center(
                              child: Text(
                            "your current amount",
                            style: TextStyle(color:Colors.white),
                          )),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                border: Border.all(color: Colors.amber, width: 1),
                                boxShadow: const [
                                  BoxShadow(
                                      //color: Colors.indigoAccent,
                                      blurRadius: 0,
                                      blurStyle: BlurStyle.solid,
                                      //spreadRadius: 2
                                    ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        animationDuration: const Duration(seconds: 2,),
                        foregroundColor: Colors.indigoAccent,
                        backgroundColor: Colors.cyanAccent,
                        side: const BorderSide(
                            color: Colors.amber,
                            width: 1), // Button border
                        fixedSize: const Size(280, 50),
                        // Fixed size
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  changeState() {}
}
