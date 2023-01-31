import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:sm89_flutter_lottery/widgets/text_widget.dart';
import 'package:size_config/size_config.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

// void<String> returnWeekday(value) {
//   switch (value) {
//     case 1:
//       return 'Thứ hai';
//       break;
//     default:
//   }
// }

class _ResultsScreenState extends State<ResultsScreen> {
  int viewValue = 0;
  int textSizeValue = 0;
  String specialPrize = '123456';
  @override
  Widget build(BuildContext context) {
    const Map<int, String> weekdayName = {
      1: "Thứ Hai",
      2: "Thứ Ba",
      3: "Thứ Tư",
      4: "Thứ Năm",
      5: "Thứ Sáu",
      6: "Thứ Bảy",
      7: "Chủ Nhật"
    };
    // print(weekdayName[DateTime.now().subtract(Duration(days: 5)).weekday]);
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: TextWidget(
          text: 'Kết quả xổ số',
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
        child: Column(
          children: [
            SizedBox(
              height: 12.h,
            ),
            // DropdownButton(
            //   items: [],
            //   onChanged: (value) {
            //     return ;
            //   },
            // ),
            SizedBox(
              height: 16.h,
            ),
            // size config
            SizedBox(
              height: 50.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                children: [
                  Container(
                    // height: 36.h,
                    padding: EdgeInsets.all(4.w),
                    margin: EdgeInsets.only(right: 8.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.w),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          text: 'Hôm nay',
                          textSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        TextWidget(
                          text:
                              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                          textSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4.w),
                    margin: EdgeInsets.only(right: 8.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.w),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Column(
                      children: [
                        TextWidget(
                          text: 'Hôm qua',
                          textSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        TextWidget(
                          text:
                              '${DateTime.now().subtract(Duration(days: 1)).day}/${DateTime.now().subtract(Duration(days: 1)).month}/${DateTime.now().subtract(Duration(days: 1)).year}',
                          textSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4.w),
                    margin: EdgeInsets.only(right: 8.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.w),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                    child: Column(
                      children: [
                        TextWidget(
                          text:
                              '${weekdayName[DateTime.now().subtract(Duration(days: 2)).weekday]}',
                          textSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        TextWidget(
                          text:
                              '${DateTime.now().subtract(Duration(days: 2)).day}/${DateTime.now().subtract(Duration(days: 2)).month}/${DateTime.now().subtract(Duration(days: 2)).year}',
                          textSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4.w),
                    margin: EdgeInsets.only(right: 8.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.w),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                    child: Column(
                      children: [
                        TextWidget(
                          text:
                              '${weekdayName[DateTime.now().subtract(Duration(days: 3)).weekday]}',
                          textSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        TextWidget(
                          text:
                              '${DateTime.now().subtract(Duration(days: 3)).day}/${DateTime.now().subtract(Duration(days: 3)).month}/${DateTime.now().subtract(Duration(days: 3)).year}',
                          textSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4.w),
                    margin: EdgeInsets.only(right: 8.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.w),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                    child: Column(
                      children: [
                        TextWidget(
                          text:
                              '${weekdayName[DateTime.now().subtract(Duration(days: 4)).weekday]}',
                          textSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        TextWidget(
                          text:
                              '${DateTime.now().subtract(Duration(days: 4)).day}/${DateTime.now().subtract(Duration(days: 4)).month}/${DateTime.now().subtract(Duration(days: 4)).year}',
                          textSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4.w),
                    margin: EdgeInsets.only(right: 8.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.w),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                    child: Column(
                      children: [
                        TextWidget(
                          text:
                              '${weekdayName[DateTime.now().subtract(Duration(days: 5)).weekday]}',
                          textSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        TextWidget(
                          text:
                              '${DateTime.now().subtract(Duration(days: 5)).day}/${DateTime.now().subtract(Duration(days: 5)).month}/${DateTime.now().subtract(Duration(days: 5)).year}',
                          textSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4.w),
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.w),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                    child: Column(
                      children: [
                        TextWidget(
                          text:
                              '${weekdayName[DateTime.now().subtract(Duration(days: 6)).weekday]}',
                          textSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        TextWidget(
                          text:
                              '${DateTime.now().subtract(Duration(days: 6)).day}/${DateTime.now().subtract(Duration(days: 6)).month}/${DateTime.now().subtract(Duration(days: 6)).year}',
                          textSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),

            TextWidget(text: 'Ký hiệu trúng giải Đặc Biệt', textSize: 14.sp),
            SizedBox(
              height: 6.h,
            ),
            TextWidget(
              text: '15An-6An-8an-36an-10an-11an'.toUpperCase(),
              textSize: 18.sp,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
            ),
            Container(
              height: 16.h,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(25, 59, 103, 0.1),
                  ),
                ),
              ),
            ),
            Table(
              border: TableBorder.all(
                color: Color.fromRGBO(25, 59, 103, 0.05),
              ),
              columnWidths: <int, TableColumnWidth>{
                0: FixedColumnWidth(64.w),
                1: FlexColumnWidth(),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    PrizeTextWidget(
                      text: 'ĐB',
                      textSize: 16.sp,
                      red: true,
                    ),
                    PrizeTextWidget(
                      text: viewValue > 0
                          ? specialPrize.substring(viewValue == 1 ? 4 : 3)
                          : specialPrize,
                      textSize: textSizeValue == 1 ? 20.sp : 18.sp,
                      red: true,
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(25, 59, 103, 0.05),
                  ),
                  children: <Widget>[
                    PrizeTextWidget(
                      text: 'Nhất',
                      textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                      color: Color.fromRGBO(27, 43, 65, 0.72),
                      fontWeight: FontWeight.normal,
                    ),
                    PrizeTextWidget(
                      text: '20157',
                      textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    PrizeTextWidget(
                      text: 'Nhì',
                      textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                      color: Color.fromRGBO(27, 43, 65, 0.72),
                      fontWeight: FontWeight.normal,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PrizeTextWidget(
                          text: '20157',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                        ),
                        PrizeTextWidget(
                          text: '20157',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                        ),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(25, 59, 103, 0.05),
                  ),
                  children: <Widget>[
                    PrizeTextWidget(
                      text: 'Ba',
                      textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                      color: Color.fromRGBO(27, 43, 65, 0.72),
                      fontWeight: FontWeight.normal,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            PrizeTextWidget(
                              text: '20157',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                            PrizeTextWidget(
                              text: '20157',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                            PrizeTextWidget(
                              text: '20157',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            PrizeTextWidget(
                              text: '20157',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                            PrizeTextWidget(
                              text: '20157',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                            PrizeTextWidget(
                              text: '20157',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    PrizeTextWidget(
                      text: 'Tư',
                      textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                      color: Color.fromRGBO(27, 43, 65, 0.72),
                      fontWeight: FontWeight.normal,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PrizeTextWidget(
                          text: '2017',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                        ),
                        PrizeTextWidget(
                          text: '2017',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                        ),
                        PrizeTextWidget(
                          text: '2017',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                        ),
                        PrizeTextWidget(
                          text: '2017',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                        ),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(25, 59, 103, 0.05),
                  ),
                  children: <Widget>[
                    PrizeTextWidget(
                      text: 'Năm',
                      textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                      color: Color.fromRGBO(27, 43, 65, 0.72),
                      fontWeight: FontWeight.normal,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            PrizeTextWidget(
                              text: '2017',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                            PrizeTextWidget(
                              text: '2017',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                            PrizeTextWidget(
                              text: '2017',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            PrizeTextWidget(
                              text: '2017',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                            PrizeTextWidget(
                              text: '2017',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                            PrizeTextWidget(
                              text: '2017',
                              textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    PrizeTextWidget(
                      text: 'Sáu',
                      textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                      color: Color.fromRGBO(27, 43, 65, 0.72),
                      fontWeight: FontWeight.normal,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PrizeTextWidget(
                          text: '157',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                        ),
                        PrizeTextWidget(
                          text: '157',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                        ),
                        PrizeTextWidget(
                          text: '157',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                        ),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(25, 59, 103, 0.05),
                  ),
                  children: <Widget>[
                    PrizeTextWidget(
                      text: 'Bảy',
                      textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                      red: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PrizeTextWidget(
                          text: '20',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '20',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '20',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '20',
                          textSize: textSizeValue == 1 ? 18.sp : 16.sp,
                          red: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextWidget(text: 'Chế độ xem', textSize: 14),
                      SizedBox(
                        height: 4.h,
                      ),
                      CupertinoSegmentedControl<int>(
                          selectedColor:
                              Theme.of(context).colorScheme.secondary,
                          borderColor: const Color(0xffE0E0E0),
                          groupValue: viewValue,
                          children: {
                            0: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 4),
                                child: TextWidget(
                                  text: 'Đầy đủ',
                                  textSize: 16.sp,
                                  color: viewValue == 0
                                      ? Colors.white
                                      : Color.fromRGBO(24, 39, 58, 0.94),
                                )),
                            1: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 1, vertical: 4),
                                child: TextWidget(
                                  text: '2 số',
                                  textSize: 16.sp,
                                  color: viewValue == 1
                                      ? Colors.white
                                      : Color.fromRGBO(24, 39, 58, 0.94),
                                )),
                            2: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1, vertical: 4),
                              child: TextWidget(
                                text: '3 số',
                                textSize: 16.sp,
                                color: viewValue == 2
                                    ? Colors.white
                                    : Color.fromRGBO(24, 39, 58, 0.94),
                              ),
                            ),
                          },
                          onValueChanged: (viewValue) {
                            setState(() {
                              this.viewValue = viewValue;
                            });
                          })
                    ],
                  ),
                  Column(
                    children: [
                      TextWidget(text: 'Cỡ chữ', textSize: 14),
                      SizedBox(
                        height: 4.h,
                      ),
                      CupertinoSegmentedControl<int>(
                          selectedColor:
                              Theme.of(context).colorScheme.secondary,
                          borderColor: const Color(0xffE0E0E0),
                          groupValue: textSizeValue,
                          children: {
                            0: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 4),
                                child: TextWidget(
                                  text: 'Thường',
                                  textSize: 16.sp,
                                  color: textSizeValue == 0
                                      ? Colors.white
                                      : Color.fromRGBO(24, 39, 58, 0.94),
                                )),
                            1: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 4),
                                child: TextWidget(
                                  text: 'To hơn',
                                  textSize: 16.sp,
                                  color: textSizeValue == 1
                                      ? Colors.white
                                      : Color.fromRGBO(24, 39, 58, 0.94),
                                )),
                          },
                          onValueChanged: (textSizeValue) {
                            setState(() {
                              this.textSizeValue = textSizeValue;
                            });
                          })
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            TextWidget(
              text: 'Thống kê đầu đuôi LOTO',
              textSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondary,
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Table(
                  border: TableBorder.all(
                    color: Color.fromRGBO(25, 59, 103, 0.05),
                  ),
                  columnWidths: <int, TableColumnWidth>{
                    0: FixedColumnWidth(48.w),
                    1: FixedColumnWidth(128.w),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: 'Đầu',
                          textSize: 14,
                        ),
                        PrizeTextWidget(
                          text: 'Đuôi',
                          textSize: 14,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '0',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '1',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '2',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '3',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '4',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '5',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '6',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '7',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '8',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '9',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                  ],
                ),
                Table(
                  border: TableBorder.all(
                    color: Color.fromRGBO(25, 59, 103, 0.05),
                  ),
                  columnWidths: <int, TableColumnWidth>{
                    0: FixedColumnWidth(128.w),
                    1: FixedColumnWidth(48.w),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: 'Đầu',
                          textSize: 14,
                        ),
                        PrizeTextWidget(
                          text: 'Đuôi',
                          textSize: 14,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.normal,
                        ),
                        PrizeTextWidget(
                          text: '0',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.normal,
                        ),
                        PrizeTextWidget(
                          text: '1',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.normal,
                        ),
                        PrizeTextWidget(
                          text: '2',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.normal,
                        ),
                        PrizeTextWidget(
                          text: '3',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.normal,
                        ),
                        PrizeTextWidget(
                          text: '4',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.normal,
                        ),
                        PrizeTextWidget(
                          text: '5',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.normal,
                        ),
                        PrizeTextWidget(
                          text: '6',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.normal,
                        ),
                        PrizeTextWidget(
                          text: '7',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.normal,
                        ),
                        PrizeTextWidget(
                          text: '8',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 59, 103, 0.05),
                      ),
                      children: <Widget>[
                        PrizeTextWidget(
                          text: '2, 0, 1, 5, 7',
                          textSize: 16.sp,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.normal,
                        ),
                        PrizeTextWidget(
                          text: '9',
                          textSize: 16.sp,
                          color: Color.fromRGBO(27, 43, 65, 0.72),
                          red: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
