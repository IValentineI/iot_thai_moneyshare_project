// ignore_for_file: sort_child_properties_last

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoneyInputUi extends StatefulWidget {
  const MoneyInputUi({super.key});

  @override
  State<MoneyInputUi> createState() => _MoneyInputUiState();
}

class _MoneyInputUiState extends State<MoneyInputUi> {
  //ตัวแปรใฃ้กับ CheckBox
  bool isTip = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 201, 255),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'แชร์เงินกันเถอะ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 45.0,
            right: 45.0,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Image.asset(
                  'assets/images/money.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.moneyBill1Wave,
                      color: Colors.purple,
                    ),
                    hintText: 'ป้อนจำนวนเงิน (บาท)',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.purple,
                    ),
                    hintText: 'ป้อนจำนวนคน (คน)',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      onChanged: (paramvalue) {
                        //จำไว้นะ โค้ดใดที่มีผลต่อการแสดงผล
                        //ต้องเขียนอยู่ภายใต้ setState()
                        setState(() {
                          isTip = paramvalue!;
                        });
                      },
                      value: isTip,
                      activeColor: Colors.purple,
                      checkColor: Colors.white,
                      side: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    Text(
                      'ทิปให้พนักงานเสริฟ',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  enabled: isTip,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.coins,
                      color: Colors.purple,
                    ),
                    hintText: 'ป้อนจำนวนทิป (บาท)',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'คำนวน',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      50.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                  ),
                  label: Text(
                    'ยกเลิก',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      50.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text('Create by IValentineI SAU',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
