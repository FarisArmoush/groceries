part of '../create_list.dart';

class CreateListIconsGrid extends StatefulWidget {
  const CreateListIconsGrid({super.key});

  @override
  State<CreateListIconsGrid> createState() => _CreateListIconsGridState();
}

class _CreateListIconsGridState extends State<CreateListIconsGrid> {
  String? _selectedIcon = _icons[0];

  static final _icons = <String>[
    Assets.svg.icHouse.path,
    Assets.svg.icBeef.path,
    Assets.svg.icBook.path,
    Assets.svg.icBriefcase.path,
    Assets.svg.icCake.path,
    Assets.svg.icCar.path,
    Assets.svg.icChurch.path,
    Assets.svg.icDumbbell.path,
    Assets.svg.icHammer.path,
    Assets.svg.icPalmTree.path,
    Assets.svg.icPaw.path,
    Assets.svg.icScissors.path,
    Assets.svg.icStore.path,
    Assets.svg.icBaby.path,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.theme.cardColor,
      ),
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        itemCount: _icons.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: _selectedIcon == _icons[index]
                    ? context.theme.primaryColorLight
                    : Colors.transparent,
                width: 2,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                _icons[index],
                // ignore: deprecated_member_use
                color: context.theme.primaryColor,
                height: context.deviceHeight * 0.03,
              ),
              onPressed: () => setState(
                () => _selectedIcon = _icons[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
