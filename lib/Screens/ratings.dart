import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingsBar extends StatefulWidget {
  const RatingsBar({Key? key}) : super(key: key);

  @override
  State<RatingsBar> createState() => _RatingsBarState();
}

class _RatingsBarState extends State<RatingsBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            backgroundColor: Colors.white,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              const Text(
                'RATE YOUR EXPERIENCE',
                style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: RatingBar.builder(
                  initialRating: 3,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, index) {
                    switch (index) {
                      case 0:
                        return const Icon(
                          Icons.sentiment_very_dissatisfied,
                          size: 30,
                        );
                      case 1:
                        return const Icon(
                          Icons.sentiment_dissatisfied,
                          size: 30,
                        );
                      case 2:
                        return const Icon(
                          Icons.sentiment_neutral,
                          size: 30,
                        );
                      case 3:
                        return const Icon(
                          Icons.sentiment_satisfied,
                          size: 30,
                        );
                      case 4:
                        return const Icon(
                          Icons.sentiment_very_satisfied,
                          size: 30,
                        );
                      default:
                        return Container();
                    }
                  },
                  onRatingUpdate: (rating) {
                    setState(() {
                      print(rating);
                    });
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
