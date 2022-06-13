import 'package:flutter/material.dart';
import '../Models/botoes.dart';
import 'package:video_player/video_player.dart';

class SobreNos extends StatefulWidget {
  const SobreNos({Key? key}) : super(key: key);

  @override
  State<SobreNos> createState() => _SobreNosState();
}

class _SobreNosState extends State<SobreNos> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
        title: Image.asset("assets/DNA-logo-oficial.png"),
        backgroundColor: Colors.white);
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            height: size.height + kBottomNavigationBarHeight + 8,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/FundoSobre.png"))),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top + 16,
                          left: 16,
                          right: 16),
                      child: Image.asset("assets/logo dna@4x.png",
                          width: 122, height: 75)),
                  Container(
                    padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: Column(children: [
                      //NossaHistoria(),

                      //SEGUNDO CONTAINER COMEÇA AQUI

                      Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Container(
                              width: double.maxFinite * 0.9,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Color(0xfff7931e),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff000000).withOpacity(0.25),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: Offset(4, 2))
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 16),
                                      child: Text("Fale Conosco:",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500))),
                                  Botoes(),
                                ],
                              )))
                    ]),
                  )
                ])));
  }
}

class NossaHistoria extends StatefulWidget {
  const NossaHistoria({Key? key}) : super(key: key);

  @override
  State<NossaHistoria> createState() => _NossaHistoriaState();
}

class _NossaHistoriaState extends State<NossaHistoria> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/osplanosdedeus.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        width: double.maxFinite,
        height: 300,
        decoration: BoxDecoration(
            color: Color(0xfff7931e),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff000000).withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(4, 2))
            ]),
        child: LayoutBuilder(builder: (context, constraint) {
          var largura = constraint.maxWidth;

          return Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 8),
              child: Text(
                "Conheça Nossa História",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins"),
              ),
            ),
            Container(
                width: largura,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  GestureDetector(
                      child: FutureBuilder(
                        future: _initializeVideoPlayerFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(
                                _controller,
                              ),
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),
                      onTap: () {
                        setState(() {
                          if (_controller.value.isPlaying) {
                            _controller.pause();
                          } else {
                            _controller.play();
                          }
                        });
                      }),
                  VideoProgressIndicator(
                    _controller,
                    allowScrubbing: true,
                    colors: VideoProgressColors(
                        backgroundColor: Colors.black,
                        bufferedColor: Colors.black,
                        playedColor: Colors.red),
                  ),
                ]))
          ]);
        }));
  }
}
