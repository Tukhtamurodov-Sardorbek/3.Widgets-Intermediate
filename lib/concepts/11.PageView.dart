import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class PageViews2 extends StatefulWidget {
  const PageViews2({Key? key}) : super(key: key);
  static const String id = 'page_view(2)';

  @override
  _PageViews2State createState() => _PageViews2State();
}

class _PageViews2State extends State<PageViews2> {
  final PageController _controller = PageController(initialPage: 0);
  Map<String, String> pages = {
    'First Item' : 'assets/images/img.png',
    'Second Item' : 'assets/images/img_1.png',
    'Third Item' : 'assets/images/img_2.png',
    'Fourth Item' : 'assets/images/img_3.png',
    'Fifth Item' : 'assets/images/img_4.png',
    'Sixth Item' : 'assets/images/img_5.png',
  };

  void _slide() {
    Timer.periodic(Duration(seconds: 4), (timer) {
     if ( _controller.page == pages.length-1){
       _controller.jumpToPage(0);
       // _controller.animateToPage(_controller.initialPage, duration:Duration(milliseconds: 100), curve: Curves.easeIn);
     } else{
       _controller.nextPage(
           duration: const Duration(seconds: 2), curve: Curves.easeIn);
     }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _slide();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('PAGE VIEW', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.code),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/11.PageView.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=63px&ph=4px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27dart%253Aasync%27%253B%250A%250Aimport%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250A%250Aclass%2520PageViews2%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520PageViews2%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27page_view%282%29%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_PageViews2State%2520createState%28%29%2520%253D%253E%2520_PageViews2State%28%29%253B%250A%257D%250A%250Aclass%2520_PageViews2State%2520extends%2520State%253CPageViews2%253E%2520%257B%250A%2520%2520final%2520PageController%2520_controller%2520%253D%2520PageController%28initialPage%253A%25200%29%253B%250A%2520%2520Map%253CString%252C%2520String%253E%2520pages%2520%253D%2520%257B%250A%2520%2520%2520%2520%27First%2520Item%27%2520%253A%2520%27assets%252Fimages%252Fimg.png%27%252C%250A%2520%2520%2520%2520%27Second%2520Item%27%2520%253A%2520%27assets%252Fimages%252Fimg_1.png%27%252C%250A%2520%2520%2520%2520%27Third%2520Item%27%2520%253A%2520%27assets%252Fimages%252Fimg_2.png%27%252C%250A%2520%2520%2520%2520%27Fourth%2520Item%27%2520%253A%2520%27assets%252Fimages%252Fimg_3.png%27%252C%250A%2520%2520%2520%2520%27Fifth%2520Item%27%2520%253A%2520%27assets%252Fimages%252Fimg_4.png%27%252C%250A%2520%2520%2520%2520%27Sixth%2520Item%27%2520%253A%2520%27assets%252Fimages%252Fimg_5.png%27%252C%250A%2520%2520%257D%253B%250A%250A%2520%2520void%2520_slide%28%29%2520%257B%250A%2520%2520%2520%2520Timer.periodic%28Duration%28seconds%253A%25204%29%252C%2520%28timer%29%2520%257B%250A%2520%2520%2520%2520%2520if%2520%28%2520_controller.page%2520%253D%253D%2520pages.length-1%29%257B%250A%2520%2520%2520%2520%2520%2520%2520_controller.jumpToPage%280%29%253B%250A%252F%252F%2520_controller.animateToPage%28_controller.initialPage%252C%2520duration%253ADuration%28milliseconds%253A%2520100%29%252C%2520curve%253A%2520Curves.easeIn%29%253B%250A%2520%2520%2520%2520%2520%257D%2520else%257B%250A%2520%2520%2520%2520%2520%2520%2520_controller.nextPage%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520duration%253A%2520const%2520Duration%28seconds%253A%25202%29%252C%2520curve%253A%2520Curves.easeIn%29%253B%250A%2520%2520%2520%2520%2520%257D%250A%2520%2520%2520%2520%257D%29%253B%250A%2520%2520%257D%250A%250A%2520%2520%2540override%250A%2520%2520void%2520initState%28%29%2520%257B%250A%2520%2520%2520%2520%252F%252F%2520TODO%253A%2520implement%2520initState%250A%2520%2520%2520%2520super.initState%28%29%253B%250A%2520%2520%2520%2520_slide%28%29%253B%250A%2520%2520%257D%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520extendBodyBehindAppBar%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.transparent%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.arrow_back%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27PAGE%2520VIEW%27%252C%2520style%253A%2520TextStyle%28color%253A%2520Colors.black%252C%2520fontSize%253A%252030%252C%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520fontWeight%253A%2520FontWeight.bold%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.code%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.push%28context%252C%2520MaterialPageRoute%28builder%253A%2520%28BuildContext%2520context%29%2520%253D%253E%2520')));},
          )
        ],
      ),

      body: SizedBox(
        height: 270,
        child: PageView.builder(
          controller: _controller,
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(pages.values.toList()[index]),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.1)
                          ])),
                ));
          },
        ),
      ),
    );
  }
}
