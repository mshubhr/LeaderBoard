// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paynav/screens/how_it_works.dart';
import 'package:paynav/widgets/nav_bar.dart';
import 'package:paynav/screens/my_status.dart';

class StackHeader extends StatelessWidget {
  const StackHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        // SizedBox(
        //   height: w * 1.3,
        // ),
        const Positioned(
          top: 0,
          right: 0,
          left: 0,
          bottom: 75,
          child: Image(
            image: AssetImage('assets/round_bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(
                height: 15, //0.018
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Leader Board',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    'How it works',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: const Color(0x00FFFFFF),
                        context: context,
                        builder: (context) => const HowItWorks(),
                      );
                    },
                    child: Image.asset(
                      'assets/settings.png',
                      height: 35,
                      width: 32,
                    ),
                  ),
                ],
              ),
              const TabBarAndTabBarView(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 83,
                // width: double.infinity,
                width: w * 0.904,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4ECFF),
                  borderRadius: BorderRadius.circular(23),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(0, 3),
                      color: Color.fromARGB(255, 209, 209, 209),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '41',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                        Image.asset(
                          'assets/red_triangle.png',
                          height: 8,
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset('assets/lalit.png'),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text('Lalit Thakre'),
                    const Spacer(),
                    Text(
                      '2130',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              )
            ],
          ),
        ),
        Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          // top: w * 1.1399,
          // left: w * 0.258,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: 50,
                width: w * 0.48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      color: Color.fromARGB(255, 202, 202, 202),
                    ),
                  ],
                ),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E0082),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const MyStatus())));
                      },
                      child: Text(
                        'My Status & Awards >',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
