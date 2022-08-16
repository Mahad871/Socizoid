import 'package:flutter/material.dart';

circularProgress() {
  return Center(
    child: Container(
      child: CircularProgressIndicator(
        color: Colors.amber,
      ),
    ),
  );
}

linearProgress() {
  return Container(
    child: LinearProgressIndicator(
      color: Colors.amber,
      backgroundColor: Colors.white,
    ),
  );
}
