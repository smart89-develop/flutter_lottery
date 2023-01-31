import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heroicons/heroicons.dart';
import 'package:sm89_flutter_lottery/consts/color_consts.dart';
import 'package:sm89_flutter_lottery/widgets/text_widget.dart';
import 'package:size_config/size_config.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:intl/date_symbol_data_local.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  TextEditingController provinceController = new TextEditingController();
  TextEditingController turnController = new TextEditingController();
  List<String> provinces = [
    "Miền Bắc",
    "Miền Trung",
    "Miền Nam",
  ];
  List<String> turns = [
    "10",
    "30",
    "60",
  ];
  bool displayProvinces = false;
  bool displayTurns = false;
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: TextWidget(
          text: 'Thống kê LOTO',
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 128.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(text: 'Tỉnh/TP', textSize: 14.sp),
                        SizedBox(
                          height: 4.h,
                        ),
                        Column(
                          children: [
                            inputField("provinces", provinceController),
                            displayProvinces
                                ? selectionField(
                                    "provinces", provinceController)
                                : SizedBox(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 96.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(text: 'Số lượt quay', textSize: 14.sp),
                        SizedBox(
                          height: 4.h,
                        ),
                        Column(
                          children: [
                            inputField("turns", turnController),
                            displayTurns
                                ? selectionField("turns", turnController)
                                : SizedBox(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    height: 46.h,
                    minWidth: 70.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: TextWidget(
                      text: 'Thống kê',
                      textSize: 16.sp,
                      color: Colors.white,
                    ),
                    onPressed: () => {},
                    splashColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            PrizeTextWidget(
              text: 'Thống kê Loto\ntrong 30 lượt quay Xổ số Miền Bắc ',
              textSize: 20.sp,
              color: kColors.secondaryColor,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: double.infinity,
              child: CupertinoSegmentedControl<int>(
                  selectedColor: kColors.secondaryColor,
                  borderColor: const Color(0xffE0E0E0),
                  groupValue: groupValue,
                  children: {
                    0: Text('Về nhiều'),
                    1: Text('Về ít'),
                    2: Text('Chưa về'),
                  },
                  onValueChanged: (groupValue) {
                    setState(() {
                      this.groupValue = groupValue;
                    });
                  }),
            ),
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
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
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: <TableRow>[
                          TableRow(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(25, 59, 103, 0.05),
                            ),
                            children: <Widget>[
                              PrizeTextWidget(
                                text: 'Loto',
                                textSize: 14.sp,
                              ),
                              PrizeTextWidget(
                                text: 'Xuất hiện',
                                textSize: 14.sp,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
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
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
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
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
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
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
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
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
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
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
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
                          0: FixedColumnWidth(72.w),
                          1: FixedColumnWidth(112.w),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: <TableRow>[
                          TableRow(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(25, 59, 103, 0.05),
                            ),
                            children: <Widget>[
                              PrizeTextWidget(
                                text: 'Đặc biệt',
                                textSize: 14.sp,
                              ),
                              PrizeTextWidget(
                                text: 'Xuất hiện',
                                textSize: 14.sp,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
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
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
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
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
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
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
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
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
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
                                text: '40',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '19 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
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
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
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
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: <TableRow>[
                          TableRow(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(25, 59, 103, 0.05),
                            ),
                            children: <Widget>[
                              PrizeTextWidget(
                                text: 'Loto',
                                textSize: 14.sp,
                              ),
                              PrizeTextWidget(
                                text: 'Xuất hiện',
                                textSize: 14.sp,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
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
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
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
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
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
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
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
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
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
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
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
                          0: FixedColumnWidth(72.w),
                          1: FixedColumnWidth(112.w),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: <TableRow>[
                          TableRow(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(25, 59, 103, 0.05),
                            ),
                            children: <Widget>[
                              PrizeTextWidget(
                                text: 'Đặc biệt',
                                textSize: 14.sp,
                              ),
                              PrizeTextWidget(
                                text: 'Xuất hiện',
                                textSize: 14.sp,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
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
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
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
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
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
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
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
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              PrizeTextWidget(
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
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
                                text: '16',
                                textSize: 16.sp,
                                red: true,
                              ),
                              PrizeTextWidget(
                                text: '3 lượt',
                                textSize: 16.sp,
                                fontWeight: FontWeight.normal,
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
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: SingleChildScrollView(
                  child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 172.w,
                        height: 260.h,
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(28, 52, 84, 0.26)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.w),
                        ),
                        child: Column(
                          children: [
                            TextWidget(
                              text: 'Loto chưa về',
                              textSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            TextWidget(
                                text: '02, 08, 11, 53, 63, 70, 73, 76, 82, 86,',
                                textSize: 14.sp),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(28, 52, 84, 0.26)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.w),
                        ),
                        width: 180.w,
                        height: 260.h,
                        child: Column(
                          children: [
                            TextWidget(
                              text: 'Đặc biệt chưa về',
                              textSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            TextWidget(
                                text:
                                    '00, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 15, 16, 17, 18, 3, 20, 21, 22, 23, 24, 25, 26, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 41, 42, 43, 44, 45, 47, 48, 52, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 67, 69, 73, 74, 75, 76, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 91, 94, 98, 99,',
                                textSize: 14.sp),
                          ],
                        ),
                      ),
                    ])
              ])),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget inputField(String type, TextEditingController controller) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(28, 52, 84, 0.26)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.w),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 4.w, bottom: 1.h),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: type == "provinces" ? 'Miền Bắc' : '30',
            border: InputBorder.none,
            suffixIcon: GestureDetector(
              onTap: () {
                // setState(() {
                //   switch (type) {
                //     case "provinces":
                //       displayProvinces = !displayProvinces;
                //       break;
                //     case "turns":
                //       displayTurns = !displayTurns;
                //       break;
                //     default:
                //   }
                // });
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
    );
  }

  Widget selectionField(String type, TextEditingController controller) {
    return Container(
      height: 200,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1)),
          ]),
      child: ListView.builder(
        itemCount: type == "provinces" ? provinces.length : turns.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (type == "provinces") {
                  provinceController.text = provinces[index];
                  displayProvinces = !displayProvinces;
                } else {
                  turnController.text = turns[index];
                  displayTurns = !displayTurns;
                }
              });
            },
            child: ListTile(
              title:
                  Text(type == "provinces" ? provinces[index] : turns[index]),
            ),
          );
        },
      ),
    );
  }
}
