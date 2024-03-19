import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stroika/shared/theme/colors/app_colors.dart';
import 'package:stroika/shared/widgets/app_input_widget.dart';
import 'package:stroika/shared/widgets/app_submit_button_widget.dart';
import 'package:stroika/shared/widgets/two_circle_widget.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const TwoCircleWidget(),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Text('Войти'),
                    const SizedBox(height: 20),
                    AppInputWidget(
                      controller: _emailController,
                      hintText: 'E-mail',
                      filledColor: AppColors.inputColor,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    AppInputWidget(
                      controller: _passwordController,
                      hintText: 'Password',
                      filledColor: AppColors.inputColor,
                      isPasswordField: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    AppSubmitButtonWidget(
                      title: 'Войти',
                      bgColor: AppColors.mainColor,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          // Form is valid, perform registration logic here
                          // For example, navigate to the next page
                          // context.router.pushNext(RoutePath());
                        }
                      },
                    ),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
