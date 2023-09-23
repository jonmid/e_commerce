import 'package:e_commerce/src/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/src/data/services/firebase/firestore.dart';

class ListProducts extends StatefulWidget {
  const ListProducts({
    super.key,
  });

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: RefreshIndicator(
          onRefresh: () async {
            await getAllCollection(nameCollection: 'products');
            setState(() {});
          },
          child: FutureBuilder(
            future: getAllCollection(nameCollection: 'products'),
            builder: (BuildContext context, snapshot) {
              if (snapshot.hasData) {
                final data = snapshot.data;

                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 21.0,
                    crossAxisSpacing: 15.0,
                  ),
                  itemCount: data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: NetworkImage(data?[index]['img']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data?[index]['title'],
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: textSecondaryLight,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data?[index]['price'].toString() ?? '',
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
