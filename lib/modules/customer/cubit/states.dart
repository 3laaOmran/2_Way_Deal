abstract class CustomerStates {}

class CustomerInitialState extends CustomerStates {}

class ChangeBottomNavState extends CustomerStates {}

class ItemQuantityMinusState extends CustomerStates {
  int itemQuantity;
  double itemPrice;
  double totalPrice;

  ItemQuantityMinusState(this.itemQuantity, this.itemPrice, this.totalPrice);
}

class ItemQuantityPlusState extends CustomerStates {
  int itemQuantity;
  double itemPrice;
  double totalPrice;

  ItemQuantityPlusState(this.itemQuantity, this.itemPrice, this.totalPrice);
}

class CustomerGetProductsLoadingState extends CustomerStates {}

class CustomerGetProductsSuccessState extends CustomerStates {}

class CustomerGetProductsErrorState extends CustomerStates {}
