import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_way_deal/modules/customer/cubit/cubit.dart';
import 'package:two_way_deal/modules/customer/cubit/states.dart';
import 'package:two_way_deal/shared/styles/colors.dart';

class CustomerLayoutScreen extends StatelessWidget {
  const CustomerLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = CustomerCubit.get(context);

    return BlocConsumer<CustomerCubit, CustomerStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-vector/isolated-young-handsome-man-different-poses-white-background-illustration_632498-859.jpg?t=st=1708891814~exp=1708895414~hmac=672f93fdf519149c27314725f0c651ac53217b93675603b63ec99134b35b8392&w=740'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Mona',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 12.0),
                    ),
                    Text(
                      'Hungry?',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              fontWeight: FontWeight.w100, fontSize: 8.0),
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: myColor,
                  size: 30.0,
                ),
              ),
              Stack(alignment: AlignmentDirectional.topEnd, children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    size: 30.0,
                  ),
                ),
                Container(
                  padding: const EdgeInsetsDirectional.only(
                    top: 11.0,
                    end: 14.0,
                  ),
                  child: const CircleAvatar(
                    radius: 3.5,
                    backgroundColor: myColor,
                  ),
                ),
              ]),
            ],
          ),
          body: cubit.bottomScreens[cubit.currentIndex],
          bottomNavigationBar: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
              bottom: 20.0,
              end: 20.0,
            ),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 5.0,
              child: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                selectedItemColor: myColor,
                onTap: (index) {
                  cubit.changeBottomNav(index);
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    label: 'Profile',
                  ),
                ],
                elevation: 0.0,
              ),
            ),
          ),
        );
      },
    );
  }
}
