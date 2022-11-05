import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        onPressed: () {}, 
        child: _buildButtonContent(),
      ),
    );
  }

  Widget _buildButtonContent() {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text('5', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.white,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text('Charge \$${389.85}', style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}