import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuraga_app/blocs/authentication_bloc.dart';
import 'package:nuraga_app/constant.dart';
import 'package:nuraga_app/views/sign_up.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(),
      child: Scaffold(
        body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is ErrorState) {
              return Center(child: Text(state.message));
            } else {
              return Container(
                color: kPrimaryColor,
                padding: EdgeInsets.all(24.0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        // decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.red)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white, // Ubah warna menjadi putih
                                size: 24, // Ubah ukuran menjadi 32
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Text(
                              "Selamat datang,",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryYellow),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(right: 100),
                              child: Text(
                                "Mohon masukan akun anda terlebih dahulu.",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 22,
                            ),
                            Text(
                              "SIGN IN",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              child: Column(
                                children: [
                                  TextField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                        labelText: 'Username',
                                        labelStyle: TextStyle(
                                            fontSize: 13, color: Colors.black)),
                                  ),
                                  SizedBox(height: 16.0),
                                  TextField(
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                        labelText: 'Password',
                                        labelStyle: TextStyle(
                                            fontSize: 13, color: Colors.black)),
                                  ),
                                  SizedBox(height: 16.0),
                                  Text(
                                    "Forgot Password?",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 16.0),
                                  ElevatedButton(
                                    onPressed: () {
                                      String email = emailController.text;
                                      String password = passwordController.text;
                                      BlocProvider.of<AuthenticationBloc>(
                                              context)
                                          .add(SignInEvent(
                                              email: email,
                                              password: password));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8), // Atur border radius menjadi 8
                                        ),
                                        minimumSize: Size(double.infinity, 48),
                                        backgroundColor:
                                            kPrimaryYellow // Menentukan lebar dan tinggi tombol
                                        ),
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(height: 16.0),
                                  Text("or sign in with"),
                                  SizedBox(height: 16.0),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            // Your onPressed logic here
                                          },
                                          style: ElevatedButton.styleFrom(
                                            fixedSize: Size.fromHeight(45),
                                            alignment: Alignment
                                                .centerLeft, // Mulai dari sebelah kiri
                                            backgroundColor: Colors
                                                .white, // Atur warna background menjadi putih
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  8), // Atur border radius menjadi 8
                                            ),
                                            side: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 152, 152, 152),
                                              width: 0.5,
                                            ),
                                          ),
                                          child: Container(
                                            // decoration: BoxDecoration(
                                            //     border: Border.all(
                                            //         color: Colors.red)),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    'assets/images/google.png',
                                                    width: 35,
                                                    height:
                                                        35), // Ubah path sesuai dengan lokasi logo Google Anda
                                              ],
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Your onPressed logic here
                                          },
                                          style: ElevatedButton.styleFrom(
                                            fixedSize: Size.fromHeight(45),
                                            alignment: Alignment
                                                .centerLeft, // Mulai dari sebelah kiri
                                            backgroundColor: Colors
                                                .white, // Atur warna background menjadi putih
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  8), // Atur border radius menjadi 8
                                            ),
                                            side: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 152, 152, 152),
                                              width: 0.5,
                                            ),
                                          ),
                                          child: Container(
                                            // decoration: BoxDecoration(
                                            //     border: Border.all(
                                            //         color: Colors.red)),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    'assets/images/x.png',
                                                    width: 27,
                                                    height:
                                                        27), // Ubah path sesuai dengan lokasi logo Google Anda
                                              ],
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignUpScreen()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            fixedSize: Size.fromHeight(45),
                                            alignment: Alignment
                                                .centerLeft, // Mulai dari sebelah kiri
                                            backgroundColor: Colors
                                                .white, // Atur warna background menjadi putih
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  8), // Atur border radius menjadi 8
                                            ),
                                            side: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 152, 152, 152),
                                              width: 0.5,
                                            ),
                                          ),
                                          child: Container(
                                            // decoration: BoxDecoration(
                                            //     border: Border.all(
                                            //         color: Colors.red)),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    'assets/images/facebook.png',
                                                    width: 30,
                                                    height:
                                                        30), // Ubah path sesuai dengan lokasi logo Google Anda
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 34,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
