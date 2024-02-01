// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class CatalogMainScreen extends StatelessWidget {
//   CatalogBloc get catalogBloc => sl();

//   const CatalogMainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocProvider.value(
//         value: catalogBloc,
//         child: const CatalogMainScreenContent(),
//       ),
//     );
//   }
// }

// class CatalogMainScreenContent extends StatefulWidget {
//   const CatalogMainScreenContent({super.key});

//   @override
//   State<CatalogMainScreenContent> createState() =>
//       _CatalogMainScreenContentState();
// }

// class _CatalogMainScreenContentState extends State<CatalogMainScreenContent> {
//   @override
//   void initState() {
//     // context.read<CatalogBloc>().add(GetProductsListEvent());
//     context.read<CatalogBloc>().add(FetchBuildPlanDataEvent());
//     // context.read<CatalogBloc>().add(FetchFeatureCardsListEvent());
//     // context.read<CatalogBloc>().add(FetchSetupStepsEvent());
//     // context.read<CatalogBloc>().add(FetchPromoVideoEvent());
//     // context.read<CatalogBloc>().add(FetchContactConsultantDataEvent());
//     // context.read<CatalogBloc>().add(FetchFaqsListEvent());

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<CatalogBloc, CatalogState>(
//       listener: (context, state) {
//         if (state is CatalogInitialState) {}

//         if (state is CatalogErrorState) {
//           // _showFailSnackBar("Error", context);
//           // SnackBar(
//           //   content: Text(
//           //     "Error",
//           //     style: TextThemeStyles.bodyTextLight14,
//           //   ),
//           //   backgroundColor: AppColors.red100,
//           // );
//           Fluttertoast.showToast(
//             msg: "Error",
//             backgroundColor: AppColors.errorRed100,
//           );
//         }

//         if (state is GoToPlanDetailsState) {
//           AppNavigation.pushNamed(
//             AppRoutes.planDetailsScreen,
//             arguments: ScreenArguments(
//               catalogEntity: state.resCatalogEntity,
//               listOfProducts: state.listOfProducts,
//               skuComponents: state.skuComponents,
//               selectedProductInfo: state.selectedProductInfo,
//               selectedWayOfPayment: state.selectedWayOfPayment,
//               selectedItemParentID:
//                   state.selectedItem!.id.replaceAll("prod_", "").trim(),
//               sicCode: state.sicCode,
//               storeId: state.storeId,
//               basketId: state.basketId,
//               basketItemId: state.basketItemId,
//               channelBasketRefId: state.channelBasketRefId,
//             ),
//           );
//         }
//       },
//       builder: (context, state) {
//         if (state is CatalogueLoadedState || state is CatalogErrorState) {
//           return Scaffold(
//             backgroundColor: AppColors.white,
//             body: Column(
//               children: [
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         SizedBox(height: 50.h),
//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 20.w),
//                           child: Row(
//                             children: [
//                               User.getInstance() == null
//                                   ? const CircleAvatar(
//                                       backgroundColor: AppColors.black,
//                                     )
//                                   : InkWell(
//                                       onTap: () {
//                                         Navigator.of(context).pop();
//                                       },
//                                       child: Icon(
//                                         AppIcons.arrow_left,
//                                       ),
//                                     ),
//                               SizedBox(width: 10.w),
//                               Text(
//                                 "Digital Native",
//                                 style: TextThemeStyles.bodyTextBold12,
//                               ),
//                               const Spacer(
//                                 flex: 1,
//                               ),
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: 8.w,
//                                   vertical: 8.h,
//                                 ),
//                                 decoration: const BoxDecoration(
//                                   color: AppColors.camel10,
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: const Icon(AppIcons.bell),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 10.h),

//                         OfferedPlanSliderWidget(
//                           catalogEntity: state.resCatalogEntity,
//                           listOfProducts: state.resCatalogEntity.items,
//                         ),
//                         // BuildYourPlanWidget(
//                         //   catalogCmsEntity: state.buildPlanDataUC,
//                         // ),
//                         ProductFeaturesWidget(
//                           catalogCmsCustomizedEntity: state.featureCardsListUC,
//                         ),
//                         FewStepsSetupWidget(
//                           catalogCmsCustomizedEntity: state.setupStepsUC,
//                         ),
//                         WatchVideoWidget(
//                           catalogCmsCustomizedEntity: state.promoVideoUC,
//                         ),
//                         ContactSalesWidget(
//                           catalogCmsCustomizedEntity:
//                               state.contactConsultantDataUC,
//                         ),
//                         FaqsWidget(
//                           catalogCmsCustomizedEntity: state.faqsListUC,
//                         ),
//                         //   const GrandTotalWidget(),
//                       ],
//                     ),
//                   ),
//                 ),
//                 PriceSummery(
//                   buttonText: 'Choose your plan',
//                   prices: const [],
//                   grandTotal: 300,
//                   onTap: () {
//                     if (state.resCatalogEntity.items.isNotEmpty) {
//                       ItemEntity selectedItem = state.resCatalogEntity.items[0];

//                       List<String> displayNameSplit =
//                           selectedItem.displayName.split("-");
//                       double price = 0;
//                       double marketingPrice = 0.0;
//                       String unitDisplayName = "";

//                       RatePlansItemEntity ratePlan =
//                           const RatePlansItemEntity.empty();
//                       if (selectedItem.ratePlans.items.isNotEmpty) {
//                         ratePlan = selectedItem.ratePlans.items[0];

//                         price = ratePlan.price;
//                         marketingPrice = ratePlan.ucaasBundleMarketingPrice;
//                         unitDisplayName = ratePlan.displayName;
//                       }

//                       context.read<CatalogBloc>().add(
//                             GetAvailableStockEvent(
//                               catalogEntity: state.resCatalogEntity,
//                               selectedItem: selectedItem,
//                               listOfProducts: state.resCatalogEntity.items,
//                               skuComponents: ratePlan,
//                               selectedProductInfo: {
//                                 "productNameSplit": displayNameSplit,
//                                 "newPrice": price,
//                                 "unit": unitDisplayName,
//                                 "oldPrice": marketingPrice,
//                               },
//                               cartItem: {
//                                 "title": "Starter Plan",
//                                 "paymentType": "(Monthly charge)",
//                                 "price": price,
//                                 "ratioPriceValue": ratePlan.price /
//                                     ratePlan.recurringDuration.duration,
//                                 "billingFrequency":
//                                     ratePlan.recurringDuration.duration,
//                               },
//                               itemPrice: price,
//                             ),
//                           );
//                     }
//                   },
//                 ),
//               ],
//             ),
//           );
//         }

//         // if (state is GoToPlanDetailsState) {
//         //   AppNavigation.pushNamed(
//         //     AppRoutes.planDetailsScreen,
//         //     arguments: ScreenArguments(
//         //       listOfProducts: state.listOfProducts,
//         //       skuComponents: state.skuComponents,
//         //       selectedProductInfo: state.selectedProductInfo,
//         //     ),
//         //   );
//         // }

//         return const Center(
//           child: CircularProgressIndicator(
//             color: AppColors.black,
//           ),
//         );
//       },
//     );
//   }

//   _showFailSnackBar(String message, BuildContext _context) {
//     return FToast().init(_context).showToast(
//           gravity: ToastGravity.BOTTOM,
//           child: SnackbarContainer(
//             backgroundColor: AppColors.red100,
//             icon: 'warning-circle.svg',
//             message: message,
//             actionString: 'Try Again'.toUpperCase(),
//             onActionClicked: () {
//               // navigate to same card details you try to delete
//             },
//           ),
//         );
//   }
// }
