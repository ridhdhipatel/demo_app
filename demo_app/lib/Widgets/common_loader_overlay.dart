import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonLoaderOverlay extends StatelessWidget {
  const CommonLoaderOverlay({
    required this.visibile,
    Key? key,
  }) : super(key: key);

  final bool visibile;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibile,
      child: Stack(
        children: [
          ModalBarrier(
            color: Colors.black.withOpacity(0.2),
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CupertinoActivityIndicator(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.7,
                    ),
                    child: Text(
                      'Please Wait',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
