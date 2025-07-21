import 'package:flutter/material.dart';
import 'package:terasdata_apps/Logins/formterasdata.dart';

class Buttonterasdata extends StatefulWidget {
  const Buttonterasdata({super.key});

  @override
  State<Buttonterasdata> createState() => _ButtonTerasDataState();
}

class _ButtonTerasDataState extends State<Buttonterasdata> {
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
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
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
          decoration: const BoxDecoration(
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
                      const SizedBox(width: 48),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context); // Tutup bottom sheet
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                      height: 10
                  ),
                  const Text(
                    'LOGIN FORM',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Form login
                  const Formterasdata(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
