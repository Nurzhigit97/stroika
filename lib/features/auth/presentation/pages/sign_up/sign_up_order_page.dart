import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stroika/shared/app_router/app_router.gr.dart';
import 'package:stroika/shared/gen/assets.gen.dart';
import 'package:stroika/shared/theme/colors/app_colors.dart';
import 'package:stroika/shared/widgets/app_input_widget.dart';
import 'package:stroika/shared/widgets/app_submit_button_widget.dart';

@RoutePage()
class SignUpOrderPage extends StatefulWidget {
  const SignUpOrderPage({super.key});

  @override
  _SignUpOrderPageState createState() => _SignUpOrderPageState();
}

class _SignUpOrderPageState extends State<SignUpOrderPage> {
  final _emailController = TextEditingController();
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
              controller: _passwordController,
              hintText: 'Password',
              isPasswordField: true,
              filledColor: AppColors.inputColor,
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
                  // Form is valid, navigate to MainNavigator
                  context.router.replace(const MainNavigator());
                }
              },
            ),
            const SizedBox(height: 70),
            const Divider(color: Color(0xffE8ECF4), height: 1.5),
            const SizedBox(height: 10),
            const Text(
              'Или регистрация',
              style: TextStyle(
                color: Color(0xff6A707C),
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
                height: 0,
                letterSpacing: -0.24,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconWithBorder(
                  icon: Assets.images.svg.google.svg(
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(width: 8),
                _buildIconWithBorder(
                  icon: Assets.images.svg.facebook.svg(
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(width: 8),
                _buildIconWithBorder(
                  icon: Assets.images.svg.apple.svg(
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Widget _buildIconWithBorder({required Widget icon}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffE8ECF4),
          width: 2,
        ),
      ),
      child: icon,
    );
  }
}
