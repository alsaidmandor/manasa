class SignupRequest {

  final String? id ;
  final String? Name;
  final String? email;

  final String? password;

  SignupRequest({this.Name, this.email, this.password, this.id});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'Name': Name,
      'email': email,
      'password': password,
    };
  }

  SignupRequest copyWith({
    String? id,
    String? Name,
    String? email,
    String? password,
  }) {
    return SignupRequest(
      id: id ?? this.id,
      Name: Name ?? this.Name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}