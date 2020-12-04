import 'package:flutter/material.dart';

import 'operation_button.dart';

class BalanceOperations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width - 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MyBalance',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '\$ 50000.00',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OperationButton(
                  icon: Icons.payments,
                  iconColor: Color.fromRGBO(77, 106, 247, 1.0),
                  buttonColor: Color.fromRGBO(243, 243, 254, 1.0),
                  text: 'Add Money',
                ),
                OperationButton(
                  icon: Icons.account_balance,
                  iconColor: Color.fromRGBO(108, 228, 212, 1.0),
                  buttonColor: Color.fromRGBO(238, 251, 250, 1.0),
                  text: 'Withdraw',
                ),
                OperationButton(
                  icon: Icons.swap_horiz,
                  iconColor: Color.fromRGBO(249, 121, 117, 1.0),
                  buttonColor: Color.fromRGBO(254, 242, 242, 1.0),
                  text: 'Transfer',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
