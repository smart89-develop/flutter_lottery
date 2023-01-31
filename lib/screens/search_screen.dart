import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heroicons/heroicons.dart';
import 'package:sm89_flutter_lottery/consts/color_consts.dart';
import 'package:sm89_flutter_lottery/widgets/text_widget.dart';
import 'package:size_config/size_config.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController provinceController = new TextEditingController();
  bool displayProvinces = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: TextWidget(
            text: 'Dò vé số',
            textSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
          actions: [
            IconButton(
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2021),
                    lastDate: DateTime.now());
              },
              icon: HeroIcon(
                HeroIcons.calendarDays,
                style: HeroIconStyle.outline,
                size: 24.sp,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.h,
                ),
                TextWidget(text: 'Chọn Tỉnh/TP', textSize: 16.sp),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(28, 52, 84, 0.26)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w, bottom: 1.h),
                    child: TextField(
                      controller: provinceController,
                      decoration: InputDecoration(
                        hintText: 'Miền Bắc',
                        border: InputBorder.none,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              displayProvinces = !displayProvinces;
                            });
                          },
                          child: SvgPicture.asset(
                            'assets/icons/Dropdown Triangle.svg',
                            width: 20.w,
                          ),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextWidget(text: 'Chọn ngày cần xem', textSize: 16.sp),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(28, 52, 84, 0.26)),
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w, bottom: 1.h),
                    child: TextField(
                      controller: provinceController,
                      decoration: InputDecoration(
                        hintText:
                            'Hôm nay, ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () {
                            showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2021),
                                lastDate: DateTime.now());
                          },
                          icon: HeroIcon(
                            HeroIcons.calendarDays,
                            style: HeroIconStyle.outline,
                            size: 24.sp,
                            color: kColors.secondaryColor,
                          ),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextWidget(text: 'Nhập số cần xem', textSize: 16.sp),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(28, 52, 84, 0.26)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w, bottom: 1.h),
                    child: TextField(
                      controller: provinceController,
                      decoration: InputDecoration(
                        hintText: 'Số thần tài',
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Center(
                  child: MaterialButton(
                    height: 46.h,
                    minWidth: 70.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: TextWidget(
                      text: 'Xem kết quả',
                      textSize: 16.sp,
                      color: Colors.white,
                    ),
                    onPressed: () => {},
                    splashColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
