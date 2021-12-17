import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CoverAndProgress extends StatelessWidget {
  const CoverAndProgress({
    Key? key,
    required this.paletteColors,
    required this.cover,
  }) : super(key: key);

  final List<PaletteColor> paletteColors;
  final String cover;

  @override
  Widget build(BuildContext context) {
    double coverDiameter = 200;
    double progressBarWidth = 12;
    return SleekCircularSlider(
      appearance: CircularSliderAppearance(
        size: coverDiameter + 80,
        startAngle: 270,
        angleRange: 360,
        animationEnabled: true,
        infoProperties: InfoProperties(),
        customColors: CustomSliderColors(
          trackColor: Color(0xFFE3E3E3),
          dotColor: paletteColors[1].color,
          progressBarColor: paletteColors[0].color,
          shadowColor: paletteColors[0].color,
        ),
        customWidths: CustomSliderWidths(
          progressBarWidth: progressBarWidth,
          handlerSize: progressBarWidth,
        ),
      ),
      onChange: (double value) {
        print(value);
      },
      innerWidget: (value) {
        return Center(
          child: Stack(
            children: [
              PhysicalModel(
                color: Colors.black,
                elevation: 20.0,
                shape: BoxShape.circle,
                child: Container(
                  width: coverDiameter,
                  height: coverDiameter,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage(cover),
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: coverDiameter * 0.18,
                    height: coverDiameter * 0.18,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
