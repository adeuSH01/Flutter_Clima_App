import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // extract widget dedik ve o kendisi bu sınıfı oluşturdu
  // const ReusableCard({super.key,}); // key class = is an identifier for widgets, elemnts, and semanticsNodes.

  ReusableCard(
      {required this.colour,
      required this.cardChild,
      required this.onPressed,
      required Null Function() onPress});

  final Color
      colour; // late makes this property immutable. because reusable card is immutable. immutable = we cannot change it again. ex: we will not change the color.
  final Widget cardChild;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(
            15.0), // diğerlerine olan mesafeyi ayarlamak için var
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour, // kutuların kenarlarını oval yapmak için kullandık
        ),
      ),
    );
  }
}
