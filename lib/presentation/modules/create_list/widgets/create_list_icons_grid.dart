import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/presentation/modules/create_list/bloc/create_list_bloc.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class CreateListIconsGrid extends StatelessWidget {
  const CreateListIconsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateListBloc, CreateListState>(
      buildWhen: (previous, current) =>
          previous.icon != current.icon ||
          previous.iconsPaths != current.iconsPaths,
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: context.theme.cardColor,
          ),
          padding: const EdgeInsetsDirectional.all(16),
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
              final isSelected = state.icon == state.iconsPaths[index];
              return DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected
                        ? context.theme.primaryColorLight
                        : AppColors.transparent,
                    width: 2,
                  ),
                ),
                child: IconButton(
                  icon: SvgPicture.asset(
                    state.iconsPaths[index],
                    height: context.deviceHeight * 0.03,
                    colorFilter: ColorFilter.mode(
                      context.theme.primaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  onPressed: () {
                    if (!isSelected) {
                      context.read<CreateListBloc>().add(
                            CreateListEvent.iconChanged(
                              state.iconsPaths[index],
                            ),
                          );
                    }
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
