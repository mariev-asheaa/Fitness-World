import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../core/utiles/App_Styles.dart';
import '../../../../core/utiles/Constants.dart';

class MeasureContainerTrack extends StatefulWidget {
  const MeasureContainerTrack({super.key, required this.title, required this.subTitle, required this.image});
  final String title,subTitle,image;

  @override
  State<MeasureContainerTrack> createState() => _MeasureContainerTrackState();
}

class _MeasureContainerTrackState extends State<MeasureContainerTrack> {
  DateTime _selectedDate = DateTime.now();
  List<DateTime> getCurrentWeekDates() {
    DateTime now = DateTime.now();
    int currentWeekday = now.weekday;
    DateTime sunday = now.subtract(Duration(days: currentWeekday % 7));
    return List.generate(7, (index) => sunday.add(Duration(days: index)));
  }
  @override
  Widget build(BuildContext context) {
    List<DateTime> weekDates = getCurrentWeekDates();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        width: double.infinity,
        height: 168,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: const Color(0xFFEAECF0),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x0F222C5C),
              blurRadius: 68,
              offset: Offset(58, 26),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(widget.image,height: 36,),
              title: Text(widget.title,style: Styles.styleW50014(context),),
              trailing: Text(widget.subTitle,style: Styles.styleW40012(context).copyWith(color:Color(0xFF9B9BA1),),),
            ),
            Divider(),

            SizedBox(
              height: 75,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: weekDates.length,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                separatorBuilder: (context, index) => const SizedBox(width: 10),

                  itemBuilder: (context, index) {
                    DateTime date = weekDates[index];
                    bool isSelected = DateUtils.isSameDay(date, _selectedDate);

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedDate = date;
                        });
                      },
                      child: Container(
                        width: 48,
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2,
                              color:const Color(0xFFEAECF0),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              DateFormat('EEE').format(date).toUpperCase(),
                              textAlign: TextAlign.center,
                              style: Styles.styleW70013(context).copyWith(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: isSelected ? kPrimaryColor : Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: isSelected ? kPrimaryColor : const Color(0xFFEAECF0),
                                  width: 2,
                                ),
                              ),
                              child: isSelected
                                  ? const Icon(Icons.check, size: 16, color: Colors.white)
                                  : null,
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
