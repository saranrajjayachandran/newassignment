import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newassignment/screens/productScreen/presentation/bloc/product_bloc.dart';
import 'package:newassignment/screens/productScreen/presentation/widget/ProductWidget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ProductBloc>().add(FetchProductEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) {

    },
    child: BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Products", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
          ),
          body: context.read<ProductBloc>().isResponseCame ? ProductWidget() : CircularProgressIndicator(),
        );
      },),
    );
  }
}
