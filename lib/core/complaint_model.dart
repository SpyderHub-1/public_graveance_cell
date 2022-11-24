class ComplaintsModel {
  final String complaintId;
  final String userId;
  final String complaintType;
  final String description;
  final String locality;
  final String longitude;
  final String latitude;
  final String image;
  final String date;
  final String status;

  ComplaintsModel({
    required this.complaintId,
    required this.userId,
    required this.complaintType,
    required this.description,
    required this.locality,
    required this.longitude,
    required this.latitude,
    required this.image,
    required this.date,
    required this.status,
  });

  factory ComplaintsModel.fromJson(Map<String, dynamic> json) {
    return ComplaintsModel(
        complaintId: json["complaint_id"],
        userId: json["user_id"],
        complaintType: json["complaint_type"],
        description: json["description"],
        locality: json["locality"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        image: json["image"],
        date: json["date"],
        status: json["status"]);
  }
}
