class RequestUser {
  final String uid;
  final String? firstName;
  final String? lastName;
  final String? email;

  RequestUser({
    required this.uid,
    this.firstName,
    this.lastName,
    this.email,
  });
}