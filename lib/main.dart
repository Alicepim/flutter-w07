import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Miss Piyathida Wongcharoen',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '6414421027',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          child: Text(
            'Next',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );

    Widget textSection = Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        'ฉันเป็นคนเก่งคนดีคนงาม มีความสารถมากมาย'
        'มีความสัมพันธ์กับคนอื่นที่ดี และเพื่อนๆที่ดี '
        'มีแฟนที่น่ารักและความสัมพันธ์ที่ดี และรักกันอย่างมั่นคง '
        'เป็นคนที่เก่ง ในหลายๆด้าน กีฬา,เรียน,ความมั่นคง,สุขภาพ '
        'ขอบคุณ   ขอบคุณ   ขอบคุณ ',
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Work_w_07'),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://scontent.fbkk21-1.fna.fbcdn.net/v/t39.30808-6/274167827_5001551396571575_6815714944610488961_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=49d041&_nc_eui2=AeGFwuCJayr2dot4hkrt3n02cWKEWf8Mx4pxYoRZ_wzHismg7UDh9OmXuUJOdd-L67W6tW7_beyUj_y_KJRxiRPT&_nc_ohc=gowfy8ZK18IAX9SjmhW&_nc_ht=scontent.fbkk21-1.fna&oh=00_AfC0OqWIr2UlzY5D_xrzSYDS70Xp7ovqGPD_U1PWIWs8Vw&oe=64FFE7B8',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              ('https://scontent.fbkk21-1.fna.fbcdn.net/v/t1.6435-9/70398073_462275404378663_8235690435364782080_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=ad2b24&_nc_eui2=AeH9jv7pEwwPxaiaEzhtucBVQLlUr18KIepAuVSvXwoh6krqVUvuOfbqw5MjqbMNTytrSll1DKqVz6JLSclx9Vhy&_nc_ohc=3JvRA4RoyKQAX92Sx-R&_nc_ht=scontent.fbkk21-1.fna&oh=00_AfD6C8pnM353q_WZxN_JVr9iW_ns89TQUdf02myi8b7v0Q&oe=65221D1A'),
              width: 400,
              height: 400,
            ),
            const Text(
              'นางสาวปิยธิดา วงษ์เจริญ',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GridListScreen()),
                );
              },
              child: const Text('Open Grid List'),
            ),
          ],
        ),
      ),
    );
  }
}

class GridListScreen extends StatelessWidget {
  const GridListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Container(
            margin: const EdgeInsets.all(10),
            color: Colors.blueGrey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://th.bing.com/th/id/R.3e090a0f10ab57f3ed69a5d8c23c12cc?rik=rkGGtOIDPR6xRg&riu=http%3a%2f%2f2.bp.blogspot.com%2f-PovVSr5xUZ4%2fTc-VAkuXO2I%2fAAAAAAAAAAM%2fsQfnOme4Vv4%2fs320%2fcat.jpg&ehk=X3zSBtsyXysAAy3eXmlgdKUSCLKaAXw4ITwtxSp7Tv8%3d&risl=&pid=ImgRaw&r=0${index + 1}.jpg',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Cute ${index + 1}',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}
