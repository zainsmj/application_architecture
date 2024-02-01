import 'package:my_clean_architecture_sample/core/config/routes/app_navigation.dart';
import 'package:my_clean_architecture_sample/core/config/routes/app_routes.dart';
import 'package:my_clean_architecture_sample/core/utils/constants/app_constants.dart';
import 'package:my_clean_architecture_sample/core/utils/extensions/validation_extension.dart';
import 'package:my_clean_architecture_sample/core/widgets/buttons/elevated_button_widget.dart';
import 'package:my_clean_architecture_sample/core/widgets/buttons/outlined_button_widget.dart';
import 'package:my_clean_architecture_sample/core/widgets/input_and_selections/text_form_field_widget.dart';
import 'package:my_clean_architecture_sample/dependency_injection.dart';
import 'package:my_clean_architecture_sample/modules/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  AuthenticationBloc get authenticationBloc => sl();

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: authenticationBloc,
        child: const LoginScreenContent(),
      ),
    );
  }
}

class LoginScreenContent extends StatefulWidget {
  const LoginScreenContent({super.key});

  @override
  State<LoginScreenContent> createState() => _LoginScreenContentState();
}

class _LoginScreenContentState extends State<LoginScreenContent> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.screenContentHorizontalPadding,
        vertical: AppConstants.screenContentVerticalPadding,
      ),
      child: Form(
        key: AppConstants.globalFormKey,
        child: Column(
          children: [
            SizedBox(height: AppConstants.formFieldSpacing * 20),

            // EMAIL
            TextFormFieldWidget(
              labelText: "Email",
              hintText: "johndoe@email.com",
              controller: _emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isValidEmail) {
                  return null;
                } else {
                  return "Please enter valide email address";
                }
              },
            ),
            SizedBox(height: AppConstants.formFieldSpacing),

            // PASSWORD
            TextFormFieldWidget(
              labelText: "Password",
              controller: _passwordController,
              obscureText: true,
            ),
            SizedBox(height: AppConstants.formFieldSpacing),

            // LOGIN BUTTON
            BlocConsumer<AuthenticationBloc, AuthenticationState>(
              listener: (context, state) {
                if (state is LoginErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.errorMsg),
                      backgroundColor: Colors.red,
                    ),
                  );
                }

                if (state is LoginSuccessState) {
                  AppNavigation.pushReplacementNamed(AppRoutes.landing);
                }
              },
              builder: (context, state) {
                if (state is LoginLoadingState) {
                  // SHOW LOADER
                }

                return ElevatedButtonWidget(
                  buttonLabel: "Sign In",
                  onPressed: () {
                    if (AppConstants.globalFormKey.currentState!.validate()) {
                      context.read<AuthenticationBloc>().add(
                            LoginEvent(
                              email: _emailController.text,
                              password: _passwordController.text,
                            ),
                          );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Error in form validations"),
                        ),
                      );
                    }
                  },
                );
              },
            ),

            // FORGOT PASSWORD
            TextButton(
              onPressed: () {},
              child: const Text("Forgot Password?"),
            ),

            // SIGNUP BUTTON
            OutlinedButtonWidget(
              buttonLabel: "Sign Up",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
