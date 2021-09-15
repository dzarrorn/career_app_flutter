class JobModel {
  String id, name, category, companyName, companyLogo, location;
  List about, qualifications, responsibilities;
  int createdAt, updatedAt;

  JobModel({
    this.id,
    this.name,
    this.category,
    this.companyName,
    this.about,
    this.qualifications,
    this.responsibilities,
    this.createdAt,
    this.updatedAt,
    this.companyLogo,
    this.location,
  });

  JobModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    companyName = json['companyName'];
    companyLogo = json['companyLogo'];
    location = json['location'];
    about = json['about'];
    qualifications = json['qualifications'];
    responsibilities = json['responsibilities'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  //! NOTE: METHOD THAT RETURN THIS JOB MODEL
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'companyName': companyName,
      'companyLogo': companyLogo,
      'location': location,
      'about': about,
      'qualifications': qualifications,
      'responsibilities': responsibilities,
    };
  }
}
