import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quickalert/quickalert.dart';


class Myformpage extends StatefulWidget {
  const Myformpage({super.key, required this.title});

  final String title;

  @override
  State<Myformpage> createState() => _MyformpageState();
}

class _MyformpageState extends State<Myformpage> {
  TextEditingController date = TextEditingController();
  String? selectedNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Input Mood Anda"),
        ),
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView(
                children: [
                  // Widget TextField
                  SizedBox(height: 39),
                  TextField(
                    readOnly: true,
                    controller: date,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      icon: Icon(Icons.calendar_month_rounded),
                      labelText: "Pilih Tanggal",
                    ),
                    onTap: () async {
                      DateTime? pilih_tanggal = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: ColorScheme.light(
                                primary: Colors.blue, // header background color
                                onPrimary: Colors.black, // header text color
                                onSurface: Colors.black, // body text color
                              ),
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                  primary: Colors.black, // button text color
                                ),
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );
                      if (pilih_tanggal != null) {
                        String formattedDate =
                        DateFormat('dd-MM-yyyy').format(pilih_tanggal);
                        date.text = formattedDate;
                      }
                    },
                  ),
                  SizedBox(
                    height: 32,
                    width: 32,
                  ), // memberikan spasi sebesar 16 pixel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // memberikan spasi sebesar 16 pixel
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedNumber = '😡';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: selectedNumber == '😡'
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '😡',
                            style: TextStyle(
                              fontSize: 32,
                              color: selectedNumber == '😡'
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8), // memberikan spasi sebes
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedNumber = '😑';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: selectedNumber == '😑'
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '😑',
                            style: TextStyle(
                              fontSize: 32,
                              color: selectedNumber == '😑'
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8), // memberikan spasi sebesar 8 pixel
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedNumber = '😐';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: selectedNumber == '😐'
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '😐',
                            style: TextStyle(
                              fontSize: 32,
                              color: selectedNumber == '😐'
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8), // memberikan spasi sebesar 8 pixel
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedNumber = '🙂';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: selectedNumber == '🙂'
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '🙂',
                            style: TextStyle(
                              fontSize: 32,
                              color: selectedNumber == '🙂'
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8), // memberikan spasi sebesar 8 pixel
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedNumber = '🤩';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: selectedNumber == '🤩'
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '🤩',
                            style: TextStyle(
                              fontSize: 32,
                              color: selectedNumber == '🤩'
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8)
                    ],
                  ),
                  SizedBox(
                    height: 32,
                    width: 200,
                  ), // memberikan spasi sebesar 16 pixel

                  TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      labelText: 'Catatan',
                      hintText: 'Masukkan catatan Anda',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 32), // memberikan spasi sebesar 16 pixel
                  ElevatedButton(
                    onPressed: () {
                      QuickAlert.show(
                          context: context,
                          type: QuickAlertType.success,
                          text: 'Mood Anda Sudah Terekam!',
                          confirmBtnColor: Colors.blue,
                          backgroundColor: Colors.white);

                      Fluttertoast.showToast(
                        msg: "Data Sudah Terinput!",
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        gravity: ToastGravity.BOTTOM_RIGHT,
                      );
                    },
                    child: Text('Submit'),
                  ),

                  SizedBox(height: 32), // memberikan spasi sebesar 16 pixel
                ],
              ),
            )));
  }
}
