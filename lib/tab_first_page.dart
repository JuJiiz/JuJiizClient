import 'package:flutter/material.dart';
import 'package:nud_core/common_widgets/nud_text.dart';
import 'package:nud_core/routing/page_routing.dart';

class TabFirstPage extends StatelessWidget {
  const TabFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: TextButton(
          onPressed: () =>
              PageRouting.pushReplacementNamed(context, '/somewhere'),
          child: const NudText(
            'GO TO SOMEWHERE',
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
