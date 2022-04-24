import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/src/widgets/single_child_scroll_view.dart';

class Images extends StatelessWidget {
  const Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(250, 235, 255, 250),
            appBar: AppBar(
              title: Text('About Us'),
              centerTitle: true,
              backgroundColor: const Color.fromARGB(153, 0, 200, 151),
            ),
            body: Container(
                child: Column(children: [
              ImageSlideshow(
                width: double.infinity,
                height: 200,

                /// The page to show when first creating the [ImageSlideshow].
                initialPage: 0,
                indicatorColor: const Color.fromARGB(153, 0, 200, 151),
                indicatorBackgroundColor: Colors.grey,

                /// The widgets to display in the [ImageSlideshow].
                /// Add the sample image file into the images folder
                children: [
                  Image.asset(
                    'assets/images/RaboLogo.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/RaboLogo.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/RaboLogo.png',
                    fit: BoxFit.cover,
                  ),
                ],

                /// Called whenever the page in the center of the viewport changes.
                onPageChanged: (value) {
                  print('Page changed: $value');
                },

                /// Auto scroll interval.
                /// Do not auto scroll with null or 0.
                autoPlayInterval: 3000,

                /// Loops back to first slide.
                isLoop: true,
              ),
              Expanded(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(children: const <Widget>[
                        Text(
                          "TOPIC",
                          style: TextStyle(
                              color: Color.fromARGB(153, 24, 88, 72),
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0),
                        ),
                        Text(
                            "bggivernogv cnwlev ofjijfo3o oo3oj3pt  9pi30i33tp93pt0i4o3tu4toj4kjtoul3up93tup9p 96up4 4iu4p y5y9r6ypy4py6ojp95py9yp6 4poy34ojtletihldig;ejwlkhfleu;rkr;oejto34.tknwk,fyilewfjl;ewko;ewjvkrglikerjkgn5ekrbjbmf bdker,tjo34jrmlfemvk.jgo;eajgleajg;oaug;oajeglogh9gthgeknegliueg;ongekhgoegjlejg4pigp3lty"),
                        Text(
                            "bggivernogv cnwlev ofjijfo3o oo3oj3pt  9pi30i33tp93pt0i4o3tu4toj4kjtoul3up93tup9p 96up4 4iu4p y5y9r6ypy4py6ojp95py9yp6 4poy34ojtletihldig;ejwlkhfleu;rkr;oejto34.tknwk,fyilewfjl;ewko;ewjvkrglikerjkgn5ekrbjbmf bdker,tjo34jrmlfemvk.jgo;eajgleajg;oaug;oajeglogh9gthgeknegliueg;ongekhgoegjlejg4pigp3lty"),
                        Text(
                            "bggivernogv cnwlev ofjijfo3o oo3oj3pt  9pi30i33tp93pt0i4o3tu4toj4kjtoul3up93tup9p 96up4 4iu4p y5y9r6ypy4py6ojp95py9yp6 4poy34ojtletihldig;ejwlkhfleu;rkr;oejto34.tknwk,fyilewfjl;ewko;ewjvkrglikerjkgn5ekrbjbmf bdker,tjo34jrmlfemvk.jgo;eajgleajg;oaug;oajeglogh9gthgeknegliueg;ongekhgoegjlejg4pigp3lty"),
                        Text(
                            "bggivernogv cnwlev ofjijfo3o oo3oj3pt  9pi30i33tp93pt0i4o3tu4toj4kjtoul3up93tup9p 96up4 4iu4p y5y9r6ypy4py6ojp95py9yp6 4poy34ojtletihldig;ejwlkhfleu;rkr;oejto34.tknwk,fyilewfjl;ewko;ewjvkrglikerjkgn5ekrbjbmf bdker,tjo34jrmlfemvk.jgo;eajgleajg;oaug;oajeglogh9gthgeknegliueg;ongekhgoegjlejg4pigp3lty"),
                        Text(
                            "bggivernogv cnwlev ofjijfo3o oo3oj3pt  9pi30i33tp93pt0i4o3tu4toj4kjtoul3up93tup9p 96up4 4iu4p y5y9r6ypy4py6ojp95py9yp6 4poy34ojtletihldig;ejwlkhfleu;rkr;oejto34.tknwk,fyilewfjl;ewko;ewjvkrglikerjkgn5ekrbjbmf bdker,tjo34jrmlfemvk.jgo;eajgleajg;oaug;oajeglogh9gthgeknegliueg;ongekhgoegjlejg4pigp3lty"),
                        Text(
                            "bggivernogv cnwlev ofjijfo3o oo3oj3pt  9pi30i33tp93pt0i4o3tu4toj4kjtoul3up93tup9p 96up4 4iu4p y5y9r6ypy4py6ojp95py9yp6 4poy34ojtletihldig;ejwlkhfleu;rkr;oejto34.tknwk,fyilewfjl;ewko;ewjvkrglikerjkgn5ekrbjbmf bdker,tjo34jrmlfemvk.jgo;eajgleajg;oaug;oajeglogh9gthgeknegliueg;ongekhgoegjlejg4pigp3lty"),
                      ])))
            ]))));
  }
}
