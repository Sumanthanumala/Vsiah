import '../utils/export.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(64.h), child: Customappbar()),
          endDrawer: Drawerbar(),
        body: Center(child: Text("Home screen")),
      ),
    );
  }
}