import 'package:flutter/material.dart';
import 'package:responsive_test/pages/home/components/custom_search_field.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1613375612148-a1a20bed0bcf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 50,
                    child: Card(
                        color: Colors.black,
                        elevation: 8,
                        child: Container(
                          padding: EdgeInsets.all(24),
                          width: 450,
                          child: Column(
                            children: [
                              Text(
                                'Aprenda Flutter com este curso',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Aprenda Flutter com este curso, eh muito brabo mano seloco vc nao faz ideia tem muita coisa legal',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 16),
                              CustomSearchField(),
                            ],
                          ),
                        ))),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
