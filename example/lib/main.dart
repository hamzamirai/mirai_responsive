import 'package:flutter/material.dart';
import 'package:mirai_responsive/mirai_responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mirai Responsive Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mirai Responsive Demo',
          style: TextStyle(
            fontSize: MiraiSize.textSize20,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          MiraiSize().init(
            constraints: constraints,
          );

          return MiraiResponsive(
            key: ValueKey<String>('layout_${MiraiSize.responsiveEnum.toString()}'),
            mobile: const MobileLayout(),
            landscapeMobileLayout: const MobileLandscapeLayout(),
            tablet: const TabletLayout(),
            landscapeTabletLayout: const TabletLandscapeLayout(),
            desktop: const DesktopLayout(),
          );
        },
      ),
    );
  }
}

// Reusable grid component
class ResponsiveGrid extends StatelessWidget {
  const ResponsiveGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MiraiSize.gridCount,
        crossAxisSpacing: MiraiSize.space16,
        mainAxisSpacing: MiraiSize.space16,
      ),
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.2),
            borderRadius: BorderRadius.circular(MiraiSize.radius8),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: MiraiSize.radius4,
                offset: Offset(0, MiraiSize.space2),
              ),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.devices,
                  size: MiraiSize.iconSize32,
                  color: Colors.blue,
                ),
                SizedBox(height: MiraiSize.space8),
                Text(
                  'Item ${index + 1}',
                  style: TextStyle(
                    fontSize: MiraiSize.textSize16,
                  ),
                ),
                Text(
                  'Grid count: ${MiraiSize.gridCount}',
                  style: TextStyle(
                    fontSize: MiraiSize.textSize12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// Mobile Layout Component
class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(MiraiSize.space16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Mobile Layout',
            style: TextStyle(
              fontSize: MiraiSize.textSize24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MiraiSize.space16),
          const ResponsiveGrid(),
        ],
      ),
    );
  }
}

// Mobile Landscape Layout Component
class MobileLandscapeLayout extends StatelessWidget {
  const MobileLandscapeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(MiraiSize.space16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Landscape Mobile Layout',
            style: TextStyle(
              fontSize: MiraiSize.textSize24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MiraiSize.space16),
          const ResponsiveGrid(),
        ],
      ),
    );
  }
}

// Tablet Layout Component
class TabletLayout extends StatelessWidget {
  const TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(MiraiSize.space20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Tablet Layout',
            style: TextStyle(
              fontSize: MiraiSize.textSize28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MiraiSize.space20),
          const ResponsiveGrid(),
        ],
      ),
    );
  }
}

// Tablet Landscape Layout Component
class TabletLandscapeLayout extends StatelessWidget {
  const TabletLandscapeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(MiraiSize.space20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Landscape Tablet Layout',
            style: TextStyle(
              fontSize: MiraiSize.textSize28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MiraiSize.space20),
          const ResponsiveGrid(),
        ],
      ),
    );
  }
}

// Desktop Layout Component
class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(MiraiSize.space24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Desktop Layout',
            style: TextStyle(
              fontSize: MiraiSize.textSize32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MiraiSize.space24),
          const ResponsiveGrid(),
        ],
      ),
    );
  }
}
