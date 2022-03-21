import 'package:flutter/material.dart';
import 'package:tourou/ui/templates/edit_profile_template.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController userNameController;
  late TextEditingController detailController;

  @override
  void initState() {
    userNameController = TextEditingController();
    detailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    userNameController.dispose();
    detailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EditProfileTemplate(
      backFunction: () {},
      imageFunction: () {},
      userNameController: userNameController,
      detailController: detailController,
      saveFunction: () {},
    );
  }
}
