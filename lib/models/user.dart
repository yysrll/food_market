part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Yusril',
    address: 'Bumi Batara Mawang',
    email: 'contohemail@email.com',
    houseNumber: 'AA3/8',
    phoneNumber: '085252552525',
    city: 'Makassar',
    picturePath: 'https://picsum.photos/200');
