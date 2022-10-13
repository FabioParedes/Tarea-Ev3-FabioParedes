import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarea_ev3_fabioparedes/colors/colores.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:alert_dialog/alert_dialog.dart';

class Contenedores extends StatefulWidget {
  const Contenedores({Key? key}) : super(key: key);
  @override
  State<Contenedores> createState() => _ContenedoresState();
}

class _ContenedoresState extends State<Contenedores> {
  int menu_activo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: cardBar(),
      body: ListView(
        children: <Widget>[
          miCard1(),
          miCard2(),
          miCard3(),
          miCard4(),
          miCard5(),
        ],
      ),
      bottomNavigationBar: Footer(),
    );
  }

  cardBar() {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20.0),
        ),
      ),
      backgroundColor: color4,
      elevation: 10,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Tarea Ev-3",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Icon(FeatherIcons.heart)
        ]),
      ),
    );
  }

  Widget miCard1() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(bottom: 20, left: 15, right: 15, top: 5),
        elevation: 10,
        child: Column(
          children: [
            ListTile(
              title: Text("Categoria"),
              subtitle: Text("Aves"),
              trailing: Icon(Icons.favorite_outline),
            ),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://static.nationalgeographic.es/files/styles/image_3200/public/flamingos-celestun-mexico.jpg?w=1900&h=1267"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content:
                              Text('Hermoso flamencos disfrutando del agua'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    )
                  ],
                )),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://cloudfront-us-east-1.images.arcpublishing.com/culturacolectiva/Y5KAB3TEMNBQVA2XWGFOUTGPPA.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('Hermosa familia reunida'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    ),
                  ],
                )),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://static.nationalgeographicla.com/files/styles/image_3200/public/20-birds-NationalGeographic_2626690.jpg?w=1900&h=1267"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('El rey de los cielos'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    )
                  ],
                )),
          ],
        ));
  }

  Widget miCard2() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(bottom: 20, left: 15, right: 15, top: 5),
        elevation: 10,
        child: Column(
          children: [
            ListTile(
              title: Text("Categoria"),
              subtitle: Text("Felinos"),
              trailing: Icon(Icons.favorite_outline),
            ),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://dcom-prod.imgix.net/files/2020-07/PORTADA_Articulo_Leones%20b.jpg?w=1920&h=1440&crop=faces&fit=crop&auto=compress&q=75"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('El majestuoso rey e la selva'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    )
                  ],
                )),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://www.nationalgeographic.com.es/medio/2021/02/24/el-mes-de-los-felinos-regresa-a-national-geographic-wild_73d86466_1280x720.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('No te muevas'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    ),
                  ],
                )),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://www.nationalgeographic.com.es/medio/2017/03/15/ani019-00531-hr_c1010ad8.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('Te mata de ternura'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    )
                  ],
                )),
          ],
        ));
  }

  Widget miCard3() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(bottom: 20, left: 15, right: 15, top: 5),
        elevation: 10,
        child: Column(
          children: [
            ListTile(
              title: Text("Categoria"),
              subtitle: Text("peces"),
              trailing: Icon(Icons.favorite_outline),
            ),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://www.inicioo.com/selec/wall/National_Geographic/NG/National%20Geographic%20Wallpapers%20012.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('Pez payaso buscando algo'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    )
                  ],
                )),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://w0.peakpx.com/wallpaper/956/944/HD-wallpaper-reef-fish-coral-reef-striped-fish-ocean.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('Cardumen de peces hermosos'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    ),
                  ],
                )),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://static.nationalgeographicla.com/files/styles/image_3200/public/thumbnail-aclean.jpg?w=1600&h=900"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content:
                              Text('Caballito de mar en todo su esplendor'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    )
                  ],
                )),
          ],
        ));
  }

  Widget miCard4() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(bottom: 20, left: 15, right: 15, top: 5),
        elevation: 10,
        child: Column(
          children: [
            ListTile(
              title: Text("Categoria"),
              subtitle: Text("caninos"),
              trailing: Icon(Icons.favorite_outline),
            ),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://i.pinimg.com/736x/70/0c/61/700c61640a78ad97f5071c9b918fde7d--wolf-photos-wolf-pictures.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('Un lobo muy feliz'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    )
                  ],
                )),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://okdiario.com/img/2017/08/16/hienas1-e1502906963210.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('Amor de perros salvajes'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    ),
                  ],
                )),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://www.dondevive.org/wp-content/uploads/2016/02/donde-vive-el-zorro.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('Zorrito jugando en las nieves'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    )
                  ],
                )),
          ],
        ));
  }

  Widget miCard5() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(bottom: 20, left: 15, right: 15, top: 5),
        elevation: 10,
        child: Column(
          children: [
            ListTile(
              title: Text("Categoria"),
              subtitle: Text("Reptiles"),
              trailing: Icon(Icons.favorite_outline),
            ),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://www.nationalgeographic.com.es/medio/2022/04/26/camaleon_4fcd8b91_800x800.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('Camaleon de muchos colores'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    )
                  ],
                )),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://www.ngenespanol.com/wp-content/uploads/2022/06/GettyImages-150816040.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('Una vida muy larga para una tortuga'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    ),
                  ],
                )),
            Container(
              height: 200,
              width: 300,
              child: Ink.image(
                image: NetworkImage(
                    "https://dam.ngenespanol.com/wp-content/uploads/2021/06/GettyImages-922865550.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(01.0),
              alignment: Alignment.centerLeft,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        return alert(
                          context,
                          title: Text('Descripción'),
                          content: Text('Los colores mas venenosos del mundo'),
                          textOK: Text('Aceptar'),
                        );
                      },
                    )
                  ],
                )),
          ],
        ));
  }

  Widget Footer() {
    List items = [
      FeatherIcons.home,
      FeatherIcons.search,
      FeatherIcons.heart,
      FeatherIcons.user
    ];

    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: color4,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(color: color3, spreadRadius: 3),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(4, (index) {
              return IconButton(
                  onPressed: () {
                    setState(() {
                      menu_activo = index;
                    });
                  },
                  icon: Icon(
                    items[index],
                    color: menu_activo == index ? Colors.white : blanco,
                  ));
            })),
      ),
    );
  }
}
