part of '../credits.dart';

class FlutterPackagesList extends StatelessWidget {
  const FlutterPackagesList({super.key});

  @override
  Widget build(BuildContext context) {
    final appPackages = AppPackages();
    final packages = appPackages.fetchAppPackages();
    return ListView.builder(
      shrinkWrap: true,
      itemCount: packages.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => _listTile(index, packages),
    );
  }

  ListTile _listTile(int index, List<AppPackage> packages) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            index == 0 ? 15 : 0,
          ),
          topRight: Radius.circular(
            index == 0 ? 15 : 0,
          ),
          bottomLeft: Radius.circular(
            index == packages.length - 1 ? 15 : 0,
          ),
          bottomRight: Radius.circular(
            index == packages.length - 1 ? 15 : 0,
          ),
        ),
      ),
      title: Text(
        packages[index].name,
      ),
    );
  }
}
