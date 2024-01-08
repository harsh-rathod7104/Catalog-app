import 'package:classico/Widgets/thems.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Laxmi cheat Product"
            .text
            .xl3
            .bold
            .color(MyTheme.darkBluishColor)
            .make(),
        "21 din me item doubble".text.xl2.make()
      ],
    );
  }
}
