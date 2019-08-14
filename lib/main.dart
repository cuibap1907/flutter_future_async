import 'package:flutter/cupertino.dart';

void main()
{
  print("Program start.");
  printFileContent();
  print("Program end.");
}

printFileContent ()
{
  Future<String> fileContent = downloadAfile();
  fileContent.then((resultString) {
    print("result $resultString");
  });
}

Future<String> downloadAfile()
{
  Future<String> result = Future.delayed(Duration(seconds: 6), () {
    return "My string";
  });
  return result;
}