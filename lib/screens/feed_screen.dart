import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/widgets/post_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('post').snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) => PostCard(
              snap: snapshot.data!.docs[index].data(),
            ),
          );
        },
      ),
    );
  }
}
