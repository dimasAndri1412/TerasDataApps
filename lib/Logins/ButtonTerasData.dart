import 'package:flutter/material.dart';
import 'package:terasdata_apps/Logins/FormTerasData.dart';

class buttonTerasData extends StatefulWidget {
  const buttonTerasData({super.key});

  @override
  State<buttonTerasData> createState() => _buttonTerasDataState();
}

class _buttonTerasDataState extends State<buttonTerasData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            showBottomSheet(context);
          },
          child: Container(
            height: 50,
            width: 300,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  // Fungsi untuk memunculkan bottom sheet
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        // Menghitung tinggi layar yang tersedia
        final availableHeight = MediaQuery.of(context).size.height * 0.8;

        return Container(
          constraints: BoxConstraints(
            maxHeight: availableHeight,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 48),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context); // Tutup bottom sheet
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      height: 10
                  ),
                  Text(
                    'LOGIN FORM',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Form login
                  formTerasData(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
