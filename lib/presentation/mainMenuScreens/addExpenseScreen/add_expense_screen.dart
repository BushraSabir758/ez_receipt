
import 'package:ez_receipt/utils/app_colors.dart';
import 'package:ez_receipt/utils/custom_text_button.dart';
import 'package:ez_receipt/utils/custom_text_field.dart';
import 'package:ez_receipt/utils/date_picker.dart';
import 'package:ez_receipt/utils/device_size.dart';
import 'package:ez_receipt/utils/device_size_manager.dart';
import 'package:flutter/material.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  ValueNotifier<String> paidDate = ValueNotifier("");

  ValueNotifier<String?> expenseCategory = ValueNotifier(null);

  final List<String> expenseCategoryList = ['category 1', 'category 2', 'category 3'];

  ValueNotifier<String?> expenseType = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Container(
          height: deviceHeight(context),
          width: deviceWidth(context),
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [blackColor,Color.fromARGB(255, 39, 38, 38)]
            )
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.v,),
                Text("John Peter",
                  style: TextStyle(fontSize: 26.fSize,fontWeight: FontWeight.w600, color: whiteColor),
                ),
                Text("Add a new expense",
                  style: TextStyle(fontSize: 16.fSize,fontWeight: FontWeight.w500, color: whiteColor)
                ),
                SizedBox(
                  height: 50.v,
                ),
                ValueListenableBuilder(
                  valueListenable: expenseType,
                  builder: (context, value, widget) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                      radioTheme: RadioThemeData(
                        fillColor: WidgetStateProperty.resolveWith<Color>((states) {
                          if (states.contains(WidgetState.selected)) {
                            return Colors.green; // Selected dot color
                          }
                          return Colors.white; // Unselected dot border
                        }),
                      ),
                    ),
                      child: Column(
                        children: [
                          RadioMenuButton<String>(
                            style: ButtonStyle(
                              overlayColor: WidgetStateProperty.all(whiteColor.withOpacity(0.2))
                            ),
                            value: 'Business Expense',
                            groupValue: expenseType.value,
                            onChanged: (value) {
                              
                                expenseType.value = value;
                              
                            },
                            child: const Text('Business Expense',style: TextStyle(color: whiteColor),),
                          ),
                          // SizedBox(height:25.v,),
                          RadioMenuButton<String>(
                            style: ButtonStyle(
                              overlayColor: WidgetStateProperty.all(whiteColor.withOpacity(0.2))
                            ),
                            value: 'Personal Expense',
                            groupValue: expenseType.value,
                            onChanged: (value) {
                              
                              expenseType.value = value;
                              
                            },
                            child: const Text('Personal Expense', style: TextStyle(color: whiteColor),),
                          ),
                        ],
                      ),
                    );
                  }
                ),
                SizedBox(height:20.v,),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    // height: 55.v,
                    width: double.infinity,
                    padding: EdgeInsets.only( left: 25.0.h, right: 15.h),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12.adaptSize),
                      
                    ),
                    child: ValueListenableBuilder(
                      valueListenable: expenseCategory,
                      builder: (context, value, widget) {
                        return Center(
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              canvasColor: whiteColor
                            ),
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(12.adaptSize),
                              isExpanded: true,
                              underline: Container(),
                              hint: SizedBox(
                                width: 263.h,
                                child: Text(
                                  'Expense category',
                                  style: TextStyle(
                                    color: blackColor.withOpacity(0.7),
                                    fontSize: 14.0.adaptSize,
                                  ),
                                ),
                              ),
                              value: value,
                              items: expenseCategoryList.map((String gender) {
                                return DropdownMenuItem<String>(
                                  value: gender,
                                  child: Text(
                                    gender,
                                    style: TextStyle(
                                      color: blackColor.withOpacity(0.7),
                                      fontSize: 14.0.adaptSize,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? selectExpenseCategory) {
            
                                debugPrint("Selected gender: $selectExpenseCategory");
            
                                if(selectExpenseCategory != null){
                                  expenseCategory.value = selectExpenseCategory;
                                }
                                
            
                              },
                              icon: Icon(Icons.keyboard_arrow_down_outlined,color: blackColor.withOpacity(0.7),size: 28.adaptSize,),
                            ),
                          ),
                        );
                      }
                    ),
                  ),
                ),
                SizedBox(height:25.v,),
                InkWell(
                  onTap: () async {
                    DateTime? selectedDate = await selectDate(context: context);
                    if(selectedDate != null){
                      debugPrint("selected date : $selectedDate");
                      paidDate.value = selectedDate.toString().split(" ").first;
                    }
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Container(
                      height: 54.v,
                      width: double.infinity,
                      padding: EdgeInsets.only( left: 25.0.h, right: 18.h,top: 10.v, bottom: 10.v),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(12.adaptSize),
                        // border: Border.all(color: serverDateOfBirthErrorValue.isNotEmpty ? errorColor : transparentColor)
                      ),
                      child: ValueListenableBuilder(
                        valueListenable: paidDate,
                        builder: (context, value, child) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  value.isNotEmpty ? value : "Date paid (Today's date)",
                                  style: TextStyle(
                                    color: blackColor.withOpacity(0.7),
                                    fontSize: 14.fSize,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Icon(Icons.calendar_month_outlined, size: 24.adaptSize,color: blackColor.withOpacity(0.7),),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height:25.v,),
                const CustomTextField(
                  keyboardType: TextInputType.number,
                  hintText: "Amount",
                ),
                SizedBox(height: 20.v,),
                const CustomTextField(
                  hintText: "Paid to",
                ),
                SizedBox(height: 20.v,),
                const CustomTextFieldMultiline(
                  minLines: 3,
                  maxLines: 7,
                  hintText: "Note",
                ),
                SizedBox(
                  height: 80.v,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextButton(
                      onPressed: () {
                        print("cancel pressed");
                      },
                      backgroundColor: transparentColor,
                      boxBorder: Border.all(color: whiteColor),
                      width: 150,
                      text: "Cancel",
                    ),
                    CustomTextButton(
                      onPressed: () {
                        print("create pressed");
                      },
                      width: 150,
                      text: "Create",
                    ),
                  ],
                ),
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}