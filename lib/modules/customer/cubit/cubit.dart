import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_way_deal/models/products_model.dart';
import 'package:two_way_deal/modules/customer/cubit/states.dart';
import 'package:two_way_deal/modules/customer/home/home.dart';
import 'package:two_way_deal/modules/customer/profile/profile.dart';
import 'package:two_way_deal/shared/network/remote/dio_helper.dart';
import 'package:two_way_deal/shared/network/remote/end_points.dart';

class CustomerCubit extends Cubit<CustomerStates> {
  CustomerCubit() : super(CustomerInitialState());

  static CustomerCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    CustomerHomeScreen(),
    const CustomerProfileScreen(),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }

  int itemQuantity = 1;
  double itemPrice = 75;
  double totalPrice = 75;

  void minus() {
    if (itemQuantity > 1) {
      itemQuantity--;
      totalPrice -= itemPrice;
      emit(ItemQuantityMinusState(itemQuantity, totalPrice, itemPrice));
    }
  }

  void plus() {
    itemQuantity++;
    totalPrice += itemPrice;
    emit(ItemQuantityPlusState(itemQuantity, totalPrice, itemPrice));
  }

  ProductsModel? productsModel;

  void getProducts() {
    emit(CustomerGetProductsLoadingState());
    DioHelper.getData(
      url: GET_PRODUCTS,
    ).then((value) {
      productsModel = ProductsModel.fromJson(value.data);
      print(value.data);
      emit(CustomerGetProductsSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CustomerGetProductsErrorState());
    });
  }
}
