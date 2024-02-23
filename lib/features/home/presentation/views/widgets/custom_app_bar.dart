import 'package:flutter/material.dart';

import '../../../../../core/utils/asset.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,width: 100,height: 18,),
          const Spacer(),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search,size: 26,))
        ],
      ),
    );
  }
}