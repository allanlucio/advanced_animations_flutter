import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;

  const HomeTop({Key key, @required this.containerGrow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenZize = MediaQuery.of(context).size;
    return Container(
      height: screenZize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Bem Vindo, Allan",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w300),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 120,
              height: containerGrow.value * 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("images/perfil.jpg"), fit: BoxFit.cover),
              ),
              child: Container(
                width: containerGrow.value * 35,
                height: containerGrow.value * 35,
                margin: EdgeInsets.only(left: 80),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: containerGrow.value * 17,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(80, 210, 194, 1.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
