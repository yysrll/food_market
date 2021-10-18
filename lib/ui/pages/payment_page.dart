part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;

  PaymentPage({this.transaction});

  @override
  Widget build(BuildContext context) {
    return GeneralPages(
      title: 'Payment',
      subtitle: 'You deserve better meal',
      onBackButtonPressed: () {},
      backColor: 'FAFAFC'.toColor(),
      child: Column(
        children: [
          //// Bagiam Atas
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Ordered',
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 60,
                            height: 60,
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        transaction.food.picturePath),
                                    fit: BoxFit.cover))),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 189,
                              // 2 * defaultMargin (distance border)
                              // 60 (width picture) +
                              // 12 (distance picture to title) +
                              // 78 (width total items),
                              child: Text(
                                transaction.food.name,
                                style: blackFontStyle2,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Text(
                                NumberFormat.currency(
                                        symbol: 'IDR ',
                                        decimalDigits: 0,
                                        locale: 'id-ID')
                                    .format(transaction.food.price),
                                style: greyFontStyle.copyWith(fontSize: 14))
                          ],
                        )
                      ],
                    ),
                    Text('${transaction.quantity} item(s)',
                        style: greyFontStyle.copyWith(fontSize: 14))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Text(
                    'Details Transaction',
                    style: blackFontStyle3,
                  ),
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child:
                            Text(transaction.food.name, style: greyFontStyle),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    symbol: 'IDR ',
                                    decimalDigits: 0,
                                    locale: 'id-ID')
                                .format(transaction.quantity *
                                    transaction.food.price),
                            style: blackFontStyle3,
                            textAlign: TextAlign.right),
                      ),
                    ]),
                SizedBox(height: 6),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Driver',
                          style: greyFontStyle,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    symbol: 'IDR ',
                                    decimalDigits: 0,
                                    locale: 'id-ID')
                                .format(50000),
                            style: blackFontStyle3,
                            textAlign: TextAlign.right),
                      ),
                    ]),
                SizedBox(height: 6),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Tax 10%', style: greyFontStyle),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    symbol: 'IDR ',
                                    decimalDigits: 0,
                                    locale: 'id-ID')
                                .format(transaction.quantity *
                                    transaction.food.price *
                                    0.1),
                            style: blackFontStyle3,
                            textAlign: TextAlign.right),
                      ),
                    ]),
                SizedBox(height: 6),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Total',
                          style: greyFontStyle,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                            NumberFormat.currency(
                                    symbol: 'IDR ',
                                    decimalDigits: 0,
                                    locale: 'id-ID')
                                .format(transaction.total),
                            style: blackFontStyle3.copyWith(
                                fontWeight: FontWeight.w500,
                                color: '1ABC9C'.toColor()),
                            textAlign: TextAlign.right),
                      ),
                    ]),
                SizedBox(height: 6),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Delivers to:',
                    style: blackFontStyle3,
                  ),
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Name', style: greyFontStyle),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(transaction.user.name,
                            style: blackFontStyle3, textAlign: TextAlign.right),
                      ),
                    ]),
                SizedBox(height: 6),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Phone No.',
                          style: greyFontStyle,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(transaction.user.phoneNumber,
                            style: blackFontStyle3, textAlign: TextAlign.right),
                      ),
                    ]),
                SizedBox(height: 6),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text('Address', style: greyFontStyle),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(transaction.user.address,
                            style: blackFontStyle3, textAlign: TextAlign.right),
                      ),
                    ]),
                SizedBox(height: 6),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'House No.',
                          style: greyFontStyle,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(transaction.user.houseNumber,
                            style: blackFontStyle3, textAlign: TextAlign.right),
                      ),
                    ]),
                SizedBox(height: 6),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'City',
                          style: greyFontStyle,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(transaction.user.city,
                            style: blackFontStyle3, textAlign: TextAlign.right),
                      ),
                    ]),
                SizedBox(height: 6),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: mainColor),
                child: Text('Checkout Now',
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500))),
          ),
        ],
      ),
    );
  }
}
