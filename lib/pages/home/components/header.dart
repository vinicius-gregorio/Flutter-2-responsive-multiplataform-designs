import 'package:flutter/material.dart';
import 'package:responsive_test/config/breakpoints.dart';
import 'package:responsive_test/pages/home/components/custom_search_field.dart';

class Header extends StatelessWidget {
  final String backgroundImage =
      'https://images.unsplash.com/photo-1613375612148-a1a20bed0bcf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';
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
                    backgroundImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 50,
                    child: PromoContainer(
                      width: 450,
                    )),
              ],
            ),
          );
        }
        if (maxWidth >= mobileBreakpoints) {
          return SizedBox(
              height: 320,
              child: Stack(
                children: [
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Image.network(
                      backgroundImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      left: 20,
                      top: 20,
                      child: PromoContainer(
                        width: 350,
                      ))
                ],
              ));
        }
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                backgroundImage,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
            )
          ],
        );
      },
    );
  }
}

class PromoContainer extends StatelessWidget {
  final width;
  PromoContainer({@required this.width});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.black,
        elevation: 8,
        child: Container(
          padding: EdgeInsets.all(24),
          width: width,
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
        ));
  }
}
