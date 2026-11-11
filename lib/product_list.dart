import 'package:flutter/material.dart';

import 'package:shoping/products_cart.dart';
import 'package:shoping/product_details_page.dart';
import 'global_var.dart';


class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<String> filters = const[
    'all',
    'Aadds',
    'nike',
    'bata',
    'bata1',
    'bata2',
  ];
  late String selectedFilter ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedFilter = filters[0];
  }


  @override
  Widget build(BuildContext context) {
    //
    // final size = MediaQuery.of(context).size;
    //
    const border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Color.fromRGBO(225, 225, 225, 1),
    ),
    borderRadius: BorderRadius.horizontal(
      left: Radius.circular(100.0),
    ),
    );


    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Hostel\nMart',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: border,
                    enabledBorder: border,
                    focusedBorder: border,
                  ),

                ),
              ),



            ],

          ),

          SizedBox(
            height: 75,
            child: ListView.builder(
              itemCount: filters.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context , index) {
                final filter = filters[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {

                        selectedFilter = filter;
                      });

                    },

                    child: Chip(
                      backgroundColor: selectedFilter == filter
                          ?Theme.of(context).colorScheme.primary
                          :  Color.fromRGBO(245, 247, 249, 1),

                      side: BorderSide(
                        color: Color.fromRGBO(245, 247, 249, 1),
                      ),
                      label: Text(filter),
                      labelStyle: TextStyle(

                        fontSize: 18,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),


          Expanded(
            child: LayoutBuilder(
                builder: (context,constraints){
                  if(constraints.maxHeight >1080){
                    return GridView.builder(
                      itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2,
                      ),

                      itemBuilder: (context,index) {
                        final product = products[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return ProductDetailsPage(product: product);
                                },
                              ),
                            );
                          },
                          child: ProductsCart(
                            title: product['title'] as String,
                            price: product['price'] as double,
                            image: product['imageUrl'] as String,
                            backgroundColor: index.isEven
                                ? Color.fromRGBO(216, 240, 253, 1)
                                : Color.fromRGBO(245, 247, 249, 1),
                          ),
                        );
                      },
                    );
                  }else{
                    return ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context,index){
                        final product = products[index];
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return ProductDetailsPage(product: product);
                            }));
                          },
                          child: ProductsCart(
                            title: product['title'] as String ,
                            price: product['price'] as double,
                            image: product['imageUrl'] as String,
                            backgroundColor: index.isEven
                                ? Color.fromRGBO(216, 240, 253, 1)
                                : Color.fromRGBO(245, 247, 249, 1),
                          ),
                        );
                      },
                    );
                  }
                },
            ),
          )

        ],
      ),
    );
  }
}
