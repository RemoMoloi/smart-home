import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmartDeviceBox extends StatelessWidget {

  final String smartDeviceName;
  final String iconPath;
  final bool powerOn;
  void Function(bool)? onChanged;


 SmartDeviceBox({super.key, 
  required this.smartDeviceName, 
  required this.iconPath, 
  required this.powerOn,
  required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: powerOn ? Colors.grey[900] : const Color.fromARGB(44, 164, 167, 189),
          borderRadius: BorderRadius.circular(24),
        ),
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // icon
              Image.asset(
              iconPath, 
              height:65,
              color: powerOn ? Colors.white: Colors.grey.shade700,
              ),

              // smart device name + switch 
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Column(
                        children: [
                          Text(
                          smartDeviceName,
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: powerOn ? Colors.white : Colors.black
                          ),
                          ),
                           CupertinoSwitch(
                            value: powerOn, 
                            onChanged: onChanged,
                            ),
                        ],
                      ),
                    ),
                  ),
                 
                 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}