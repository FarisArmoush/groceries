part of '../account_settings.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    final imageFile = context.watch<UpdateUserImageBloc>().state.imageFile;
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: AppColors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: context.theme.primaryColorLight,
          width: 3,
        ),
      ),
      child: imageFile != null
          ? fileImage(context, imageFile)
          : _networkImage(context),
    );
  }

  Widget fileImage(BuildContext context, File imageFile) {
    return Container(
      height: context.deviceHeight * 0.2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(imageFile.path),
        ),
      ),
    );
  }

  Widget _networkImage(BuildContext context) {
    final userImageUrl = context.watch<UserDataCubit>().state.image ?? '';
    return CachedImage(
      imageUrl: userImageUrl,
      height: context.deviceHeight * 0.2,
      boxFit: BoxFit.contain,
      progressIndicatorBuilder: (context, url, progress) =>
          const SizedBox.shrink(),
    );
  }
}
