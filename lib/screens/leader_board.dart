import 'package:flutter/material.dart';
import 'package:paynav/widgets/points.dart';
import 'package:paynav/widgets/header.dart';
import 'package:paynav/widgets/rankers.dart';
import 'package:provider/provider.dart';
import 'package:paynav/notifier.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic rankers = Provider.of<UsersData>(context).data;
    // double w = MediaQuery.of(context).size.width;
    // debugPrint(w.toString());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              const StackHeader(),
              const SizedBox(
                height: 8,
              ),
              RankersList(rankers: rankers),
              const SizedBox(
                height: 18,
              ),
              const BottomTabBar(),
              Padding(
                padding: const EdgeInsets.only(bottom: 70.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Made with Golden ',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey[800], fontSize: 17),
                    ),
                    Image.asset(
                      'assets/heart.png',
                      height: 23,
                      width: 25,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
