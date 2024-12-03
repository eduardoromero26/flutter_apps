import 'package:auth/module.dart';
import 'package:commons/style/color_theme.dart';
import 'package:commons/style/font_styles.dart';
import 'package:commons/widgets/atoms/button/custom_text_button.dart';
import 'package:commons/widgets/atoms/button/expanded_button.dart';
import 'package:commons/widgets/atoms/snackbar/custom_snackbar.dart';
import 'package:commons/widgets/atoms/textform_field/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:commons/modules.dart';

class LoginScreen extends StatelessWidget {
  final String title;
  final String? description;
  final String? imageUrl;
  final String? logoUrl;
  const LoginScreen(
      {super.key, required this.title, this.description, this.imageUrl, this.logoUrl});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final ScaffoldMessengerState scaffoldMessengerState =
        ScaffoldMessenger.of(context);
    final primaryColor = Theme.of(context).primaryColor;

    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              loadedSuccess: (token) {
                successSnackBar(scaffoldMessengerState, 'Login success');
                context.goNamed(RoutesName.splash);
              },
              loadedFailed: (error) {
                errorSnackBar(
                    scaffoldMessengerState, 'Login failed, try again');
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: () {
                return LayoutBuilder(
                  builder: (context, constraints) => SingleChildScrollView(
                      child: constraints.maxWidth <= 880
                          ? LoginColumnView(
                              title: title,
                              description: description,
                              imageUrl: imageUrl,
                              formKey: formKey,
                              primaryColor: primaryColor,
                              emailController: emailController,
                              passwordController: passwordController,
                              constraints: constraints,
                            )
                          : LoginRowView(
                              constraints: constraints,
                              primaryColor: primaryColor,
                              imageUrl: imageUrl,
                              logoUrl: logoUrl,
                              title: title,
                              description: description,
                              formKey: formKey,
                              emailController: emailController,
                              passwordController: passwordController)),
                );
              },
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class LoginRowView extends StatelessWidget {
  const LoginRowView({
    super.key,
    required this.primaryColor,
    required this.imageUrl,
    required this.logoUrl,
    required this.title,
    this.description,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.constraints,
  });

  final Color primaryColor;
  final String? imageUrl;
  final String? logoUrl;
  final String title;
  final String? description;
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth >= 800
              ? constraints.maxWidth * 0.5
              : constraints.maxWidth * 0.62,
          color: primaryColor,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: primaryColor,
                    image: imageUrl != null
                        ? DecorationImage(
                            image: NetworkImage(
                              imageUrl ?? '',
                            ),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.52),
                              BlendMode.darken,
                            ),
                          )
                        : null),
              ),
              if (logoUrl != null)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                  child: Image.asset(
                    logoUrl ?? '',
                    height: constraints.maxHeight * 0.12,
                  ),
                ),
            ],
          ),
        ),
        Container(
          width: constraints.maxWidth >= 800
              ? constraints.maxWidth * 0.5
              : constraints.maxWidth * 0.48,
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              IntrinsicHeight(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: ColorsShadesTheme.disabledGray2,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: ColorsShadesTheme.disabledGray2,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      LoginForm(
                        title: title,
                        description: description,
                        formKey: formKey,
                        emailController: emailController,
                        passwordController: passwordController,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LoginColumnView extends StatelessWidget {
  const LoginColumnView({
    super.key,
    required this.formKey,
    required this.constraints,
    required this.primaryColor,
    required this.emailController,
    required this.passwordController,
    required this.title,
    this.description,
    this.imageUrl,
    this.logoUrl,
  });

  final GlobalKey<FormState> formKey;
  final Color primaryColor;
  final BoxConstraints constraints;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String title;
  final String? description;
  final String? imageUrl;
  final String? logoUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: constraints.maxHeight * 0.46,
          width: constraints.maxWidth,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: primaryColor,
                      image: imageUrl != null
                          ? DecorationImage(
                              image: NetworkImage(
                                imageUrl ?? '',
                              ),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.52),
                                BlendMode.darken,
                              ),
                            )
                          : null),
                ),
                if (logoUrl != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 40),
                    child: Image.asset(
                      logoUrl ?? '',
                      height: constraints.maxHeight * 0.12,
                    ),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        LoginForm(
            title: title,
            description: description,  
            formKey: formKey,
            emailController: emailController,
            passwordController: passwordController)
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.title,
    this.description,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(title,
                    style: TypographyTheme.fontH3)),
            const SizedBox(height: 8),
             Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    description ?? '',
                    style: TypographyTheme.fontH5)),
            const SizedBox(height: 12),
            // CustomAutoSuggestTextFormField(
            //   labelText: 'Condominium',
            //   prefixIcon: const Icon(Icons.home),
            //   controller: condoController,
            //   suggestionCallback: (pattern) async {
            //     return FirestoreService().searchCondoName(pattern);
            //   },
            // ),
            CustomTextFormField(
              controller: emailController,
              labelText: 'Email',
              prefixIcon: const Icon(Icons.email),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            CustomTextFormField(
              controller: passwordController,
              labelText: 'Password',
              prefixIcon: const Icon(Icons.lock),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            ExpandedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context.read<AuthBloc>().add(
                        LoginWithEmail(
                            emailController.text, passwordController.text),
                      );
                }
              },
              text: 'Login',
            ),
            const SizedBox(
              height: 8.0,
            ),
            CustomTextButton(
              onPressed: () {
                context.goNamed(RoutesName.resetPassword);
              },
              textButton: 'Forgot password',
            ),
          ],
        ),
      ),
    );
  }
}
