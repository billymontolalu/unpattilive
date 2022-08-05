import 'package:flutter/material.dart';

class HalamanAwalUser extends StatefulWidget {
  const HalamanAwalUser({Key? key}) : super(key: key);

  @override
  State<HalamanAwalUser> createState() => _HalamanAwalUserState();
}

class _HalamanAwalUserState extends State<HalamanAwalUser> {
  Color warnautama = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: warnautama,
        title: const Text('HALAMAN AWAL USER'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30,),
              const Text('SELAMAT DATANG',style: TextStyle(fontSize: 20),),
              const SizedBox(height: 7),
              const Text('NAMA USER',textAlign: TextAlign.center,),
              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width*(9/10),
                height: 400,
                decoration: const BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(),
              ),
              const SizedBox(height: 50,),
              ElevatedButton(
              // ignore: sort_child_properties_last
              child: const Text('LOGOUT'),
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 17, 30, 108),
                onPrimary: Colors.white,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ))
            ),
            ],
          ),
        ),
      )
    );
  }
}