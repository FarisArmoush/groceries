part of '../create_list.dart';

class CreateListIconsGrid extends StatelessWidget {
  const CreateListIconsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateListBloc, CreateListState>(
      // buildWhen: (previous, current) => previous.icon != current.icon,
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: context.theme.cardColor,
          ),
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: state.iconsPaths.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 15,
            ),
            itemBuilder: (context, index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: state.icon == state.iconsPaths[index]
                        ? context.theme.primaryColorLight
                        : Colors.transparent,
                    width: 2,
                  ),
                ),
                child: IconButton(
                  icon: SvgPicture.asset(
                    state.iconsPaths[index],
                    height: context.deviceHeight * 0.03,
                    theme: SvgTheme(
                      currentColor: context.theme.primaryColor,
                    ),
                  ),
                  onPressed: () {
                    context.read<CreateListBloc>().add(
                          CreateListEvent.iconChanged(
                            state.iconsPaths[index],
                          ),
                        );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
