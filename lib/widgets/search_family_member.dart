import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchFamilyMember extends StatelessWidget {
  const SearchFamilyMember({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 30,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(7))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 7,
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                  // child: Image.asset(
                  //   "",
                  //   color: Colors.grey,
                  // ),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Text(
                  "Search Family Member",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 30,
              width: 30,
              // child: Image.asset(
              //   "",
              //   color: Colors.black,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
