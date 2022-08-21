import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ShopModel{
  String shopName;
  String shopImageUrl;
  String postCardImageUrl;
  IconData likeIcon;
  IconData viewIcon;
  IconData commentIcon;
  int viewCount;

  ShopModel(this.shopName, this.shopImageUrl, this.postCardImageUrl,
      this.likeIcon, this.viewIcon, this.commentIcon, this.viewCount);
}

List<ShopModel> getShopRecords(){
  List<ShopModel> shopModel = [];

  shopModel.add(ShopModel("Yomi Casual", "img/shop1.jpg", "img/img1.jpg", Icons.favorite, Icons.visibility, Icons.comment, 5));
  shopModel.add(ShopModel("Aj Stiches", "img/shop2.jpg", "img/img2.jpg", Icons.favorite, Icons.visibility, Icons.comment,10));
  shopModel.add(ShopModel("Enyo Collections", "img/shop3.jpg", "img/img3.jpg", Icons.favorite, Icons.visibility, Icons.comment, 0));
  shopModel.add(ShopModel("Roy Collections", "img/shop4.jpg", "img/img1.jpg", Icons.favorite, Icons.visibility, Icons.comment,7));
  shopModel.add(ShopModel("Nencia", "img/shop5.jpg", "img/img2.jpg", Icons.favorite, Icons.visibility, Icons.comment,100));
  shopModel.add(ShopModel("Nencia", "img/shop6.jpg", "img/img3.jpg", Icons.favorite, Icons.visibility, Icons.comment,20));

  return shopModel;
}