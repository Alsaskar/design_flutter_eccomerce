import 'package:flutter/material.dart';
import 'package:ecommerce/widget/BuildDrawer.dart';

class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final formKey = GlobalKey<FormState>();
  TextEditingController passOld = TextEditingController();
  TextEditingController passNew = TextEditingController();
  TextEditingController confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BuildDrawer(),
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 10.0),
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(height: 10, color: Colors.black),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                children: [
                  Text(
                    "Change Password",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: TextFormField(
                            controller: passOld,
                            decoration: InputDecoration(
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(05.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(05.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(05.0),
                              ),
                              contentPadding: EdgeInsets.only(
                                left: 05.0,
                                bottom: 02.0,
                                top: 02.0,
                                right: 05.0,
                              ),
                              labelText: "Password Lama",
                              hintText: "Masukkan Password Lama",
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "tidak boleh kosong";
                              }

                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: TextFormField(
                            controller: passNew,
                            decoration: InputDecoration(
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(05.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(05.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(05.0),
                              ),
                              contentPadding: EdgeInsets.only(
                                left: 05.0,
                                bottom: 02.0,
                                top: 02.0,
                                right: 05.0,
                              ),
                              labelText: "Password Baru",
                              hintText: "Masukkan Password Baru",
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "tidak boleh kosong";
                              }

                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: TextFormField(
                            controller: confirmPass,
                            decoration: InputDecoration(
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(05.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(05.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(05.0),
                              ),
                              contentPadding: EdgeInsets.only(
                                left: 05.0,
                                bottom: 02.0,
                                top: 02.0,
                                right: 05.0,
                              ),
                              labelText: "Konfirmasi Password",
                              hintText: "Masukkan Konfirmasi Password",
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "tidak boleh kosong";
                              }

                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 05.0),
                          child: SizedBox(
                            width: 140.0,
                            child: RaisedButton(
                              color: Colors.blue,
                              child: Text(
                                "Ganti Password",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                if (formKey.currentState.validate()) {
                                  print("berhasil");
                                }
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
