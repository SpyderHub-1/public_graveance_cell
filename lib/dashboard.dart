import 'package:public_graveance/register_complaints.dart';
import 'package:public_graveance/view_complaints.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nb_utils/nb_utils.dart';

class DashboardScreen extends StatefulWidget {
  final String userId;
  const DashboardScreen({Key? key, required this.userId}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.userId);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: context.height(),
          width: context.width(),
          decoration: BoxDecoration(
            color: Color(0xff00757B),
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              30.height,
              Text('Public Grievance Cell',
                  style: boldTextStyle(size: 30, color: Colors.white)),
              SizedBox(
                height: 150,
              ),
              InkWell(
                onTap: () {
                  RegisterComplaint(userId: widget.userId).launch(context);
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      10.height,
                      Image.asset(
                        'assets/register.png',
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Register Complaint',
                        style: boldTextStyle(size: 12),
                      ),
                    ],
                  ),
                ),
              ),
              14.height,
              InkWell(
                onTap: () {
                  ViewComplaints(userId: widget.userId).launch(context);
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      10.height,
                      Image.asset(
                        'assets/view_complaints.png',
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'View Complaint',
                        style: boldTextStyle(size: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ).paddingAll(20),
      ),
    );
  }
}
