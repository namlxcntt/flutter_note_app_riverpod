// import 'package:flutter/material.dart';
// import 'package:flutter_note_app/features/create/child/background_model.dart';
// import 'package:flutter_note_app/features/create/child/item_extras_w.dart';
// import 'package:flutter_note_app/generated/assets.dart';
// import 'package:flutter_note_app/theme/colors.dart';
// import 'package:flutter_note_app/theme/themes.dart';
// import 'package:flutter_note_app/utils/const.dart';
// import 'package:flutter_note_app/utils/extensions.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:go_router/go_router.dart';
//
// class BottomSheetExtraMenu extends StatelessWidget {
//   const BottomSheetExtraMenu({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(AppConstant.sizePrimary),
//           topRight: Radius.circular(AppConstant.sizePrimary),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(AppConstant.sizePrimary),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 context.pop();
//               },
//               child: Align(
//                 alignment: Alignment.centerRight,
//                 child: SvgPicture.asset(
//                   Assets.iconsIcCloseButton,
//                   width: AppConstant.sizeCircleColor,
//                   height: AppConstant.sizeCircleColor,
//                 ),
//               ),
//             ),
//             Text(
//               context.getString().change_background,
//               style: context
//                   .textXSRegular()
//                   ?.copyWith(color: AppColors.colorNeutralDarkGrey),
//             ),
//             const SizedBox(
//               height: AppConstant.sizePrimary,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: BackGroundData.listData().map((element) {
//                 return Flexible(
//                   flex: 1,
//                   child: Container(
//                     width: AppConstant.sizeCircleColor,
//                     height: AppConstant.sizeCircleColor,
//                     decoration: BoxDecoration(
//                         color: element.bgColor,
//                         shape: BoxShape.circle,
//                         border: element.bgColor == Colors.white
//                             ? Border.all(
//                                 color: AppColors.colorNeutralDarkGrey, width: 1)
//                             : null),
//                   ),
//                 );
//               }).toList(),
//             ),
//             const SizedBox(
//               height: AppConstant.sizePrimary,
//             ),
//             Container(
//               height: 1,
//               decoration: const BoxDecoration(
//                 color: AppColors.colorNeutralBaseGrey,
//               ),
//             ),
//             const SizedBox(
//               height: AppConstant.sizePrimary,
//             ),
//             Text(
//               context.getString().extras,
//               style: context
//                   .textXSRegular()
//                   ?.copyWith(color: AppColors.colorNeutralDarkGrey),
//             ),
//             const SizedBox(
//               height: AppConstant.size24,
//             ),
//             const ItemExtraOptions(
//               tittle: 'Label',
//               content: 'Not yet',
//             ),
//             const SizedBox(
//               height: AppConstant.size24,
//             ),
//             const ItemExtraOptions(tittle: 'New Label 2', content: 'Enable'),
//             const SizedBox(
//               height: AppConstant.size24,
//             ),
//             const ItemExtraOptions(
//               tittle: 'New Label 3',
//               content: 'Approval',
//             ),
//             const SizedBox(
//               height: AppConstant.size24,
//             ),
//             const Spacer(),
//             Container(
//               margin:
//                   const EdgeInsets.symmetric(vertical: AppConstant.sizePrimary),
//               height: 1,
//               decoration: const BoxDecoration(
//                 color: AppColors.colorNeutralBaseGrey,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
