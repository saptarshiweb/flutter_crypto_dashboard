import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color w = Colors.white;
  Color g = Colors.grey.shade400;

  String namebar = 'Hi,Saptarshi !';
  @override
  Widget build(BuildContext context) {
    return GlowContainer(
      color: const Color.fromARGB(255, 0, 0, 0),
      glowColor: Colors.purple.shade900,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(toolbarHeight: 0),
        body: Row(
          children: [leftbar(), const SizedBox(width: 17), midbar1()],
        ),
      ),
    );
  }

  Widget midbar1() {
    return Column(
      children: [
        const SizedBox(height: 20),
        namedrop(),
        const SizedBox(height: 20),
        cryptotiletop(),
      ],
    );
  }

  Widget cryptotiletop() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              GlowIcon(FontAwesomeIcons.ethereum,
                  color: const Color.fromARGB(255, 21, 4, 41),
                  size: 42,
                  glowColor: Colors.lightGreenAccent.shade400,
                  blurRadius: 5),
              const SizedBox(width: 14),
              Column(
                children: [
                  Row(
                    children: [
                      wr('Ethereum/', 16, false),
                      wr('ETH', 16, true),
                    ],
                  ),
                  const SizedBox(height: 4),
                  wr('s', 6, false),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget namedrop() {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 14, 14, 14),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade900, width: 0.8)),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Text(
              namebar + "  ",
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'amita',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Icon(Icons.arrow_drop_down_circle_outlined, color: w, size: 20),
          ],
        ),
      ),
    );
  }

  Widget leftbar() {
    return SizedBox(
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: Lottie.network(
                'https://assets9.lottiefiles.com/packages/lf20_niecbrti.json'),
          ),
          const SizedBox(height: 30),
          const FaIcon(
            FontAwesomeIcons.houseCircleCheck,
            color: Colors.lightGreenAccent,
            size: 22,
          ),
          const SizedBox(height: 18),
          sidebt1(),
          const SizedBox(height: 10),
          sidebt2(),
          const SizedBox(height: 30),
          Icon(FontAwesomeIcons.circlePlay, color: g, size: 19),
          const SizedBox(height: 20),
          Icon(Icons.view_comfy_alt_outlined, color: w, size: 20),
          const Spacer(),
          Icon(FontAwesomeIcons.arrowUpFromBracket,
              color: Colors.yellowAccent.shade400, size: 19),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Container sidebt1() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(115, 254, 125, 125).withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.5),
        child: Column(
          children: [
            const SizedBox(height: 3),
            Container(
                decoration: const BoxDecoration(
                    color: Colors.pink, shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.search, color: w, size: 19),
                )),
            const SizedBox(height: 12),
            Icon(Icons.rocket, color: w, size: 19),
            const SizedBox(height: 12),
            Icon(Icons.card_membership_outlined, color: w, size: 19),
            const SizedBox(height: 12),
            Icon(Icons.save_as_outlined, color: w, size: 19),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  Container sidebt2() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(112, 85, 142, 240).withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.5),
        child: Column(
          children: [
            const SizedBox(height: 3),
            Container(
                decoration: BoxDecoration(
                    color: Colors.purple.shade600, shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.power_settings_new_outlined,
                      color: w, size: 19),
                )),
            const SizedBox(height: 12),
            Icon(Icons.cached_outlined, color: w, size: 19),
            const SizedBox(height: 12),
            Icon(Icons.cloud_download_sharp, color: w, size: 19),
            const SizedBox(height: 12),
            Icon(FontAwesomeIcons.codeCompare, color: w, size: 19),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  Text wr(String s, double size, bool b) {
    return Text(
      s,
      style: TextStyle(
          color: Colors.white,
          fontSize: size,
          fontWeight: b == true ? FontWeight.bold : FontWeight.normal),
    );
  }
}
