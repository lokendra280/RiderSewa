import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/widget/cached_network_image_builder.dart';
import '../../../core/presentation/widget/forms/buttons.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: SC.sH,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SBC.lW,
          const SizedBox(
            height: 50,
            width: 50,
            child: CustomCachedNetworkImage(
              'https://previews.123rf.com/images/jovanas/jovanas1602/jovanas160201359/52097507-notification-icon.jpg',
              fit: BoxFit.cover,
              aspectRatio: 2.1,
            ),
          ),
          Column(
            children: [
              const _RoomTitle(
                title: "Dear Sir",
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Good Afternoon i am just checking messages \n sending or not',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.black45),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 160),
                    child: Text(
                      '25/09/2020 1.35 PM',
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _RoomTitle extends StatelessWidget {
  final String title;

  const _RoomTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 225),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
