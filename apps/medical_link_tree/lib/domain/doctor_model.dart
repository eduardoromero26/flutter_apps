import 'package:medical_link_tree/domain/link_tree_model.dart';

class DoctorModel {
  final String firstName;
  final String lastName;
  final Gender? gender;
  final String speciality;
  final String professionalLicense;
  final String? imageUrl;
  final String description;
  final String? description2;
  final String location;
  final String? location2;
  final LinkTreeModel linkTree;

  DoctorModel({
    required this.firstName,
    required this.lastName,
     this.gender = Gender.other,
    required this.speciality,
    required this.professionalLicense,
    this.imageUrl,
    required this.description,
    this.description2,
    required this.location,
    this.location2,
    required this.linkTree,
  });

  DoctorModel copyWith({
    String? firstName,
    String? lastName,
    Gender? gender,
    String? speciality,
    String? professionalLicense,
    String? imageUrl,
    String? description,
    String? description2,
    String? location,
    String? location2,
    LinkTreeModel? linkTree,
  }) {
    return DoctorModel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      gender: gender ?? this.gender,
      speciality: speciality ?? this.speciality,
      professionalLicense: professionalLicense ?? this.professionalLicense,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      description2: description2 ?? this.description2,
      location: location ?? this.location,
      location2: location2 ?? this.location2,
      linkTree: linkTree ?? this.linkTree,
    );
  }
}

enum Gender {
  male,
  female,
  other,
}