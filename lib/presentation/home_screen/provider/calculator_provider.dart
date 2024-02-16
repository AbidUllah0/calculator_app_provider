import 'package:flutter/cupertino.dart';

class CalculateProvider with ChangeNotifier {
  TextEditingController valueOneController = TextEditingController();
  TextEditingController valueTwoController = TextEditingController();

  ///for addition substraction multiplication and division
  String? operator;

  ///to store result of addition subsctration ...
  double? result;

  ///to display error message
  String? errorMessage;

  calculate() {
    if (valueOneController.text.isEmpty || valueTwoController.text.isEmpty) {
      errorMessage = 'Enter Both Values';
      notifyListeners();
      return;
    }
    double parsedValueOne = double.parse(valueOneController.text);
    double parsedValueTwo = double.parse(valueTwoController.text);

    switch (operator) {
      case '+':
        result = double.parse(valueOneController.text) +
            double.parse(valueTwoController.text);
        errorMessage = '';
        break;
      //or
      ///result=parsedValueOne+parsedValueTwo;
      case '-':
        result = parsedValueOne - parsedValueTwo;
        errorMessage = '';

        break;
      case '*':
        result = parsedValueOne * parsedValueTwo;
        errorMessage = '';

        break;
      case '/':
        result = parsedValueOne / parsedValueTwo;
        errorMessage = '';

        break;
      default:
        errorMessage = 'Please Select One Operator';
        print('Invalid Value');
    }
    print(result);
    notifyListeners();
  }
}
