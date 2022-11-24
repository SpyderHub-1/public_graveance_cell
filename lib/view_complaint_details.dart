import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nb_utils/nb_utils.dart';

class ViewComplaintDetails extends StatefulWidget {
  final String userId;
  final String comId;
  final String comImg;
  final String comLoc;
  final String comSts;
  final String compDesc;
  final String compType;
  final String compDate;

  const ViewComplaintDetails({
    Key? key,
    required this.userId,
    required this.comId,
    required this.comImg,
    required this.comLoc,
    required this.comSts,
    required this.compDesc,
    required this.compType,
    required this.compDate,
  }) : super(key: key);

  @override
  State<ViewComplaintDetails> createState() => _ViewComplaintDetailsState();
}

class _ViewComplaintDetailsState extends State<ViewComplaintDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('View Complaint Details'),
          backgroundColor: Color(0xff00757B),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: context.height(),
            width: context.width(),
            decoration: BoxDecoration(
              color: Color(0xff00757B),
              border: Border.all(width: 2, color: Colors.black),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style: boldTextStyle(color: white),
                    ),
                    Text(
                      widget.compDate,
                      style: TextStyle(color: white),
                    )
                  ],
                ),
                10.height,
                Text(
                  'Description',
                  style: boldTextStyle(color: white),
                ),
                8.height,
                Text(
                  widget.compDesc,
                  overflow: TextOverflow.visible,
                  style: TextStyle(color: white),
                ),
                20.height,
                Row(
                  children: [
                    Text(
                      'Location: ',
                      style: boldTextStyle(color: white),
                    ),
                    Text(
                      widget.comLoc,
                      style: TextStyle(color: white),
                    )
                  ],
                ),
                10.height,
                Text(
                  'Image',
                  style: boldTextStyle(color: white),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.network(
                  widget.comImg,
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Status: ',
                      style: boldTextStyle(color: white),
                    ),
                    Text(
                      widget.comSts,
                      style: TextStyle(color: white),
                    )
                  ],
                )
              ],
            ).paddingAll(10),
          ).paddingAll(20),
        ),
      ),
    );
  }
}
