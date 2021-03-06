import 'package:flutter/material.dart';
import 'package:user_librartapp/constants/color_constant.dart';
import 'package:user_librartapp/models/popularbook_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_librartapp/screens/selected_book_screen.dart';

class ReservedBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 25),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: populars.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print('ListView Tapped');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SelectedBookScreen(popularBookModel: populars[index]),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 19),
              height: 81,
              color: kBackgroundColor,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 81,
                    width: 62,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(populars[index].image),
                        ),
                        color: kMainColor),
                  ),
                  SizedBox(
                    width: 21,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        populars[index].title,
                        style: GoogleFonts.openSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: kBlackColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        populars[index].author,
                        style: GoogleFonts.openSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: kGreyColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$' + populars[index].price,
                        style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: kBlackColor),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
