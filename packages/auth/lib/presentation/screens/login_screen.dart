import 'package:auth/module.dart';
import 'package:commons/style/color_theme.dart';
import 'package:commons/widgets/atoms/button/custom_text_button.dart';
import 'package:commons/widgets/atoms/button/expanded_button.dart';
import 'package:commons/widgets/atoms/snackbar/custom_snackbar.dart';
import 'package:commons/widgets/atoms/textform_field/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:commons/modules.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final ScaffoldMessengerState  scaffoldMessengerState = ScaffoldMessenger.of(context);

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
                errorSnackBar(scaffoldMessengerState, 'Login failed, try again');
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: () {
                return LayoutBuilder(
                  builder: (context, constraints) => SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: constraints.maxHeight * 0.46,
                            width: double.infinity,
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
                                      color: ColorsTheme.primaryCoast,
                                      // image: DecorationImage(
                                      //   image: const AssetImage(
                                      //     'assets/images/hero_login.jpg',
                                      //   ),
                                      //   fit: BoxFit.cover,
                                      //   colorFilter: ColorFilter.mode(
                                      //     Colors.black.withOpacity(0.72),
                                      //     BlendMode.darken,
                                      //   ),
                                      // ),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       vertical: 12, horizontal: 40),
                                  //   child: Image.asset(
                                  //     'assets/images/logo_comunapp.png',
                                  //     height: constraints.maxHeight * 0.12,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                const SizedBox(height: 16),
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
                                            LoginWithEmail(emailController.text,
                                                passwordController.text),
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
                          )
                        ],
                      ),
                    ),
                  ),
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
