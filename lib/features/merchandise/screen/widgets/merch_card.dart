import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unify/common/styles/spacing_styles.dart';
import 'package:unify/common/widgets/card/card.dart';
import 'package:unify/features/merchandise/screen/widgets/merch_sheet.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/sizes.dart';


class MerchCard extends StatelessWidget {
  const MerchCard({super.key});

  @override
  Widget build(BuildContext context) {
    final imageWidget = ClipRRect(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
      child: CachedNetworkImage(
        imageUrl: "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%D",
        fit: BoxFit.cover,
        width: TSizes.cardWidth,
        height: TSizes.cardHeight,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );

    final content = Flexible(
      flex: 1,
      child: Padding(
        padding: TSpacingStyle.postPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: double.infinity, child: Text("Intern Shirt", style: Theme.of(context).textTheme.titleLarge,)),
            Text("Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores placeat nobis dolorum sint voluptas quo distinc consectetur adipisicing", maxLines: 3, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: 6.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("₱400", style: Theme.of(context).textTheme.titleMedium,),
                TextButton(onPressed: (){}, child: Text("More Info", style: Theme.of(context).textTheme.titleSmall,))
              ],
            )
          ],
        ),
      ),
    );

    return CardWidget(imageWidget: imageWidget, content: content);
  }
}
