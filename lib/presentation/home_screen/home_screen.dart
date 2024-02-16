import 'package:calculator_app/presentation/home_screen/provider/calculator_provider.dart';
import 'package:calculator_app/widgets/custom_button.dart';
import 'package:calculator_app/widgets/custom_text.dart';
import 'package:calculator_app/widgets/custom_textfield.dart';
import 'package:calculator_app/widgets/operator_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CalculateProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'My Calculator',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Enter Value 1',
              controller: provider.valueOneController,
              onChanged: (value) {
                ///this is only used for button color changes automatically when you enter both num

                setState(() {});
              },
            ),
            SizedBox(height: 20),
            CustomTextField(
              hintText: 'Enter Value 2',
              controller: provider.valueTwoController,
              onChanged: (value) {
                setState(() {});
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: ["+", '-', '*', '/']
                  .map(
                    (e) => OperatorButton(
                      btnText: e,
                      btnColor:
                          provider.operator == e ? Colors.blue : Colors.grey,
                      onPressed: () {
                        provider.operator = e;

                        ///this is used to change the color run time when selected
                        setState(() {});
                      },
                    ),
                  )
                  .toList(),
              //[
              // OperatorButton(
              //   btnText: '+',
              //   btnColor:
              //       provider.operator == '+' ? Colors.blue : Colors.grey,
              //   onPressed: () {
              //     provider.operator = '+';
              //
              //     ///this is used to change the color run time when selected
              //     setState(() {});
              //   },
              // ),
              // OperatorButton(
              //   btnText: '-',
              //   btnColor:
              //       provider.operator == '-' ? Colors.blue : Colors.grey,
              //   onPressed: () {
              //     provider.operator = '-';
              //     ///this is used to change the color run time when selected
              //     setState(() {});
              //   },
              // ),
              // OperatorButton(
              //   btnText: '*',
              //   btnColor:
              //       provider.operator == '*' ? Colors.blue : Colors.grey,
              //   onPressed: () {
              //     provider.operator = '*';
              //
              //     ///this is used to change the color run time when selected
              //     setState(() {});
              //   },
              // ),
              // OperatorButton(
              //   btnText: '/',
              //   btnColor:
              //       provider.operator == '/' ? Colors.blue : Colors.grey,
              //   onPressed: () {
              //     provider.operator = '/';
              //
              //     ///this is used to change the color run time when selected
              //     setState(() {});
              //   },
              // ),
              // ],
            ),
            SizedBox(height: 20),
            CustomButton(
              btnText: 'Calculate',
              height: 50,
              fontSize: 30,
              width: MediaQuery.of(context).size.height * 0.4,
              btnColor: provider.valueOneController.text.isEmpty ||
                      provider.valueTwoController.text.isEmpty
                  ? Colors.grey
                  : Colors.blue,
              onPressed: () {
                provider.calculate();
              },
            ),
            CustomText(
                text: provider.result == null
                    ? 'Before Calculation'
                    : provider.result.toString()),
            if (provider.errorMessage != null)
              CustomText(
                text: provider.errorMessage.toString(),
                color: Colors.red,
              ),
          ],
        ),
      ),
    );
  }
}
