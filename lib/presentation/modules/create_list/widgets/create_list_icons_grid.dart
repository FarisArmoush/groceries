part of '../create_list.dart';

class CreateListIconsGrid extends StatefulWidget {
  const CreateListIconsGrid({super.key});

  @override
  State<CreateListIconsGrid> createState() => _CreateListIconsGridState();
}

class _CreateListIconsGridState extends State<CreateListIconsGrid> {
  IconData? _selectedIcon;

  final _mockIcons = <IconData>[
    Icons.abc,
    Icons.phone,
    Icons.baby_changing_station,
    Icons.u_turn_left,
    Icons.padding,
    Icons.zoom_out_sharp,
    Icons.accessibility_new_rounded,
    Icons.dangerous,
    Icons.youtube_searched_for,
    Icons.account_circle_rounded,
    Icons.data_array,
    Icons.power_input,
    Icons.g_mobiledata,
    Icons.home,
    Icons.receipt,
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
        itemCount: _mockIcons.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return AnimatedContainer(
            duration: 400.milliseconds,
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: _selectedIcon == _mockIcons[index]
                    ? context.theme.primaryColorLight
                    : Colors.transparent,
                width: 2,
              ),
            ),
            child: IconButton(
              icon: Icon(
                _mockIcons[index],
                color: context.theme.primaryColor,
              ),
              onPressed: () => setState(
                () => _selectedIcon = _mockIcons[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
