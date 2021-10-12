part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});
}

Food mockFood = Food(
    id: 1,
    picturePath: 'https://picsum.photos/id/1/200/300',
    name: 'Sate Sayur',
    description: 'Sate sayur adalah sate yang terbuat dari sayur',
    ingredients: 'Bawang merah, bawang putih, sayur, cabai, kacang',
    price: 60000,
    rate: 4.7);
