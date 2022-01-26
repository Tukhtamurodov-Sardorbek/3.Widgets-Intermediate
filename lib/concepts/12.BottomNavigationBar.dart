import 'package:flutter/material.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class BottomNavigationBars extends StatefulWidget {
  const BottomNavigationBars({Key? key}) : super(key: key);
  static const String id = 'bottom_navigation_bar';

  @override
  _BottomNavigationBarsState createState() => _BottomNavigationBarsState();
}

class _BottomNavigationBarsState extends State<BottomNavigationBars> {
  PageController _controller = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: (){Navigator.pop(context);},
          ),
          title: const Text('Bottom Navigation Bar', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.code, color: Colors.black),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/12.BottomNavigationBar.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=29px&ph=24px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250A%250Aclass%2520BottomNavigationBars%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520BottomNavigationBars%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27bottom_navigation_bar%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_BottomNavigationBarsState%2520createState%28%29%2520%253D%253E%2520_BottomNavigationBarsState%28%29%253B%250A%257D%250A%250Aclass%2520_BottomNavigationBarsState%2520extends%2520State%253CBottomNavigationBars%253E%2520%257B%250A%2520%2520PageController%2520_controller%2520%253D%2520PageController%28%29%253B%250A%2520%2520int%2520_currentPageIndex%2520%253D%25200%253B%250A%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.arrow_back%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27Bottom%2520Navigation%2520Bar%27%252C%2520style%253A%2520TextStyle%28color%253A%2520Colors.black%252C%2520fontSize%253A%252030%252C%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520fontWeight%253A%2520FontWeight.bold%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.code%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.push%28context%252C%2520MaterialPageRoute%28builder%253A%2520%28BuildContext%2520context%29%2520%253D%253E%2520const%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520SourceCode%28carbon%253A%2520%27assets%252Fcarbon%252F11.BottomNavigationBar.png%27%252C%2520url%253A%2520%27%27%29%29%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520body%253A%2520PageView%28%250A%2520%2520%2520%2520%2520%2520%2520%2520controller%253A%2520_controller%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520children%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Container%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520color%253A%2520Colors.purpleAccent%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Center%28child%253A%2520Text%28%27Home%2520Page%27%252C%2520style%253A%2520TextStyle%28fontSize%253A%252025%2520%252CfontWeight%253A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520FontWeight.bold%29%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Container%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520color%253A%2520Colors.indigoAccent%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Center%28child%253A%2520Text%28%27School%2520Page%27%252C%2520style%253A%2520TextStyle%28fontSize%253A%252025%2520%252CfontWeight%253A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520FontWeight.bold%29%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Container%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520color%253A%2520Colors.cyanAccent%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Center%28child%253A%2520Text%28%27Work%2520Page%27%252C%2520style%253A%2520TextStyle%28fontSize%253A%252025%2520%252Cf')));},
            )
          ],
        ),
      body: PageView(
        controller: _controller,
        children: [
          Container(
            color: Colors.purpleAccent,
            child: Center(child: Text('Home Page', style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold))),
          ),
          Container(
            color: Colors.indigoAccent,
            child: Center(child: Text('School Page', style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold))),
          ),
          Container(
            color: Colors.cyanAccent,
            child: Center(child: Text('Work Page', style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold))),
          ),
          Container(
            color: Colors.greenAccent,
            child: Center(child: Text('Business Page', style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold))),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // To add more than three items
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Work'),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
          ],
        currentIndex: _currentPageIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index){
            setState(() {
              _currentPageIndex = index;
              _controller.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
            });
        },
      )
    );
  }
}
