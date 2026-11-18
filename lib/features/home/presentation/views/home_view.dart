import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revision/config/di/di.dart';
import 'package:revision/features/home/presentation/view_model/home_event.dart';
import 'package:revision/features/home/presentation/view_model/home_state.dart';
import 'package:revision/features/home/presentation/view_model/home_view_model.dart';
import 'package:revision/features/home/presentation/widgets/product_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeViewModel>(
      create: (context) =>
          getIt<HomeViewModel>()..doEvent(GetHomeProductsEvent()),
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 200,
              child: BlocBuilder<HomeViewModel, HomeState>(
                builder: (context, state) {
                  if (state.homeProductState?.isLoading ?? false) {
                    return CircularProgressIndicator();
                  }
                  if (state.homeProductState?.errMsg != null) {
                    return Center(child: Text(state.homeProductState!.errMsg!));
                  }
                  return ProductsList(
                    title: "Home Products",
                    products: state.homeProductState?.data ?? [],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
