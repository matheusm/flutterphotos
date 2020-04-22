import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          //margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          //padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              UserInfo(images, index),
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.network(images[index].url),
              ),
              Text(images[index].title),
            ],
          ),
          decoration: BoxDecoration(
              //border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(5)),
        );
      },
    );
  }
}

class UserInfo extends StatelessWidget {
  final List<ImageModel> images;
  final int index;

  UserInfo(this.images, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8, left: 15),
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
              images[index].url,
            ),
            maxRadius: 16,
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('oemath7', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xff262626)),),
                Text('Maceió, Brazil', style: TextStyle(fontSize: 12),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
