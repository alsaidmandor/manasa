class SignupRequest {

  final String? id ;
  final String? name;
  final String? email;
  final String? imageUrl;
  final List<String>? enrolledCourses ;

  final String? password;

  SignupRequest({this.enrolledCourses, this.imageUrl, this.name, this.email, this.password, this.id});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'imageUrl': imageUrl,
      'enrolledCourses': enrolledCourses,
      'password': password,
    };
  }


  SignupRequest copyWith({
    String? id,
    String? name,
    String? email,
    String? imageUrl,
    List<String>? enrolledCourses,
    String? password,
  }) {
    return SignupRequest(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      imageUrl: imageUrl ?? this.imageUrl,
      enrolledCourses: enrolledCourses ?? this.enrolledCourses,
      password: password ?? this.password,
    );
  }
}