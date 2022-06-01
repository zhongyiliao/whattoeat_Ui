import 'package:flutter/material.dart';

class Initial_page extends StatefulWidget {
  const Initial_page({Key key}) : super(key: key);

  @override
  State<Initial_page> createState() => _Initial_pageState();
}

class _Initial_pageState extends State<Initial_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Title'),
      // ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/9ec0/e89e/cec3d4f3c2302cbd722846c425cb2725?Expires=1649635200&Signature=B7GzUJ5-h~CV5fZpw9T0L~jtLy-OyMcV98AJC6kjTAXUwuOboVDrAHrDzWOFu45teGrw96d5YU2LWZe5lZwCgz7SKmY~fsqcv3ASNYVx6Nnx2~b1cHap5IFRBBfG~zTyfYNFnwk-tJKxdhYzlCim9uNyFpxORaWdclP-12Nxche0SJ1r5YFyffaSsgtNVl9fgHyuJgNcE13~Nhht04EjuMbutI61ayom3sE7vTWhXVQRMEq33IL~b9B0JLw8dAKG~~adjLPonMg2UFqzBfai4-Rb7SOoMW8RCjtY5pAPH0TEOeuUBZWHBzORBilr5PJt7Cets0Ep-YlyScI9zIFUiA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
              bottom: 50,
              right: 0.0,
              left: 0.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's change" + '\n' + 'your Vibe.',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Change your work environment or boring vibe.',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      width: MediaQuery.of(context).size.width * 1,
                      height: 45,
                      child: RaisedButton(
                        color: Colors.white,
                        child: Text(
                          'Get start',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
