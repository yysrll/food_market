part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 210,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(spreadRadius: 4, blurRadius: 16, color: Colors.black26)
          ]),
      child: Column(
        children: [RatingStarts(4.4)],
      ),
    );
  }
}
