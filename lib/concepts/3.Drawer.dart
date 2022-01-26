import 'package:flutter/material.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class Drawer2 extends StatefulWidget {
  const Drawer2({Key? key}) : super(key: key);
  static const String id = 'darwer2';

  @override
  _Drawer2State createState() => _Drawer2State();
}

class _Drawer2State extends State<Drawer2> {
  final List<String> _images = [
    'assets/images/product1.png',
    'assets/images/product2.png',
    'assets/images/product3.png',
    'assets/images/product4.png',
    'assets/images/product5.png',
    'assets/images/product6.png',
  ];

  final Map<String,String> _categories = {
    'assets/images/category1.png' : 'Home Appliances',
    'assets/images/category2.png' : 'Office equipment',
    'assets/images/category3.png' : 'Kitchen appliances',
    'assets/images/category4.png' : 'Houseware',
    'assets/images/category5.png' : 'Auto products',
    'assets/images/category6.png' : 'Televisions and telecards',
    'assets/images/category7.png' : 'Phones and gadgets',
    'assets/images/category8.png' : 'Computer technology',
    'assets/images/category9.png' : 'Products for children',
    'assets/images/category10.png' : 'Gaming consoles'};


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.white,
      drawerEdgeDragWidth: MediaQuery.of(context).size.width * 0.45,

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){Navigator.pop(context);},
        ),
        title: const Text('Drawer', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.code, color: Colors.black),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/3.Drawer.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=29px&ph=24px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250Aimport%2520%27package%253Awidgets_intermediate%252Fsource_code%252FsourceCode.dart%27%253B%250A%250Aclass%2520Drawer2%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520Drawer2%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27darwer2%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_Drawer2State%2520createState%28%29%2520%253D%253E%2520_Drawer2State%28%29%253B%250A%257D%250A%250Aclass%2520_Drawer2State%2520extends%2520State%253CDrawer2%253E%2520%257B%250A%2520%2520final%2520List%253CString%253E%2520_images%2520%253D%2520%255B%250A%2520%2520%2520%2520%27assets%252Fimages%252Fproduct1.png%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fproduct2.png%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fproduct3.png%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fproduct4.png%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fproduct5.png%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fproduct6.png%27%252C%250A%2520%2520%255D%253B%250A%250A%2520%2520final%2520Map%253CString%252CString%253E%2520_categories%2520%253D%2520%257B%250A%2520%2520%2520%2520%27assets%252Fimages%252Fcategory1.png%27%2520%253A%2520%27Home%2520Appliances%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fcategory2.png%27%2520%253A%2520%27Office%2520equipment%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fcategory3.png%27%2520%253A%2520%27Kitchen%2520appliances%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fcategory4.png%27%2520%253A%2520%27Houseware%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fcategory5.png%27%2520%253A%2520%27Auto%2520products%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fcategory6.png%27%2520%253A%2520%27Televisions%2520and%2520telecards%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fcategory7.png%27%2520%253A%2520%27Phones%2520and%2520gadgets%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fcategory8.png%27%2520%253A%2520%27Computer%2520technology%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fcategory9.png%27%2520%253A%2520%27Products%2520for%2520children%27%252C%250A%2520%2520%2520%2520%27assets%252Fimages%252Fcategory10.png%27%2520%253A%2520%27Gaming%2520consoles%27%257D%253B%250A%250A%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520drawerScrimColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520drawerEdgeDragWidth%253A%2520MediaQuery.of%28context%29.size.width%2520*%25200.45%252C%250A%250A%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520Icon%28Icons.arrow_back%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27Drawer%27%252C%2520style%253A%2520TextStyle%28color%253A%2520Colors.black%252C%2520fontSize%253A%252030%252C%2520%250A%2520%2520%2520%2520%2520%2520%2520%2520fontWeight%253A%2520FontWeight.bold%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520icon%253A%2520const%2520Icon%28Icons.code%252C%2520color%253A%2520Colors.black%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.push%28context%252C%2520MaterialPageRoute%28builder%253A%2520%28BuildContext%2520context%29%2520%253D%253E%2520const%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520SourceCode%28carbon%253A%2520%27asse')));},
          )
        ],
      ),
      body: const Center(
        child: Text('Drag'),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 400,
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          padding: const EdgeInsets.only(top: 15, bottom: 5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                image: AssetImage('assets/profile_pictures/boys/boy7.jpg'),
                                fit: BoxFit.fill
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 8,
                                blurRadius: 7,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            border: Border.all(
                              color: Colors.white,
                              width: 4,
                            ),
                          ),
                        ),
                        const Text('Baby Boss', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, letterSpacing: 1.4),),
                        const Text('122 333-4444-55555'),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              child: MaterialButton(
                                padding: const EdgeInsets.only(top: 5),
                                minWidth: 20,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.list_alt, size: 35),
                                    SizedBox(height: 3),
                                    Text('  Orders  ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    SizedBox(height: 2),
                                  ],
                                ),
                                onPressed: (){},
                              ),
                            ),
                            Card(
                              child: MaterialButton(
                                padding: const EdgeInsets.only(top: 5),
                                minWidth: 20,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.monetization_on_sharp, color: Colors.amber, size: 35),
                                    SizedBox(height: 3),
                                    Text('Coupons', style: TextStyle(fontWeight: FontWeight.bold),),
                                    SizedBox(height: 2),
                                  ],
                                ),
                                onPressed: (){},
                              ),
                            ),
                            Card(
                              child: MaterialButton(
                                padding: const EdgeInsets.only(top: 5),
                                minWidth: 20,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.account_balance_wallet_outlined, size: 35),
                                    SizedBox(height: 3),
                                    Text('   Wallet   ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    SizedBox(height: 2),
                                  ],
                                ),
                                onPressed: (){},
                              ),
                            ),
                            Card(
                              child: MaterialButton(
                                padding: const EdgeInsets.only(top: 5),
                                minWidth: 20,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.credit_card_outlined, size: 35),
                                    SizedBox(height: 3),
                                    Text('    Card    ', style: TextStyle(fontWeight: FontWeight.bold),),
                                    SizedBox(height: 2),
                                  ],
                                ),
                                onPressed: (){},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _images.length,
                          itemBuilder: (context, index){
                            return _savedProducts(_images[index]);
                          }
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    return _categoriesOfProduct(_categories.values.toList()[index].toString(), _categories.keys.toList()[index].toString());
                  }),
            ],
          ),
        ),
      ),
    );
  }


  Widget _savedProducts(String media){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 20,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        margin: const EdgeInsets.only(right: 5, left: 10),
        width: MediaQuery.of(context).size.width*0.5-20,
        child: Stack(
          children: [
            Center(child: Image(image: AssetImage(media), fit: BoxFit.contain,)),
            Container(
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: const Icon(Icons.favorite, color: Colors.red),
                  onPressed: (){}
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoriesOfProduct(String catalogName, String iconP){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 10,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Container(height: 55, width: 55, padding: const EdgeInsets.only(top: 3, bottom: 3), child: Image(image: AssetImage(iconP),)),
              Expanded(child: Center(child: Text(catalogName))),
            ]
        ),
        onPressed: (){},
      ),
    );
  }
}
