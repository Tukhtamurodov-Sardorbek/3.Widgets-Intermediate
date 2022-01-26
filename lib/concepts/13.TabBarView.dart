import 'package:flutter/material.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class TabBars extends StatefulWidget {
  const TabBars({Key? key}) : super(key: key);
  static const String id = 'tab_bar';

  @override
  _TabBarsState createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){Navigator.pop(context);},
          ),
          title: const Text('TAB BAR', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.code),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/13.TabBarView.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=29px&ph=24px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250A%250Aclass%2520TabBars%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520TabBars%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27tab_bar%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_TabBarsState%2520createState%28%29%2520%253D%253E%2520_TabBarsState%28%29%253B%250A%257D%250A%250Aclass%2520_TabBarsState%2520extends%2520State%253CTabBars%253E%2520%257B%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520DefaultTabController%28%250A%2520%2520%2520%2520%2520%2520length%253A%25204%252C%250A%2520%2520%2520%2520%2520%2520child%253A%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.arrow_back%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27TAB%2520BAR%27%252C%2520style%253A%2520TextStyle%28fontSize%253A%252030%252C%2520fontWeight%253A%2520FontWeight.bold%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.code%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.push%28context%252C%2520MaterialPageRoute%28builder%253A%2520%28BuildContext%2520context%29%2520%253D%253E%2520const%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520SourceCode%28carbon%253A%2520%27assets%252Fcarbon%252F12.TabBarView.png%27%252C%2520url%253A%2520%27%2520%27%29%29%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520bottom%253A%2520const%2520TabBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520tabs%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Tab%28icon%253A%2520Icon%28Icons.home%29%252C%2520text%253A%2520%27Home%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Tab%28icon%253A%2520Icon%28Icons.school%29%252C%2520text%253A%2520%27School%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Tab%28icon%253A%2520Icon%28Icons.work%29%252C%2520text%253A%2520%27Work%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Tab%28icon%253A%2520Icon%28Icons.business%29%252C%2520text%253A%2520%27Business%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520body%253A%2520TabBarView%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520children%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Container%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520color%253A%2520Colors.purpleAccent%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520const%2520Center%28child%253A%2520Text%28%27Home%2520Page%27%252C%2520style%253A%2520TextStyle%28fontSize%253A%252025%252C%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520fontWeight%253A%2520FontWeight.bold%29%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Container%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520color%253A%2520Colors.indigoAccent%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520const%2520Center%28child%253A%2520Text%28%27School%2520Page%27%252C%2520style%253A%2520TextStyle%28fontSize%253A%252025%252C%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520fontWeight%253A%2520FontWeight.bold%29%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Container%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520color%253A%2520Colors')));},
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.school), text: 'School'),
              Tab(icon: Icon(Icons.work), text: 'Work'),
              Tab(icon: Icon(Icons.business), text: 'Business'),
            ],
          ),
        ),
        body: TabBarView(
            children: [
              Container(
                color: Colors.purpleAccent,
                child: const Center(child: Text('Home Page', style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold))),
              ),
              Container(
                color: Colors.indigoAccent,
                child: const Center(child: Text('School Page', style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold))),
              ),
              Container(
                color: Colors.cyanAccent,
                child: const Center(child: Text('Work Page', style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold))),
              ),
              Container(
                color: Colors.greenAccent,
                child: const Center(child: Text('Business Page', style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold))),
              ),
            ]
        ),
      ),
    );
  }
}
