import 'trip.dart';

class UserModel {
  final String username;
  final String password;
  List<TripModel> trips;

  UserModel({
    required this.username,
    required this.password,
    this.trips = const [],
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'trips': trips.map((e) => e.toJson()).toList(),
    };
  }

  factory UserModel.fromJson(Map data) {
    return UserModel(
      username: data['username'],
      password: data['password'],
      trips: (data['trips'] as List)
          .map<TripModel>((e) => TripModel.fromJson(e))
          .toList(),
    );
  }
}
