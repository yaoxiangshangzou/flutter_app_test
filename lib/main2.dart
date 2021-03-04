import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
//        child: Image.network("http://www.ionic.wang/statics/index/images/ionic4.png"),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.blue,

           /* borderRadius: BorderRadius.all(
              Radius.circular(150),
            )*/
           borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage("http://www.ionic.wang/statics/index/images/ionic4.png"),
                fit: BoxFit.cover
          )
        ),
        
      ),
    );
  }
}

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    final wordPair=new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggertion = <WordPair>[];
  final _save = new Set<WordPair>();
  final TextStyle _biggerFont = new TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('hhhhhh'),
      ),
      body: _buildSuggestion(),
    );
  }

  Widget _buildSuggestion() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        final index = i ~/ 2;
        if (index >= _suggertion.length) {
          _suggertion.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggertion[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _save.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: (){
        setState(() {
          if (alreadySaved) {
            _save.remove(pair);

          }else{
            _save.add(pair);
          }
        });
      },
    );
  }
}
*/
