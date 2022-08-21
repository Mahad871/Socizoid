import 'package:flutter/material.dart';
import 'package:socizoid/pages/constants.dart';

circularProgress() {
  return Center(
    child: Container(
      child: CircularProgressIndicator(
        color: kPrimaryAppColor,
      ),
    ),
  );
}

linearProgress() {
  return Container(
    child: LinearProgressIndicator(
      color: kPrimaryAppColor,
      backgroundColor: Colors.white.withOpacity(0),
    ),
  );
}
