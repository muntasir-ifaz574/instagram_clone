import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/widgets/post_card.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        centerTitle: false,
        title: SvgPicture.asset(
          'assets/instagram.svg',
          color: primaryColor,
          height: 32,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message_outlined,
            ),
          ),
        ],
      ),
      body: PostCard(),
    );
  }
}
