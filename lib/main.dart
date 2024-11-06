import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: 100,right: 100),
                  shadowColor: Colors.green,
                  elevation: 9,
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  )
              ),
              onPressed: (){
                showModalBottomSheet(
                    barrierColor: Colors.blue,
                    backgroundColor: Colors.grey,
                    context: context,
                    builder: (context){
                      return Column(
                        children: [
                          Row(),
                          //
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                                prefixIcon: Icon(Icons.search),
                                prefixIconColor: Colors.red,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Phone Number',
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                                prefixIcon: Icon(Icons.phone),
                                prefixIconColor: Colors.green,
                                suffixIcon: Icon(Icons.add),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                                prefixIcon: Icon(Icons.password),
                                prefixIconColor: Colors.orange,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: (){},
                                child: Text('Submit'),
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.only(left: 50,right: 50,),
                                    shadowColor: Colors.green,
                                    elevation: 12,
                                    backgroundColor: Colors.orange.shade400,
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    )
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(onPressed: (){},
                                child: Text('forgotten password',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              TextButton(onPressed: (){},
                                child: Text('create account!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      );
                    }
                );
              },
              child: Text('Button'),
            )
          ],
        ),
      ),
    );
  }
}
