import 'package:explore/view/home/home.dart';
import 'package:explore/view/home/homepage.dart';
import 'package:explore/view/home/widgets/buttons.dart';
import 'package:explore/view/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class SignPage extends StatefulWidget {
  const SignPage({ Key? key,}) : super(key: key);
  
  @override

  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 100,),
        
                Text('Hello Again!',style: TextStyle(fontSize:35,fontWeight: FontWeight.w500),),
                SizedBox(height:10,),
                Text('Welcome Back you\'ve been missed!',style: TextStyle(fontSize: 17,color: Colors.grey,),),
                SizedBox(height: 35,),
        
                TextFormField(
                  decoration:const  InputDecoration(
                    fillColor: Color.fromARGB(255, 232, 231, 231),
                    filled: true,
                    border: InputBorder.none,
                    hintText: 'Enter Email',
                    prefixIcon: Icon(Icons.email_outlined,),
                  ),
                  onChanged: (val){
                    setState(() {
                      email=val;
                    });
                  },
                ),
                SizedBox(height:15,),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 232, 231, 231),
                    filled: true,
                    border: InputBorder.none,
                    hintText: 'Enter Password',
                    prefixIcon: Icon(Icons.lock_outline,),prefixIconColor: Colors.black
                  ),
                  onChanged: (val){
                    setState(() {
                      password=val;
                    });
                  },
                ),
                SizedBox(height:17,),
        
                Container(
                  width: MediaQuery.of(context).size.width,
                  child:
                   Text('Forget Password?',textAlign: TextAlign.end ,style: TextStyle(color: Color(0xff006778),fontSize: 15),)
                ),
                SizedBox(height:17,),
                
                
                MyButtons(
                  btntext: "Sign in", 
                  onPressed:(){
                      Get.to(()=>HomePageView());

                    // if(email=='angila@gmail.com'&&password=='angila123'){
                    //   // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                    //   Get.to(()=>HomePage());
                    // }
                    // else{
                    //   print('login failed');
                    // }
                  }, ),
                SizedBox(height:20,),
        
                Row(
                  children: const [
                    Expanded(child: Divider(thickness: 1.5,)),
                    Text('  Continue with  ',style: TextStyle(color: Color.fromARGB(255, 149, 148, 148)),),
                    Expanded(child: Divider(thickness: 1.5,)),
                    
                  ],
                ),
                SizedBox(height:15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: MaterialButton(onPressed: (){},child: Image.asset('images/google.png'),)
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: MaterialButton(onPressed: (){},child: Image.asset('images/apple.png'),)
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: MaterialButton(onPressed: (){},child: Image.asset('images/facebook.png'),)
                    )
                  ],
                ),
                SizedBox(height:20,),
                InkWell(
                  onTap: (){
                    Get.to(()=>RegisterPage());
                  },
                  child: Text('Create an account',style: TextStyle(color:Color(0xff006778),fontSize: 17,decoration: TextDecoration.underline),)),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}