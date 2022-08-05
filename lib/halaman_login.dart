import 'halaman_daftar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({Key? key}) : super(key: key);

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  Color warnautama = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: warnautama,
          title: const Text('HALAMAN LOGIN USER'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'USERNAME',
                  fillColor: Colors.orange,
                  icon: const Icon(
                    Icons.person,
                    color: Colors.orange,
                    size: 35,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                //keyboardType: TextInputType.number,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'PASSWORD',
                  fillColor: Colors.orange,
                  icon: const Icon(
                    Icons.lock,
                    color: Colors.orange,
                    size: 35,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                //keyboardType: TextInputType.number,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  // ignore: sort_child_properties_last
                  child: const Text('LOGIN'),
                  onPressed: () {
                    http.get(Uri.parse("http://localhost/unpatti/login.php"));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 17, 30, 108),
                      onPrimary: Colors.white,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ))),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Belum punya akun?',
                    style: TextStyle(fontSize: 17),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    child: const Text(
                      'Daftar',
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 17,
                          decoration: TextDecoration.underline),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HalamanDaftarUser()));
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
