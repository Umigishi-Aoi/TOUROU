// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../templates/new_tourou_template.dart';

class NewTourouPage extends StatefulWidget {
  const NewTourouPage({Key? key}) : super(key: key);

  @override
  State<NewTourouPage> createState() => _NewTourouPageState();
}

class _NewTourouPageState extends State<NewTourouPage> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NewTourouTemplate(
      buttonFunction: () {},
      controller: _controller,
      checkFunction: (flag) {},
      backFunction: () {},
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
