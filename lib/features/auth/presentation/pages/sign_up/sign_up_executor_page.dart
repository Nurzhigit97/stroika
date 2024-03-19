import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stroika/shared/theme/colors/app_colors.dart';
import 'package:stroika/shared/widgets/app_input_widget.dart';
import 'package:stroika/shared/widgets/app_submit_button_widget.dart';

@RoutePage()
class SignUpExecutorPage extends StatefulWidget {
  const SignUpExecutorPage({super.key});

  @override
  _SignUpExecutorPageState createState() => _SignUpExecutorPageState();
}

class _SignUpExecutorPageState extends State<SignUpExecutorPage> {
  final _emailController = TextEditingController();
  final _companyNameController = TextEditingController();
  final _binController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
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
              controller: _companyNameController,
              hintText: 'Company Name',
              filledColor: AppColors.inputColor,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your company name';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            AppInputWidget(
              controller: _binController,
              hintText: 'BIN',
              filledColor: AppColors.inputColor,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your BIN';
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
            AppInputWidget(
              controller: _confirmPasswordController,
              hintText: 'Confirm Password',
              isPasswordField: true,
              filledColor: AppColors.inputColor,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please confirm your password';
                } else if (value != _passwordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            AppSubmitButtonWidget(
              title: 'Регистрация',
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
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _companyNameController.dispose();
    _binController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
