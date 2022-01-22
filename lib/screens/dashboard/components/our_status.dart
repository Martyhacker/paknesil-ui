import 'package:flutter/material.dart';
import 'package:paknesil/constants.dart';
import 'package:paknesil/models/our_status.dart';
import 'package:paknesil/reponsive.dart';

import 'status_info_card.dart';

class OurStatus extends StatelessWidget {
  const OurStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(kDefPad),
      child: Column(
        children: [
          Responsive(
            mobile: OurStatusGridView(
              crossAxisCount: size.width < 650 ? 2 : 4,
              childAspectRatio: size.width < 650 ? 1.3 : 1,
            ),
            tablet: OurStatusGridView(),
            desktop: OurStatusGridView(
                childAspectRatio: size.width < 1400 ? 1.1 : 1.4),
          ),
        ],
      ),
    );
  }
}

class OurStatusGridView extends StatelessWidget {
  const OurStatusGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: ourStatusModel.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: kDefPad,
        mainAxisSpacing: kDefPad,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          StatusInfoCard(info: ourStatusModel[index]),
    );
  }
}
