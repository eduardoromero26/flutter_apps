import 'package:auth/presentation/screens/login_screen.dart';
import 'package:commons/style/color_theme.dart';
import 'package:commons/style/font_styles.dart';
import 'package:commons/widgets/atoms/button/expanded_button.dart';
import 'package:commons/widgets/atoms/textform_field/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Restablecer contraseña',
          style: TypographyTheme.fontBody1CalendarWhite,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        backgroundColor: ColorsTheme.primaryCoast,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                'Ingresa tu correo electrónico para restablecer tu contraseña',
                style: TypographyTheme.fontH3,
              ),
            ),
            CustomTextFormField(
              controller: emailController,
              hintText: 'Correo electrónico',
              prefixIcon: const Icon(Icons.email),
            ),
            const SizedBox(height: 8),
            ExpandedButton(
              onPressed: () async {
                if (emailController.text.isNotEmpty &&
                    emailController.text.contains('@')) {
                  
                  }
              },
              text: 'Enviar correo',
            ),
          ],
        ),
      ),
    );
  }
}
