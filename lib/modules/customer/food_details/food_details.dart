import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_way_deal/modules/customer/cubit/cubit.dart';
import 'package:two_way_deal/modules/customer/cubit/states.dart';
import 'package:two_way_deal/shared/styles/colors.dart';

import '../../../shared/components/components.dart';

class FoodDetails extends StatelessWidget {
  FoodDetails({super.key});

  var bottomSheetKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerCubit, CustomerStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          key: bottomSheetKey,
          resizeToAvoidBottomInset: true,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(294.0),
            child: AppBar(
              leading: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 10.0,
                    start: 5.0,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              toolbarHeight: 294.0,
              actions: const [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 20.0,
                      end: 7.0,
                    ),
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace:
                  Stack(alignment: AlignmentDirectional.topStart, children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://img.freepik.com/free-photo/pizza-pizza-filled-with-tomatoes-salami-olives_140725-1200.jpg?t=st=1709062734~exp=1709066334~hmac=b314b3c8ea5d4191618437bf25931e53a162f37cf8cd3b9b48a2b39375112742&w=740'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 44.0,
                    start: 55.0,
                  ),
                  child: Text(
                    'Food Details',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                        fontSize: 23.0,
                        color: Colors.white),
                  ),
                ),
              ]),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Pizza',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 27.0),
                      ),
                      const Spacer(),
                      const Card(
                        shape: CircleBorder(),
                        elevation: 3.0,
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite_border,
                            color: myColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '75 ',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 24.0),
                      ),
                      Text(
                        'egp',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 12.0),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: myColor,
                            size: 19.0,
                          ),
                          Text(
                            '5.0 (23 Reviews)',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.w100,
                                    color: Colors.grey[700],
                                    fontSize: 11.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type ...',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[800],
                        fontSize: 14.0),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  cartButton(
                    text: 'Add to cart',
                    function: () {
                      bottomSheetKey.currentState!.showBottomSheet(
                        backgroundColor: Colors.transparent,
                        (context) => Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100.0),
                              topRight: Radius.circular(100.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.only(
                              top: 50.0,
                            ),
                            child: Stack(children: [
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (context, index) =>
                                    itemBottomSheet(context),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                  height: 15.0,
                                ),
                                itemCount: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        start: 25.0,
                                        end: 25.0,
                                        bottom: 10.0,
                                      ),
                                      child: cartButton(
                                        text: 'Checkout',
                                        function: () {},
                                        context: context,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        start: 25.0,
                                        end: 25.0,
                                        bottom: 10.0,
                                      ),
                                      child: cancelButton(
                                        text: 'Cancel',
                                        function: () {},
                                        context: context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ),
                      );
                    },
                    context: context,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'other customers also order these',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[800],
                        fontSize: 15.0),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => buildOtherItems(context),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 5.0,
                    ),
                    itemCount: 10,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildOtherItems(context) => Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white,
        elevation: 10.0,
        child: Container(
          width: double.infinity,
          height: 80.0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: SizedBox(
                    height: 68.0,
                    width: 65.0,
                    child: Image(
                      image: NetworkImage(
                          'https://img.freepik.com/premium-photo/classic-italian-pasta-penne-alla-arrabiata-with-freshly-cheese-dark-table-top-view-generative-ai_47243-2129.jpg?w=740'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.only(top: 5.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  'Pasta',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: 13.0),
                                ),
                                const Spacer(),
                                Text(
                                  '75 ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey[800],
                                          fontSize: 13.0),
                                ),
                                Text(
                                  'egp',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey[800],
                                          fontSize: 7.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: myColor,
                                    size: 18.0,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: myColor,
                                    size: 18.0,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: myColor,
                                    size: 18.0,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: myColor,
                                    size: 18.0,
                                  ),
                                  const Icon(
                                    Icons.star_half,
                                    color: myColor,
                                    size: 18.0,
                                  ),
                                  Text(
                                    '(12)',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey[600],
                                            fontSize: 10.0),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              CircleAvatar(
                                radius: 13.0,
                                backgroundColor: myColor,
                                child: IconButton(
                                  padding: const EdgeInsetsDirectional.only(
                                      end: 2.0, start: 4.0),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 17.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget itemBottomSheet(context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.check_box_outline_blank,
                  color: Colors.grey[300],
                  size: 25.0,
                ),
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.white,
                elevation: 10.0,
                child: Container(
                  width: 255.0,
                  height: 85.0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        const Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: SizedBox(
                            height: 68.0,
                            width: 65.0,
                            child: Image(
                              image: NetworkImage(
                                  'https://img.freepik.com/premium-photo/classic-italian-pasta-penne-alla-arrabiata-with-freshly-cheese-dark-table-top-view-generative-ai_47243-2129.jpg?w=740'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pasta',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: 13.0),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: myColor,
                                      size: 16.0,
                                    ),
                                    Text(
                                      '(12)',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey[600],
                                              fontSize: 10.0),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: IconButton(
                                          onPressed: () {
                                            CustomerCubit.get(context).minus();
                                          },
                                          icon: const Icon(
                                            Icons.remove,
                                            size: 15.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        '${CustomerCubit.get(context).itemQuantity}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                                fontSize: 14.0),
                                      ),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: IconButton(
                                          onPressed: () {
                                            CustomerCubit.get(context).plus();
                                          },
                                          icon: const Icon(
                                            Icons.add,
                                            size: 15.0,
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '${CustomerCubit.get(context).totalPrice}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey[800],
                                                fontSize: 13.0),
                                      ),
                                      Text(
                                        'egp',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey[800],
                                                fontSize: 7.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_outlined,
                  size: 25.0,
                  color: myColor,
                ),
              ),
            ],
          ),
        ],
      );
}
