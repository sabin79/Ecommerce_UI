import 'package:ecommerceui/models/shoes.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Jorden 1",
      description: "This Forward-thinking design of his least signature  shoe",
      price: "250",
      image: "assets/airhorden1.jpg",
    ),
    Shoe(
      name: "Jorden Legacy",
      description: "This Forward-thinking design of his least signature  shoe",
      price: "600",
      image: "assets/jordanlegacy.png",
    ),
    Shoe(
      name: "Nike Durant",
      description: "This Forward-thinking design of his least signature  shoe",
      price: "500",
      image: "nikedurant.jpg",
    ),
    Shoe(
      name: "Nike Air force 1",
      description: "This Forward-thinking design of his least signature  shoe",
      price: "300",
      image: "assets/nikeairforce1.png",
    )
  ];
  // list of item in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeCart() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
