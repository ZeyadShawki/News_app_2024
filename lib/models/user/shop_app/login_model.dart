class ShopAppLogin {
  final bool status;
  final String message;
  final UserData? data;

  ShopAppLogin({
    required this.status,
    required this.message,
    this.data,
  });

  factory ShopAppLogin.fromJson(Map<String, dynamic> json) {
    return ShopAppLogin(
      status: json['status'] ?? false,
      message: json['message'] ?? '',
      data: json['data'] != null ? UserData.fromJson(json['data']) : null,
    );
  }
}

class UserData {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String image;
  final int points;
  final int credits;
  final String token;

  UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
    required this.points,
    required this.credits,
    required this.token,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      image: json['image'] ?? '',
      points: json['points'] ?? 0,
      credits: json['credits'] ?? 0,
      token: json['token'] ?? '',
    );
  }
}
