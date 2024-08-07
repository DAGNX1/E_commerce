
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/routes/routes.dart';
import '../../manager/cubit.dart';
import '../../manager/states.dart';
import '../../widgets/product_item.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return HomeCubit.get(context).products.isEmpty
            ? Center(child: const CircularProgressIndicator())
            : Column(
                children: [
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 4 / 5,
                      shrinkWrap: true,
                      children: HomeCubit.get(context)
                          .products
                          .map((e) => InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.productDetails,
                                    arguments: e);
                              },
                              child: ProductItem(e)))
                          .toList(),
                    ),
                  )
                ],
              );
      },
    );
  }
}
