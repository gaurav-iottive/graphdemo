import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

///  api key gmaps   AIzaSyCxuKivroM4yd5cURL7a8jjVWFxZXJOA-8
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomCircleProgressBar(),
    );
  }
}

/// step counter graph
class CustomCircleProgressBar extends StatelessWidget {
  const CustomCircleProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: 120,
        child: SfRadialGauge(
          axes: <RadialAxis>[
            RadialAxis(
              showTicks: false,
              showLabels: false,
              startAngle: 0,
              endAngle: 360,
              axisLineStyle: const AxisLineStyle(
                  thicknessUnit: GaugeSizeUnit.logicalPixel,
                  cornerStyle: CornerStyle.bothFlat,
                  thickness: 17,
                  dashArray: <double>[3.1, 4]),
            ),
            RadialAxis(
                showTicks: false,
                showLabels: false,
                startAngle: 60,
                endAngle: 360,
                annotations: const <GaugeAnnotation>[
                  GaugeAnnotation(
                      angle: 180,
                      positionFactor: 0.1,
                      horizontalAlignment: GaugeAlignment.center,
                      verticalAlignment: GaugeAlignment.center,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '540',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'Airbnb Cereal App',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Steps',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Airbnb Cereal App',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ))
                ],
                axisLineStyle: const AxisLineStyle(
                    cornerStyle: CornerStyle.bothFlat,
                    color: Color(0xff00B1E5),
                    thickness: 17,
                    dashArray: <double>[3.1, 4]))
          ],
        ),
      ),
    );
  }
}
