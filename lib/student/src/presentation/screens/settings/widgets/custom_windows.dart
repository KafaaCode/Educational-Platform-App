import 'package:educational_platform_app/student/src/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomWindows {
  static void notificationWindow(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        bool isNotificationEnabled = true;
        final theme = Theme.of(context);

        return AlertDialog(
          backgroundColor: theme.cardColor,
          title: Text(
            'إعدادات الإشعارات',
            style: theme.textTheme.headlineMedium,
          ),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SwitchListTile(
                    activeTrackColor: theme.primaryColor,
                    title: Text(
                      'تفعيل الإشعارات',
                      style: theme.textTheme.bodyMedium,
                    ),
                    value: isNotificationEnabled,
                    onChanged: (bool value) {
                      setState(() {
                        isNotificationEnabled = value;
                      });
                    },
                  ),
                ],
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'إغلاق',
                style: TextStyle(color: theme.colorScheme.error),
              ),
            ),
          ],
        );
      },
    );
  }

  static void themeChangeWindow(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final theme = Theme.of(context);

        return AlertDialog(
          backgroundColor: theme.cardColor,
          title: Text(
            'تغيير الثيم',
            style: theme.textTheme.headlineMedium,
          ),
          content: BlocBuilder<ThemesCubit, ThemeMode>(
            builder: (BuildContext context, ThemeMode themeMode) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RadioListTile<bool>(
                    activeColor: theme.primaryColor,
                    title: Text(
                      'الوضع الفاتح',
                      style: theme.textTheme.bodyMedium,
                    ),
                    value: false,
                    groupValue: themeMode == ThemeMode.dark,
                    onChanged: (bool? value) {
                      if (value != null && !value) {
                        context
                            .read<ThemesCubit>()
                            .updateThemeMode(ThemeMode.light);
                      }
                    },
                  ),
                  RadioListTile<bool>(
                    activeColor: theme.primaryColor,
                    title: Text(
                      'الوضع الداكن',
                      style: theme.textTheme.bodyMedium,
                    ),
                    value: true,
                    groupValue: themeMode == ThemeMode.dark,
                    onChanged: (bool? value) {
                      if (value != null && value) {
                        context
                            .read<ThemesCubit>()
                            .updateThemeMode(ThemeMode.dark);
                      }
                    },
                  ),
                ],
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'إغلاق',
                style: TextStyle(color: theme.colorScheme.error),
              ),
            ),
          ],
        );
      },
    );
  }

  static void supportWindow(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final theme = Theme.of(context);

        return AlertDialog(
          backgroundColor: theme.cardColor,
          title: Text(
            'الدعم الفني',
            style: theme.textTheme.headlineMedium,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.email, color: theme.primaryColor),
                title: Text(
                  'البريد الإلكتروني',
                  style: theme.textTheme.bodyMedium,
                ),
                subtitle: Text(
                  'support@example.com',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.textTheme.bodyMedium?.color,
                  ),
                ),
                onTap: () {
                  // Add email handling logic here
                },
              ),
              ListTile(
                leading: Icon(Icons.phone, color: theme.primaryColor),
                title: Text(
                  'رقم الهاتف',
                  style: theme.textTheme.bodyMedium,
                ),
                subtitle: Text(
                  '+123 456 7890',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.textTheme.bodyMedium?.color,
                  ),
                ),
                onTap: () {
                  // Add phone handling logic here
                },
              ),
              ListTile(
                leading: Icon(Icons.language, color: theme.primaryColor),
                title: Text(
                  'الموقع الإلكتروني',
                  style: theme.textTheme.bodyMedium,
                ),
                subtitle: Text(
                  'www.example.com',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.textTheme.bodyMedium?.color,
                  ),
                ),
                onTap: () {
                  // Add website navigation logic here
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'إغلاق',
                style: TextStyle(color: theme.colorScheme.error),
              ),
            ),
          ],
        );
      },
    );
  }

  static void privacyPolicyWindow(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final theme = Theme.of(context);

        return AlertDialog(
          backgroundColor: theme.cardColor,
          title: Text(
            'سياسة الخصوصية',
            style: theme.textTheme.headlineMedium,
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'مرحبًا بك في منصة التعليم!',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  'نحن ملتزمون بحماية خصوصيتك وضمان أمان بياناتك. سياسة الخصوصية هذه توضح كيفية جمع واستخدام ومشاركة المعلومات التي نحصل عليها منك عند استخدامك لمنصتنا.',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  '1. المعلومات التي نجمعها:',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  '- المعلومات الشخصية: مثل الاسم، البريد الإلكتروني، رقم الهاتف، وغيرها عند التسجيل.\n'
                  '- معلومات الاستخدام: مثل الأنشطة التي تقوم بها داخل المنصة.\n'
                  '- معلومات الجهاز: مثل نوع الجهاز، نظام التشغيل، وعنوان IP.',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  '2. كيفية استخدام المعلومات:',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  '- لتقديم خدماتنا التعليمية.\n'
                  '- لتحسين تجربة المستخدم.\n'
                  '- للتواصل معك بشأن التحديثات أو الدعم الفني.',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  '3. مشاركة المعلومات:',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  '- لن نشارك معلوماتك مع أطراف ثالثة إلا بموافقتك أو إذا كان ذلك مطلوبًا بموجب القانون.',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  '4. أمان البيانات:',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  '- نستخدم تقنيات حديثة لحماية بياناتك من الوصول غير المصرح به.',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  '5. حقوقك:',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  '- يمكنك طلب الوصول إلى بياناتك أو تعديلها أو حذفها في أي وقت.',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  'إذا كان لديك أي استفسارات حول سياسة الخصوصية، لا تتردد في التواصل معنا.',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'إغلاق',
                style: TextStyle(color: theme.colorScheme.error),
              ),
            ),
          ],
        );
      },
    );
  }

  static void appInfoWindow(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final theme = Theme.of(context);

        return AlertDialog(
          backgroundColor: theme.cardColor,
          title: Text(
            'معلومات التطبيق',
            style: theme.textTheme.headlineMedium,
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'منصة التعليم',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(
                  'الإصدار: 1.0.0',
                  style: theme.textTheme.bodyMedium?.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  'وصف:',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'منصة التعليم هي تطبيق يهدف إلى توفير تجربة تعليمية متكاملة للطلاب والمعلمين. '
                  'يتيح التطبيق الوصول إلى الدروس، الاختبارات، والموارد التعليمية بسهولة.',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  'المطور:',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'فريق تطوير منصة التعليم',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  'حقوق النشر:',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '© 2025 جميع الحقوق محفوظة.',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'إغلاق',
                style: TextStyle(color: theme.colorScheme.error),
              ),
            ),
          ],
        );
      },
    );
  }
}
