import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:public_graveance/core/services/connectivity_service/connectivity_service.dart';
import 'package:public_graveance/dashboard.dart';
import 'package:public_graveance/utils/either/either.dart';
import 'package:public_graveance/utils/either/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nb_utils/nb_utils.dart';

class RegisterComplaint extends StatefulWidget {
  const RegisterComplaint({Key? key, required this.userId}) : super(key: key);
  final userId;
  @override
  State<RegisterComplaint> createState() => _RegisterComplaintState();
}

class _RegisterComplaintState extends State<RegisterComplaint> {
  String googleApikey = "AIzaSyBmxR-l9kMgkEKOP5gXQFu5QdK1N7NAD74";
  GoogleMapController? mapController; //contrller for Google map
  CameraPosition? cameraPosition;
  LatLng startLocation = LatLng(27.6602292, 85.308027);
  String location = "Location Name:";
  TextEditingController _complaintType = TextEditingController();
  TextEditingController _complaintDesc = TextEditingController();
  File? _imageFile;
  final _imgPicker = ImagePicker();

  @override
  initState() {
    super.initState();
  }

  Future<Either> _postUserData(
      {required Loclatitude,
      required Loclongitude,
      required locationDecoded}) async {
    const url =
        'http://dev.grievancecell.info/index.php/Apicontroller/userAddComplaint';

    /// check for internet connection
    if (await ConnectionChecker().isConnected()) {
      print('Inside API call');

      /// perform http request
      Response response = await post(
        Uri.parse(url),
        body: jsonEncode({
          'user_id': widget.userId,
          'complaint_type': _complaintType.text,
          'description': _complaintDesc.text,
          'latitude': Loclatitude,
          'longitude': Loclongitude,
          'image': _imageFile.toString(),
          'locality': locationDecoded,
        }),
      );
      if (response.statusCode == 200) {
        print('response-->${response.body}');
        var data = response.body;
        showDialog(
          context: context,
          builder: (BuildContext context) =>
              _buildPopupDialog(context, userId: widget.userId),
        );

        return right(data);
      } else if (response.statusCode == 500) {
        return left(Failure.commonFailure());
      } else {
        final data = json.decode(response.body);
        return left(Failure.unexpected(errorMsg: data['message']));
      }
    } else {
      return left(const Failure.networkError());
    }
  }

  var locationMessage = "";
  String? locationDecoded = "";
  double _latitude = 0.0;
  double _longitude = 0.0;
  int locLength = 0;
  void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lastLocation = await Geolocator.getLastKnownPosition();
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    setState(() {
      locationMessage = '${position.latitude} , ${position.longitude}';
      _latitude = position.latitude;
      _longitude = position.longitude;
      locationDecoded = placemarks[0].subLocality;
      print(locationDecoded);
    });
  }

  _asyncFileUpload(String text, File file) async {
    //create multipart request for POST or PATCH method
    print(file.path);
    var request = MultipartRequest(
        "POST", Uri.parse("https://dev.grievancecell.info/images/"));
    //add text fields
    request.fields["text_field"] = text;
    //create multipart using filepath, string or bytes
    var pic = await MultipartFile.fromPath("file_field", file.path);
    //add multipart to request
    request.files.add(pic);
    var response = await request.send();

    //Get the response from the server
    var responseData = await response.stream.toBytes();
    var responseString = String.fromCharCodes(responseData);
    print('-->$responseString');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register Complaints'),
          backgroundColor: Color(0xff00757B),
        ),
        body: Container(
            height: context.height(),
            width: context.width(),
            decoration: BoxDecoration(
              color: Color(0xff00757B),
            ),
            child: _buildForm()),
      ),
    );
  }

  Widget _buildForm() {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          FormBuilderTextField(
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.sentences,
            name: 'complaint_type',
            controller: _complaintType,
            cursorColor: Colors.black,
            style: TextStyle(fontSize: 12),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.checklist,
                size: 16,
              ),
              labelText: 'Complaint Type',
              filled: true,
              fillColor: Colors.white,
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0x2ba9a9a9),
              )),
            ),
          ),
          16.height,
          FormBuilderTextField(
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.sentences,
            name: 'complaint',
            controller: _complaintDesc,
            cursorColor: Colors.black,
            style: TextStyle(fontSize: 12),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.note_add,
                size: 16,
              ),
              labelText: 'Complaint Description',
              filled: true,
              fillColor: Colors.white,
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0x2ba9a9a9),
              )),
            ),
          ),
          16.height,
          _imageFile == null
              ? Container()
              : Image.file(_imageFile!, height: 100, width: 100),
          10.height,
          ElevatedButton(
            onPressed: () {
              uploadImage();
            },
            child: Row(
              children: [
                Icon(Icons.camera_alt),
                Text('Upload Image').paddingAll(12),
              ],
            ),
          ).paddingOnly(left: 50, right: 50),
          16.height,
          ElevatedButton(
              onPressed: () {
                getCurrentLocation();
              },
              style: ElevatedButton.styleFrom(),
              child: Row(
                children: [
                  Icon(
                    Icons.location_pin,
                  ),
                  Text('Get Current Location').paddingAll(12),
                ],
              )).paddingOnly(left: 50, right: 50),
          SizedBox(
            height: 10,
          ),
          Text(
            'Current Location is : $locationDecoded',
            style: TextStyle(color: white),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                _postUserData(
                    Loclatitude: _latitude,
                    Loclongitude: _longitude,
                    locationDecoded: locationDecoded);
                _asyncFileUpload('Complaint Image', _imageFile!);
              },
              child: Text('Register')),
        ],
      ).paddingAll(20),
    );
  }

  uploadImage() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actionsAlignment: MainAxisAlignment.spaceAround,
            actions: [
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        _pickImageFromCamera();
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        size: 30,
                      )),
                  Text('Camera')
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        _pickImageFromGallery();
                      },
                      icon: Icon(
                        Icons.photo_album,
                        size: 30,
                      )),
                  Text('Gallery')
                ],
              )
            ],
          );
        });
  }

  void _pickImageFromCamera() async {
    var imgCamera = await _imgPicker.pickImage(source: ImageSource.camera);
    setState(() {
      _imageFile = File(imgCamera!.path);
      finish(context);
    });
  }

  void _pickImageFromGallery() async {
    var imgGallery = await _imgPicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = File(imgGallery!.path);
      finish(context);
    });
  }
}

Widget _buildPopupDialog(BuildContext context, {required String userId}) {
  return new AlertDialog(
    title: const Text('Register Complaint'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Complaint Registerd Successfully!"),
      ],
    ),
    actions: <Widget>[
      new ElevatedButton(
        onPressed: () {
          DashboardScreen(
            userId: userId,
          ).launch(context);
        },
        child: const Text('Close'),
      ),
    ],
  );
}
