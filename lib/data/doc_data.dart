import '../modelClass/doc_model.dart';

List<DoctorModel> allDocs = [
  DoctorModel(
      name: 'Dr,Peter Quili',
      imgUrl: 'assets/image/doctor1.png',
      speciality: 'Heart Disease Specialist ',
      rating: 4.7,
      payment: 50,
      patient: 1200,
      experience: 10,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc:
          'Dr,Peter Quili is heart specialist in BSMMU hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people.'),
  DoctorModel(
      name: 'Dr,Daniel Defo',
      imgUrl: 'assets/image/doctor2.png',
      speciality: 'Kidney Disease Specialist ',
      rating: 4.5,
      payment: 50,
      patient: 1200,
      experience: 10,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc:
          'Dr,daniel Defo is kidney specialist in BSMMU hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),
  DoctorModel(
      name: 'Dr,MD.Hassan',
      imgUrl: 'assets/image/doctor3.png',
      speciality: 'Eye Disease Specialist ',
      rating: 4.5,
      payment: 50,
      patient: 1200,
      experience: 10,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc:
      'Dr,MD.Hassan is eye specialist in BSMMU hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),
  DoctorModel(
      name: 'Dr,Jhonson',
      imgUrl: 'assets/image/doctor4.png',
      speciality: 'Heart Disease Specialist ',
      rating: 4.5,
      payment: 50,
      patient: 1200,
      experience: 10,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc:
      'Dr,Jhonson is heart disease specialist in BSMMU hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),
  DoctorModel(
      name: 'Dr,Sanjana',
      imgUrl: 'assets/image/female_doc.png',
      speciality: 'Dental Specialist ',
      rating: 4.5,
      payment: 50,
      patient: 1200,
      experience: 10,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc:
      'Dr,Sanjana is Dental specialist in BSMMU hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),
  DoctorModel(
      name: 'Dr,Scarlet',
      imgUrl: 'assets/image/female_doc2.png',
      speciality: 'Neurosurgeon ',
      rating: 4.5,
      payment: 50,
      patient: 1200,
      experience: 10,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc:
      'Dr,Scarlet is Neurosurgeon in BSMMU hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),
];

List<HospitalModel> allInfo = [
  HospitalModel(
    url: "assets/image/hospital1.jpg",
    hospitalName: "Mongar Regional Referral Hospital",
    hospitalLocation: "Mongar",
    contactInfo: 04641354,
    mail: "mrrh23@gmail.com",
    hospitalDescription:
        "A tertiary multi-specialty healthcare institution in eastern Bhutan, the hospital serves as regional referral hospital for the region, as well as a technical backup center for the hospital's in the east.Committed to providing preventive, pro-motive, curative and rehabilitative healthcare, the hospitals practices are based on evidence-based and holistic approaches. The hospital’s departments include orthopedics, ophthalmology, general medicine, gynecology and dentistry.",
    services: [
      'Department of Obstericts and Gynaecology',
      'Department of Pediatrics',
      'Department of Pathology and Laboratory Medicine',
      'Department of Orthopedics',
      'Department of Dental surgery',
      'Department Of Ophthalmology'
    ],
    // staffCount: 20,
  ),
  HospitalModel(
    url: "assets/image/hospital2.jpg",
    hospitalName: "Jigme Dorji Wangchuck National Referral Hospital",
    hospitalLocation: "Thimphu ",
    contactInfo: 322497,
    mail: "jdwnrh@gmail.com",
    hospitalDescription:
        "Named in honor of the third King Jigme Dorji Wangchuck, the hospital has been serving the people of Bhutan for a long time. With 350 beds, the hospital has several specializations such as general medicine, general surgery, orthopedics, psychiatry, dermatology, gynecology and pediatrics.",
    services: [
      'Department of Obstericts and Gynaecology',
      'Department of Pediatrics',
      'Department of Pathology and Laboratory Medicine',
      'Department of Orthopedics',
      'Department of Dental surgery',
      'Department Of Ophthalmology'
    ],
    // staffCount: 20,
  ),
  HospitalModel(
    url: "assets/image/hospital7.jpg",
    hospitalName: "Gelephu General Hospital",
    hospitalLocation: "Gelephu",
    contactInfo: 4744129,
    mail: "Gelephuhospital@gmail.com",
    hospitalDescription:
        "The Central Regional Referral Hospital (CRRH) formerly, Gelephu General Hospital is a 100 bedded govt. hospital in Gelephu, Bhutan.The hospitals treats patients for all diseases and is one of the best hospitals in Bhutan.",
    services: [
      // ' Department of Obstericts and Gynaecology',
      'Department of Pediatrics',
      // 'Department of Pathology and Laboratory Medicine',
      'Department of Orthopedics',
      'Department of Dental surgery',
      'Department Of Ophthalmology'
    ],
    // staffCount: 20,
  ),
  HospitalModel(
    url: "assets/image/hospital3.jpg",
    hospitalName: "Phuentsholing General Hospital",
    hospitalLocation: "Phuentsholing",
    contactInfo: 05251344,
    mail: "plinghospital@gmail.com",
    hospitalDescription:
        "A tertiary multi-specialty healthcare institution in eastern Bhutan, the hospital serves as regional referral hospital for the region, as well as a technical backup center for the hospital's in the east.Committed to providing preventive, pro-motive, curative and rehabilitative healthcare, the hospitals practices are based on evidence-based and holistic approaches. The hospital’s departments include orthopedics, ophthalmology, general medicine, gynecology and dentistry.",
    services: [
      // 'Department of Obstericts and Gynaecology',
      'Department of Pediatrics',
      // 'Department of Pathology and Laboratory Medicine',
      'Department of Orthopedics',
      'Department of Dental surgery',
      'Department Of Ophthalmology'
    ],
    // staffCount: 20,
  ),
  HospitalModel(
    url: "assets/image/hospital8.jpg",
    hospitalName: "Royal Bhutan Army Hospital",
    mail: "rbah@gmail.com",
    hospitalLocation: "Lungtenphug",
    contactInfo: 4744129,
    hospitalDescription:
        "A tertiary multi-specialty healthcare institution in eastern Bhutan, the hospital serves as regional referral hospital for the region, as well as a technical backup center for the hospital's in the east.Committed to providing preventive, pro-motive, curative and rehabilitative healthcare, the hospitals practices are based on evidence-based and holistic approaches. The hospital’s departments include orthopedics, ophthalmology, general medicine, gynecology and dentistry.",
    services: [
      // 'Department of Obstericts and Gynaecology',
      'Department of Pediatrics',
      // 'Department of Pathology and Laboratory Medicine',
      'Department of Orthopedics',
      'Department of Dental surgery',
      'Department Of Ophthalmology'
    ],
    // staffCount: 20,
  ),
  HospitalModel(
    url: "assets/image/hospital9.jpg",
    hospitalName: "Wangdicholing Hospital",
    hospitalLocation: " Bumthang",
    mail: "wangdicholinghospital@gmail.com",
    contactInfo: 3631112,
    hospitalDescription:
        "A tertiary multi-specialty healthcare institution in eastern Bhutan, the hospital serves as regional referral hospital for the region, as well as a technical backup center for the hospital's in the east.Committed to providing preventive, pro-motive, curative and rehabilitative healthcare, the hospitals practices are based on evidence-based and holistic approaches. The hospital’s departments include orthopedics, ophthalmology, general medicine, gynecology and dentistry.",
    services: [
      'Department of Obstericts and Gynaecology',
      'Department of Pediatrics',
      // 'Department of Pathology and Laboratory Medicine',
      'Department of Orthopedics',
      // 'Department of Dental surgery',
      'Department Of Ophthalmology'
    ],
    // staffCount: 20,
  ),
];

List<Covid> statics = [Covid(cases: 62697, deaths: 21, recovered: 61564)];

List<MedicineModel> allShops = [
  MedicineModel(
      shopUrl: "assets/image/shop1.jpg",
      shopName: "Kuenphen Pharmacy",
      proprietor: "Lobsang Wangchen",
      location: "Main Traffic Thimphu",
      contactNo: 17603802,
      mail: "kpm15_2001@yahoo.com"
  ),
  MedicineModel(
      shopUrl: "assets/image/shop2.jpg",
      shopName: "Your Zone Pharmacy",
      proprietor: "Yonten",
      location: "Thimphu, Babesa",
      contactNo: 17696514,
      mail: "yourzone108@gmail.com"
  ),
  MedicineModel(
      shopUrl: "assets/image/shop3.jpg",
      shopName: "Namsey Medical Supplies",
      proprietor: "Sonam Dorji",
      location: "Gatden Lam,Phuntsholing",
      contactNo: 17117030,
      mail: "namseypharma@gmail.com"
  ),
  // MedicineModel(
  //     shopUrl: "assets/image/shop4.jpg",
  //     shopName: "Dhejung Pharmaceutical",
  //     proprietor: "Yeshi Wangmo	",
  //     location: "Changzamtog,Thimphu",
  //     contactNo: 17686833,
  //     mail: "dhejung1624@gmail.com"
  // ),
];

List<List<Medicine>> allMeds = [
  [
    Medicine(
      medicineUrl: "assets/image/medicine1.jpg",
      medicineName: "Spasmo-Proxyvon Plus Capsule",
      weight: "1mg",
      price: 30,
    ),
    Medicine(
      medicineUrl: "assets/image/medicine2.jpg",
      medicineName: "Corex-D Syrup",
      weight: "50ml",
      price: 50,
    ),
    Medicine(
      medicineUrl: "assets/image/medicine3.webp",
      medicineName: "I-Pill",
      weight: "0.5mg",
      price: 20,
    ),
    Medicine(
      medicineUrl: "assets/image/medicine4.jpg",
      medicineName: "gabapentin Capsule",
      weight: "500mg",
      price: 120,
    ),
  ],
  [
    Medicine(
      medicineUrl: "assets/image/med1.jpg",
      medicineName: "Benadryl",
      weight: "50ml",
      price: 100,
    ),
    Medicine(
      medicineUrl: "assets/image/med2.webp",
      medicineName: "Cytoplatin-50 ",
      weight: "50mg/50ml",
      price: 35,
    ),
    Medicine(
      medicineUrl: "assets/image/med3.jpg",
      medicineName: "Allegra",
      weight: "120mg",
      price: 200,
    ),
    Medicine(
      medicineUrl: "assets/image/med4.webp",
      medicineName: "Bandy-Plus 12",
      weight: "300mg",
      price: 150,
    ),
  ],
  [
    Medicine(
      medicineUrl: "assets/image/med5.jpg",
      medicineName: "paracetamol",
      weight: "500mg",
      price: 50,
    ),
    Medicine(
      medicineUrl: "assets/image/med6.jpg",
      medicineName: "Dulcoflex",
      weight: "10mg",
      price: 100,
    ),
    Medicine(
      medicineUrl: "assets/image/med7.webp",
      medicineName: "Durex Condom",
      weight: "10packets",
      price: 70,
    ),
    Medicine(
      medicineUrl: "assets/image/med8.jpg",
      medicineName: "Moov Spray",
      weight: "80mg",
      price: 100,
    ),
  ],
  // [
  //   Medicine(
  //     medicineUrl: "assets/image/S3.png",
  //     medicineName: "sp",
  //     weight: "2g",
  //     price: 35,
  //   ),
  //   Medicine(
  //     medicineUrl: "assets/image/S4.png",
  //     medicineName: "sp",
  //     weight: "2g",
  //     price: 35,
  //   ),
  //   Medicine(
  //     medicineUrl: "assets/image/S1.png",
  //     medicineName: "sp",
  //     weight: "2g",
  //     price: 35,
  //   ),
  //   Medicine(
  //     medicineUrl: "assets/image/S2.png",
  //     medicineName: "sp",
  //     weight: "2g",
  //     price: 35,
  //   ),
  // ],
];