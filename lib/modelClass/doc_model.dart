

class DoctorModel {
  String name;
  String imgUrl;
  String speciality;
  double rating;
  double payment;
  int patient;
  int experience;
  List appointmentDays;
  List appointmentTimes;
  String aboutDoc;

  DoctorModel({
    required this.name,
    required this.imgUrl,
    required this.speciality,
    required this.rating,
    required this.payment,
    required this.patient,
    required this.experience,
    required this.appointmentDays,
    required this.appointmentTimes,
    required this.aboutDoc,
  });
}

class HospitalModel {
  String hospitalName;
  String hospitalLocation;
  int contactInfo;
  String hospitalDescription;
  // int patientCount;
  List services;
  // int staffCount;
  String mail;
  String url;
  HospitalModel({
    required this.url,
    required this.hospitalName,
    required this.hospitalLocation,
    required this.contactInfo,
    required this.hospitalDescription,
    // required this.patientCount,
    required this.services,
    required this.mail
    // required this.staffCount,
  });
}

class Covid {
  int cases;
  int deaths;
  int recovered;

  Covid({
    required this.cases,
    required this.deaths,
    required this.recovered,
});
}

class MedicineModel {
  String shopUrl;
  String shopName;
  String proprietor;
  String location;
  int contactNo;
  String mail;

  MedicineModel({
    required this.shopUrl,
    required this.shopName,
    required this.proprietor,
    required this.location,
    required this.contactNo,
    required this.mail,
});
}


class Medicine{
  String medicineName;
  String medicineUrl;
  String weight;
  double price;

  Medicine({
    required this.medicineUrl,
    required this.medicineName,
    required this.weight,
    required this.price,
});
}