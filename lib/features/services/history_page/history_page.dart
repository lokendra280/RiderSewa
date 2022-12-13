// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ridersewa/core/presentation/resources/size_constants.dart';
import 'package:ridersewa/core/presentation/resources/ui_assets.dart';
import 'package:ridersewa/core/presentation/widget/cached_network_image_builder.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'History',
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: const TabBar(
                labelColor: Color(0xff070B86),
                indicatorColor: Color.fromRGBO(94, 20, 161, 1),
                tabs: <Widget>[
                  Tab(
                    text: "BIKE",
                  ),
                  Tab(
                    text: "CAR",
                  ),
                  Tab(
                    text: "Bus",
                  ),
                  Tab(
                    text: "FLIGHT",
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: TabBarView(
                children: <Widget>[
                  BikePage(),
                  CarPage(),
                  BusPage(),
                  FlightPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarPage extends StatefulWidget {
  const CarPage({super.key});

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Show Complete',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Color.fromRGBO(94, 20, 161, 1)),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: SC.mH, vertical: SC.mH),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 350),
                    child: Text(
                      'it seems you havent complete any trips',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140),
              child: Row(
                children: [
                  Text(
                    'Try your trip today',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BusPage extends StatefulWidget {
  const BusPage({super.key});

  @override
  State<BusPage> createState() => _BusPageState();
}

class _BusPageState extends State<BusPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 350),
                  child: Text(
                    'it seems you havent complete any Booking..',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SC.lH,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140),
              child: Row(
                children: [
                  Text(
                    'Make a Bus Booking',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FlightPage extends StatefulWidget {
  const FlightPage({super.key});

  @override
  State<FlightPage> createState() => _FlightPageState();
}

class _FlightPageState extends State<FlightPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 350),
                  child: Expanded(
                    child: Text(
                      'it seems you havent complete any Flight ..',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SC.lH,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140),
              child: Row(
                children: [
                  Text(
                    'Make a Flight Booking',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BikePage extends StatefulWidget {
  const BikePage({super.key});

  @override
  State<BikePage> createState() => _BikePageState();
}

class _BikePageState extends State<BikePage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Show Complete',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Color.fromRGBO(94, 20, 161, 1)),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: SC.mH, vertical: SC.mH),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Card(
                    child: HistorySubFeature(),
                  ),
                  Card(
                    child: SecondHistoryDetail(),
                  ),
                  Card(
                    child: ThirdHistoryDetail(),
                  ),
                  Card(
                    child: HistorySubFeature(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HistorySubFeature extends StatelessWidget {
  const HistorySubFeature({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: const SizedBox(
                width: 60,
                height: 60,
                child: CustomCachedNetworkImage(
                  'https://cdn.pixabay.com/photo/2016/11/14/17/39/person-1824144_960_720.png',
                  fit: BoxFit.cover,
                  aspectRatio: 2.1,
                ),
              ),
            ),
            History_Title(
              title: "Rishi Bhakata Marg,\n KAthmandu 44600, Nepal",
            ),
          ],
        ),
        Booking_Location(
          BookingLocation: 'Putalisadak Chock',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
              ),
              child: Text(
                'Adwait Marn  ',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color.fromRGBO(94, 20, 161, 1),
                    ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              UIAssets.getDummyImage('bike.png'),
              width: 50,
              height: 50,
            ),
          ],
        ),
        const SizedBox(
          height: SC.sH,
        ),
        Booking_status(
          Bookingstatus: 'Cancalled',
          BookingDate: '06/12/2020. 6.12 PM',
        ),
        const SizedBox(
          height: SC.mH,
        ),
        Booking_id(
          bookingid: 'Booking id: 346',
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class ThirdHistoryDetail extends StatelessWidget {
  const ThirdHistoryDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: const SizedBox(
                width: 60,
                height: 60,
                child: CustomCachedNetworkImage(
                  'https://cdn.pixabay.com/photo/2016/11/14/17/39/person-1824144_960_720.png',
                  fit: BoxFit.cover,
                  aspectRatio: 2.1,
                ),
              ),
            ),
            History_Title(
              title: "Unnamed Road,\n KAthmandu 44600, Nepal",
            ),
          ],
        ),
        Booking_Location(
          BookingLocation: 'Putalisadak Chock .Behold',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
              ),
              child: Text(
                'Kathmandu',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color.fromRGBO(94, 20, 161, 1),
                    ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              UIAssets.getDummyImage('bike.png'),
              width: 50,
              height: 50,
            ),
          ],
        ),
        const SizedBox(
          height: SC.sH,
        ),
        Booking_status(
          Bookingstatus: 'Cancalled',
          BookingDate: '08/11/2020. 12.26 PM',
        ),
        const SizedBox(
          height: SC.mH,
        ),
        Booking_id(
          bookingid: 'Booking id: 318',
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class SecondHistoryDetail extends StatelessWidget {
  const SecondHistoryDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: const SizedBox(
                width: 60,
                height: 60,
                child: CustomCachedNetworkImage(
                  'https://cdn.pixabay.com/photo/2016/11/14/17/39/person-1824144_960_720.png',
                  fit: BoxFit.cover,
                  aspectRatio: 2.1,
                ),
              ),
            ),
            History_Title(
              title: "Madhya Marg, KAthmandu \n44600, Nepal",
            ),
          ],
        ),
        Booking_Location(
          BookingLocation: 'Putalisadak Chock',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
              ),
              child: Text(
                'Adwait Marn  ',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color.fromRGBO(94, 20, 161, 1),
                    ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              UIAssets.getDummyImage('bike.png'),
              width: 50,
              height: 50,
            ),
          ],
        ),
        const SizedBox(
          height: SC.sH,
        ),
        Booking_status(
          Bookingstatus: 'Cancalled',
          BookingDate: '09/11/2020. 11.20 PM',
        ),
        const SizedBox(
          height: SC.mH,
        ),
        Booking_id(
          bookingid: 'Booking id: 346',
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class Booking_Location extends StatelessWidget {
  final String BookingLocation;
  const Booking_Location({
    required this.BookingLocation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 70,
          ),
          child: Text(
            BookingLocation,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Color.fromRGBO(94, 20, 161, 1)),
          ),
        ),
      ],
    );
  }
}

class Booking_status extends StatelessWidget {
  final String Bookingstatus;
  final String BookingDate;
  const Booking_status({
    required this.BookingDate,
    required this.Bookingstatus,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
            child: Text(
              Bookingstatus,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Color.fromRGBO(255, 107, 59, 1)),
            ),
          ),
        ),
        Text(
          BookingDate.toString(),
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Color.fromRGBO(94, 20, 161, 1),
              ),
        )
      ],
    );
  }
}

class Booking_id extends StatelessWidget {
  final String bookingid;
  const Booking_id({
    required this.bookingid,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          bookingid,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Color.fromRGBO(255, 107, 59, 1),
              ),
        )
      ],
    );
  }
}

class History_Title extends StatelessWidget {
  final String title;

  const History_Title({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            color: Color.fromRGBO(94, 20, 161, 1),
          ),
    );
  }
}
