import 'package:flutter/foundation.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike1',
      price: '580,00',
      imagePath: 'lib/images/nike1.jpeg',
      description: 'some cool description',
    ),

    Shoe(
      name: 'Nike2',
      price: '699,90',
      imagePath: 'lib/images/nike2.jpeg',
      description: 'some cool description',
    ),

    Shoe(
      name: 'Nike3',
      price: '850,00',
      imagePath: 'lib/images/nike3.jpeg',
      description: 'some cool description',
    ),

    Shoe(
      name: 'Nike4',
      price: '1050,00',
      imagePath: 'lib/images/nike4.jpeg',
      description: 'some cool description',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
