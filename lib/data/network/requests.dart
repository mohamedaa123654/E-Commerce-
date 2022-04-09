class LoginRequest {
  String email;
  String password;

  LoginRequest(this.email, this.password);
}

class RegisterRequest {
  String userName;
  String contryMobileCode;
  String contryMobile;
  String email;
  String password;
  String profilePicture;

  RegisterRequest(
    this.userName,
    this.contryMobileCode,
    this.contryMobile,
    this.email,
    this.password,
    this.profilePicture,
  );
}
