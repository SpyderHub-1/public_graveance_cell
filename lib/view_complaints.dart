import 'package:public_graveance/core/complaint_model.dart';
import 'package:public_graveance/view_complaint_details.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:public_graveance/core/services/api_services.dart';

class ViewComplaints extends StatefulWidget {
  final String userId;
  const ViewComplaints({Key? key, required this.userId}) : super(key: key);

  @override
  State<ViewComplaints> createState() => _ViewComplaintsState();
}

class _ViewComplaintsState extends State<ViewComplaints> {
  var _isLoading = true;
  List<ComplaintsModel> _complaintsList = <ComplaintsModel>[];

  @override
  void initState() {
    super.initState();
    _getComplaints();
  }

  Future<void> _getComplaints() async {
    /// calling one sample get API
    String param = '5';
    final response =
        await apiServices.get(slug: 'getUserComplaints/${widget.userId}');
    try {
      response.fold(
        (left) {
          print('---->$left');

          /// handle the failure here by showing a snackbar or something
          setState(() {
            _isLoading = false;
          });
        },
        (entries) {
          setState(() {
            print(entries);
            _isLoading = false;
            _complaintsList = entries
                .map<ComplaintsModel>(
                    (e) => ComplaintsModel.fromJson(e as Map<String, dynamic>))
                .toList();
          });
        },
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('View Complaints'),
          backgroundColor: Color(0xff00757B),
        ),
        body: Container(
          height: context.height(),
          width: context.width(),
          decoration: BoxDecoration(
            color: Color(0xff00757B),
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: Column(
            children: [
              10.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Date',
                    style: boldTextStyle(size: 15, color: whiteColor),
                  ),
                  Spacer(),
                  Text('Complaint',
                      style: boldTextStyle(size: 15, color: whiteColor)),
                  Spacer(),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              20.height,
              ListView.builder(
                  itemCount: _complaintsList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: context.width(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            _complaintsList[index].date,
                            style: TextStyle(color: whiteColor),
                          ),
                          Spacer(),
                          Text(
                            _complaintsList[index].complaintType,
                            style: TextStyle(color: whiteColor),
                          ),
                          Spacer(),
                          ElevatedButton(
                              onPressed: () {
                                ViewComplaintDetails(userId: widget.userId,comId: _complaintsList[index].complaintId,compType:_complaintsList[index].complaintType,compDesc:_complaintsList[index].description,comLoc:_complaintsList[index].locality,comImg:_complaintsList[index].image,comSts: _complaintsList[index].status,compDate:_complaintsList[index].date)
                                    .launch(context);
                              },
                              child: Text('Details'))
                        ],
                      ).paddingBottom(10),
                    );
                  })
            ],
          ).paddingAll(10),
        ).paddingAll(20),
      ),
    );
  }
}
