import 'package:flutter/material.dart';
import 'package:we_slide/we_slide.dart';
import 'miniplayer.dart';
import 'bottom_bar.dart';
import 'player.dart';
import 'home.dart';

class MusicApp extends StatefulWidget {
  MusicApp({Key key}) : super(key: key);

  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  @override
  Widget build(BuildContext context) {
    final WeSlideController _controller = WeSlideController();
    final double _panelMinSize = 127.0;
    final double _panelMaxSize = MediaQuery.of(context).size.height;

    return Scaffold(
      body: WeSlide(
        controller: _controller,
        panelMinSize: _panelMinSize,
        panelMaxSize: _panelMaxSize,
        overlayOpacity: 0.9,
        //blur: true,
        //blurSigma: 0.9,
        parallax: true,
        body: Home(),
        panelHeader: MiniPlayer(onTap: _controller.show),
        panel: Player(onTap: _controller.hide),
        footer: BottomBar(),
      ),

      // body: Home(),
      // bottomNavigationBar: Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     MiniPlayer(),
      //     Divider(color: colorTheme.background, height: 1),
      //     BottomBar(),
      //   ],
      // ),
    );
  }
}
