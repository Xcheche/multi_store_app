import 'package:flutter/material.dart';
import 'package:multi_store_app/minor_screens/subcateg_products.dart';
import '../utilities/categ_list.dart';

class MenCategory extends StatelessWidget {
  const MenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(30.0),
          child: Text(
            'Men',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.68,
          child: GridView.count(
            mainAxisSpacing: 70,
            crossAxisSpacing: 15,
            crossAxisCount: 3,
            children: List.generate(
              men.length,
              (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SubCategProducts(
                          mainCategName: 'men',
                          subCategName: men[index],
                        ),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: Image(
                          image: AssetImage('images/men/men$index.jpg'),
                        ),
                      ),
                      Text(men[index]),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
