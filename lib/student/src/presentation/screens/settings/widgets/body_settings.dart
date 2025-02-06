import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodySettings extends StatelessWidget {
  const BodySettings({super.key});

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const LogoutDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            _buildSettingsGroup(
              context,
              [
                SettingsItem(
                  icon: Icon(Icons.favorite_outlined,
                      color: Theme.of(context).primaryColor),
                  text: "المفضلة",
                ),
                SettingsItem(
                  icon: Icon(Icons.notifications_rounded,
                      color: Theme.of(context).primaryColor),
                  text: "الإشعارات",
                ),
                SettingsItem(
                  icon: Icon(Icons.nightlight_round_outlined,
                      color: Theme.of(context).primaryColor),
                  text: "المظهر",
                ),
                SettingsItem(
                  icon: Icon(Icons.support_agent_rounded,
                      color: Theme.of(context).primaryColor),
                  text: "الدعم الفني",
                ),
                SettingsItem(
                  icon: Icon(Icons.privacy_tip_rounded,
                      color: Theme.of(context).primaryColor),
                  text: "سياسة الخصوصية",
                ),
                SettingsItem(
                  icon: Icon(Icons.info_outline,
                      color: Theme.of(context).primaryColor),
                  text: "معلومات التطبيق",
                ),
              ],
            ),
            SizedBox(height: 20.h),
            _buildSettingsGroup(
              context,
              [
                SettingsItem(
                  icon: Icon(Icons.logout_outlined, color: Colors.red[400]),
                  text: "تسجيل خروج",
                  textColor: Colors.red[400],
                  onTap: () => _showLogoutDialog(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsGroup(BuildContext context, List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(children: children),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final Widget icon;
  final String text;
  final Function()? onTap;
  final Color? textColor;

  const SettingsItem({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
          leading: Container(
            width: 40.w,
            height: 40.h,
            // decoration: BoxDecoration(
            //   color: Colors.grey[50],
            //   borderRadius: BorderRadius.circular(10),
            // ),
            child: icon,
          ),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: textColor ?? Colors.black87,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15.sp,
            color: Colors.grey[600],
          ),
          onTap: onTap,
        ),
        if (text != "تسجيل خروج") Divider(height: 1, color: Colors.grey[100]),
      ],
    );
  }
}

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Container(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 55.w,
              height: 55.h,
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.logout_rounded,
                size: 40.sp,
                color: Colors.red[400],
              ),
            ),
            SizedBox(height: 15.h),
            // Text(
            //   'تسجيل الخروج',
            //   style: TextStyle(
            //     fontSize: 18.sp,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),

            Text(
              'هل تريد بالفعل تسجيل الخروج ؟',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'لا',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<CheckAuthBloc>()
                        .add(const CheckAuthEvent.logout());
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                      vertical: 10.h,
                    ),
                  ),
                  child: Text(
                    'نعم',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
