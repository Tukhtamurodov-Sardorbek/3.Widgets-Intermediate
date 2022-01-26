import 'package:flutter/material.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class ListViews extends StatefulWidget {
  const ListViews({Key? key}) : super(key: key);
  static const String id = 'listviews';

  @override
  _ListViewsState createState() => _ListViewsState();
}

class _ListViewsState extends State<ListViews> {
  Map<String, String> data = {
    'First Item':'assets/images/img.png',
    'Second Item':'assets/images/img_1.png',
    'Third Item':'assets/images/img_2.png',
    'Fourth Item':'assets/images/img_3.png',
    'Fifth Item':'assets/images/img_4.png',
    'Sixth Item':'assets/images/img_5.png',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){Navigator.pop(context);},
        ),
        title: const Text('ListViews', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.code, color: Colors.black),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/7.ListViews.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=56px&ph=56px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250A%250Aclass%2520ListViews%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520ListViews%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27listviews%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_ListViewsState%2520createState%28%29%2520%253D%253E%2520_ListViewsState%28%29%253B%250A%257D%250A%250Aclass%2520_ListViewsState%2520extends%2520State%253CListViews%253E%2520%257B%250A%2520%2520Map%253CString%252C%2520String%253E%2520data%2520%253D%2520%257B%250A%2520%2520%2520%2520%27First%2520Item%27%253A%27assets%252Fimages%252Fimg.png%27%252C%250A%2520%2520%2520%2520%27Second%2520Item%27%253A%27assets%252Fimages%252Fimg_1.png%27%252C%250A%2520%2520%2520%2520%27Third%2520Item%27%253A%27assets%252Fimages%252Fimg_2.png%27%252C%250A%2520%2520%2520%2520%27Fourth%2520Item%27%253A%27assets%252Fimages%252Fimg_3.png%27%252C%250A%2520%2520%2520%2520%27Fifth%2520Item%27%253A%27assets%252Fimages%252Fimg_4.png%27%252C%250A%2520%2520%2520%2520%27Sixth%2520Item%27%253A%27assets%252Fimages%252Fimg_5.png%27%252C%250A%2520%2520%257D%253B%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.arrow_back%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27ListViews%27%252C%2520style%253A%2520TextStyle%28color%253A%2520Colors.black%252C%2520fontSize%253A%252030%252C%2520%250A%2520%2520%2520%2520%2520%2520%2520%2520fontWeight%253A%2520FontWeight.bold%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.code%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.push%28context%252C%2520MaterialPageRoute%28builder%253A%2520%28BuildContext%2520context%29%2520%253D%253E%2520%2509%2509%2509%2520%2520%2520const%2520SourceCode%28carbon%253A%2520%27assets%252Fcarbon%252F6.ListViews.png%27%252C%2520url%253A%2520%27%2520%27%29%29%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520body%253A%2520ListView%28%250A%2520%2520%2520%2520%2520%2520%2520%2520children%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520SizedBox%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520height%253A%2520200%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520ListView.builder%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520scrollDirection%253A%2520Axis.horizontal%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520itemCount%253A%2520data.length%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520itemBuilder%253A%2520%28context%252C%2520index%29%257B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520return%2520_horizontalListItems%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520data.keys.toList%28%29%255Bindex%255D%252C%2520image%253A%2520%2520data.values.toList%28%29%255Bindex%255D%29%253B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520const%2520SizedBox%28height%253A%252010%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520ListView.builder%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520shrinkWrap%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520physics%253A%2520const%2520NeverScrollabl')));},
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index){
                return _horizontalListItems(title: data.keys.toList()[index], image:  data.values.toList()[index]);
              },
            ),
          ),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: data.length,
            itemBuilder: (context, index){
              return _verticalListItems(title: data.keys.toList()[index], image:  data.values.toList()[index]);
            },
          ),
        ],
      ),
    );
  }

  Widget _horizontalListItems({required String title, required String image}){
    return Container(
      height: 80,
      width: 150,
      color: Colors.cyanAccent,
      margin: const EdgeInsets.all(5),
      // padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(image), fit: BoxFit.cover),
          const SizedBox(height: 10),
          Text(title),
        ],
      ),
    );
  }
  Widget _verticalListItems({required String title, required String image}){
    return Container(
      color: Colors.cyanAccent,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(image), fit: BoxFit.cover),
          const SizedBox(height: 10),
          Text(title),
        ],
      ),
    );
  }
}
