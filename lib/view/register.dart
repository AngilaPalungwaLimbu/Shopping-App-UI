import 'package:explore/view/home/widgets/buttons.dart';
import 'package:explore/view/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 70,),
        
                const Text('Register',style: TextStyle(fontSize:35,fontWeight: FontWeight.w500),),
                const SizedBox(height: 15,),
                const Text('Sign up to get started!',style:  TextStyle(fontSize: 17,color: Colors.grey,),),
                const SizedBox(height: 35,),
                TextFormField(
                  decoration:const  InputDecoration(
                    fillColor: Color.fromARGB(255, 232, 231, 231),
                    filled: true,
                    border: InputBorder.none,
                    hintText: 'Enter Name',
                    prefixIcon: Icon(Icons.person_outline,),
                    
                  ),
                ),
                const SizedBox(height:15,),
        
                TextFormField(
                  decoration:const  InputDecoration(
                    fillColor: Color.fromARGB(255, 232, 231, 231),
                    filled: true,
                    border: InputBorder.none,
                    hintText: 'Enter Email',
                    prefixIcon: Icon(Icons.email_outlined,),
                    
                  ),
                ),
                const SizedBox(height:15,),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 232, 231, 231),
                    filled: true,
                    border: InputBorder.none,
                    hintText: 'Enter Password',
                    prefixIcon: Icon(Icons.lock_outline,),prefixIconColor: Colors.black
                    
                  ),
                
                ),
                const SizedBox(height:15,),
        
          
                // MaterialButton(
                //   height: 50,
                //   minWidth: MediaQuery.of(context).size.width,
                //   color: const Color(0xff006778),
                //   onPressed: (){},
                //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                //   child: Text('Create account',style: TextStyle(color: Colors.white,letterSpacing: 1.2 ),),
                // ),
                
                MyButtons(btntext: 'Create Account', onPressed: (){}),
                const SizedBox(height:20,),
        
                Row(
                  children: const [
                    Expanded(child: Divider(thickness: 1.5,)),
                    Text('  Continue with  ',style: TextStyle(color: Color.fromARGB(255, 149, 148, 148)),),
                    Expanded(child: Divider(thickness: 1.5,)),
                    
                  ],
                ),
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
                SizedBox(height: 15,),
                 InkWell(
                   onTap: (){
                     Get.to(()=>SignPage());
                   },
                   child: Text('I have an account',style: const TextStyle(color:const Color(0xff006778),fontSize: 17,decoration: TextDecoration.underline),)),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}