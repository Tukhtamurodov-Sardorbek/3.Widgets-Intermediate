import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

class SourceCode extends StatefulWidget {
  final String carbon, url;
  static const String id = 'source_code';
  const SourceCode({required this.carbon, required this.url});
  @override
  _SourceCodeState createState() => _SourceCodeState();
}

class _SourceCodeState extends State<SourceCode> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SOURCE CODE', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: const Icon(Icons.arrow_back), color: Colors.black, onPressed: (){Navigator.pop(context);},),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          height: 600,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 15),
          child: GestureDetector(
            child: PhotoView(
              imageProvider: AssetImage(widget.carbon),
              minScale: PhotoViewComputedScale.contained,
              enableRotation: false,
              maxScale: 4.0,
            ),
            onTap: (){ _launchURL(widget.url);},
          ),
        ),
      ),
    );
  }
}
