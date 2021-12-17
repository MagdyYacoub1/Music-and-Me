import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class ControlPanel extends StatefulWidget {
  const ControlPanel({Key? key, required this.paletteColors}) : super(key: key);

  final List<PaletteColor> paletteColors;

  @override
  _ControlPanelState createState() => _ControlPanelState();
}

class _ControlPanelState extends State<ControlPanel>
    with SingleTickerProviderStateMixin {


  late AnimationController controller;
  bool isPlaying = false;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this, duration: Duration(milliseconds: 300),);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.fast_rewind_rounded,
          size: 35.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: InkWell(
            onTap: () {
              setState(() {
                isPlaying = !isPlaying;
                isPlaying ? controller.forward() :
                controller.reverse();
              });
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.paletteColors[1].color,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  size: 40.0,
                  progress: controller,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Icon(
          Icons.fast_forward_rounded,
          size: 35.0,
        ),
      ],
    );
  }
}
