// import 'package:flutter/material.dart';
//
// import 'package:percent_indicator/linear_percent_indicator.dart';
// import 'package:test_page/core/theme_style/theme_generator.dart';
//
//
// class HomePostItem extends StatelessWidget {
//   const HomePostItem({
//     Key? key,
//     required this.homeSummary,
//     required this.position,
//   }) : super(key: key);
//
//   final TimelineResult? homeSummary;
//   final int position;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // padding: EdgeInsets.all(8),
//       width: MediaQuery.of(context).size.width,
//       decoration: Constants.loginBox,
//       margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
//       child: Column(
//         children: [
//           /// Profile Pic
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
//             child: Row(
//               children: [
//                 /// network img
//                 CircleAvatar(
//                   // backgroundImage: homeSummary.profilePicPath,
//                   radius: 20,
//                   backgroundImage:
//                       NetworkImage(homeSummary?.profilePicPath?.filePath ?? ''),
//                 ),
//                 const SizedBox(
//                   width: 8,
//                 ),
//
//                 /// profole  user name
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       /// user Name
//                       Text(
//                         homeSummary?.userName ?? '',
//                         // 'Shubham Chavan-Patil ',
//                         style: ThemeGenerator.textStyleBoldBlackXIV,
//                       ),
//
//                       /// profession Name
//                       Text(
//                         homeSummary?.profession?.professionName ?? '',
//                         style: ThemeGenerator.textStyleGrey2XII,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           /// Created Date
//                           Text(
//                             // '4 days ago',
//                             homeSummary?.createdDate ?? '',
//                             style: ThemeGenerator.textStyleGrey2XII,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 10, top: 6),
//                             child: RichText(
//                               text: TextSpan(
//                                 style: ThemeGenerator.textStyleGreyXII,
//                                 children: [
//                                   TextSpan(
//                                       text: '${LocalStrings.bulletIcon}  ',
//                                       style: ThemeGenerator.textStyleXIV),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Image.asset(AssetCatalog.group, height: 12),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//
//                 /// more_vert Icon
//                 IconButton(
//                   onPressed: () {
//                     _showBottomSheet2(context);
//                   },
//                   icon: Icon(
//                     Icons.more_vert,
//                     color: ThemeGenerator.greyShade2,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//           ///  profilePic
//           Visibility(
//             visible: false,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
//               child: Row(
//                 children: [
//                   /// network img
//                   CircleAvatar(
//                     radius: 20,
//                     backgroundImage: NetworkImage(
//                         // 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fkrishna%2F&psig=AOvVaw0s_FKELjbc5csObf854v0W&ust=1670757711032000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCPinzdD37vsCFQAAAAAdAAAAABAE'
//                         homeSummary?.profilePicPath?.filePath ?? ''),
//                   ),
//                   const SizedBox(
//                     width: 8,
//                   ),
//
//                   /// profole  user name
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         /// user Name
//                         Text(
//                           // 'Shubham Chavan ',
//                           homeSummary?.userName ?? '',
//                           style: ThemeGenerator.textStyleBoldBlackXIV,
//                         ),
//
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             /// created Date
//                             Text(
//                               homeSummary?.createdDate ?? '',
//                               style: ThemeGenerator.textStyleGrey2XII,
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//
//                             /// Bullet Icon
//                             Padding(
//                               padding: const EdgeInsets.only(left: 1, top: 6),
//                               child: RichText(
//                                 text: TextSpan(
//                                   style: ThemeGenerator.textStyleGreyXII,
//                                   children: [
//                                     TextSpan(
//                                         text: '${LocalStrings.bulletIcon}  ',
//                                         style: ThemeGenerator.textStyleXIV),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Image.asset(AssetCatalog.worldwide, height: 12),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//           SizedBox(
//             height: 200,
//             width: 300,
//             child: PageView(
//               // controller: _controller,
//               children: const [
//                 MyPageWidget1(),
//                 MyPageWidget2(),
//                 MyPageWidget3(),
//               ],
//             ),
//           ),
//
//           ///KNACKBE
//           Row(
//             // mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Expanded(
//                 child: Container(
//                   alignment: Alignment.bottomLeft,
//                   padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
//                   child: Text(
//                     homeSummary?.title ?? '',
//                     textAlign: TextAlign.justify,
//                     style: TextStyle(
//                         color: ThemeGenerator.grey,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//
//           ///Sub title
//           Container(
//             alignment: Alignment.bottomLeft,
//             padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
//             child: Text(homeSummary?.description ?? '',
//                 maxLines: 4,
//                 textAlign: TextAlign.justify,
//                 overflow: TextOverflow.ellipsis,
//                 style: TextStyle(
//                     color: ThemeGenerator.grey,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500)),
//           ),
//
//           /// Make Claim
//           Visibility(
//             visible: (homeSummary?.isViral == 1),
//             child: Container(
//               margin: const EdgeInsets.all(7),
//               height: 90,
//               decoration: BoxDecoration(
//                   color: ThemeGenerator.accentColor3,
//                   borderRadius: const BorderRadius.all(Radius.circular(4))),
//               padding: const EdgeInsets.symmetric(horizontal: 8),
//               child: Column(
//                 children: [
//                   Expanded(
//                     child: Row(
//                       children: [
//                         Text(
//                           textAlign: TextAlign.justify,
//                           style: const TextStyle(
//                               fontSize: 12, fontWeight: FontWeight.bold),
//                           LocalStrings.doyouknowthe,
//                         ),
//                         ToolTip(),
//                       ],
//                     ),
//                   ),
//
//                   /// sub doyouknowthe
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Column(
//                           children: [
//                             Text(
//                               textAlign: TextAlign.justify,
//                               style: const TextStyle(
//                                 fontSize: 10,
//                               ),
//                               LocalStrings.subdoyouknowthe,
//                             ),
//                           ],
//                         ),
//
//                       ),
//                       SizedBox(width: 5),
//
//                       /// SubmitInfo
//                       SizedBox(
//                         width: 90,
//                         height: 30,
//                         child: FloatingActionButton.extended(
//
//                           /// SubmitInfo
//                           label: SubmitInfo(), // <-- Text
//                           // backgroundColor: Colors.blue,
//
//                           onPressed: () {
//                             /// Bottom Sheet
//                             showModalBottomSheet(
//                               //barrierColor: Colors.white.withOpacity(0.0),
//                               backgroundColor: ThemeGenerator.white,
//                               context: context,
//                               isScrollControlled: true,
//                               builder: (context) {
//                                 return ClaimFormBottomSheet(
//                                     postId: homeSummary?.id ?? 0);
//                               },
//                             );
//                           },
//                         ),
//                       ),
//
//                       // RoundedBorderButton3(
//                       //   // width: MediaQuery.of(context).size.width,
//                       //   width: 89,
//                       //   height: 30,
//                       //   onPressed: () {
//                       //     /// Bottom Sheet
//                       //     showModalBottomSheet(
//                       //       //barrierColor: Colors.white.withOpacity(0.0),
//                       //       backgroundColor: ThemeGenerator.white,
//                       //       context: context,
//                       //       isScrollControlled: true,
//                       //       builder: (context) {
//                       //         return ClaimFormBottomSheet(
//                       //             postId: homeSummary?.id ?? 0);
//                       //       },
//                       //     );
//                       //   },
//                       //   borderRadius: BorderRadius.circular(20),
//                       //   child: Text(
//                       //     LocalStrings.makeclaim,
//                       //     style: TextStyle(
//                       //         color: ThemeGenerator.white, fontSize: 10),
//                       //   ),
//                       // ),
//                     ],
//                   ),
//                 ],
//               ),
//
//               // mainAxisAlignment: MainAxisAlignment.end,
//             ),
//           ),
//
//           /// Funds Raised, Funds Required
//           Visibility(
//             visible: (homeSummary?.allowFund == 1),
//             child: Container(
//
//                 // decoration: BoxDecoration(
//                 //     borderRadius: BorderRadius.circular(10)),
//                 margin: const EdgeInsets.all(8),
//                 height: 63,
//                 // color: ThemeGenerator.accentColor2,
//                 decoration: BoxDecoration(
//                     color: ThemeGenerator.accentColor3,
//                     borderRadius: const BorderRadius.all(Radius.circular(4))),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(9),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                                Text(
//                                 /// 'Funds Raised ',
//                                 AppLocalizations.of(context)!.funds_raised,
//                                 style: TextStyle(fontSize: 10),
//                               ),
//                               Image.asset(
//                                 AssetCatalog.rupee,
//                                 height: 16,
//                                 width: 17,
//                               ),
//                               const Text(
//                                 '10',
//                                 style: TextStyle(fontSize: 10),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                                Text(
//                                 // 'Funds Required ',
//                                AppLocalizations.of(context)!.funds_required,
//                                  style: TextStyle(fontSize: 10),
//                               ),
//                               Image.asset(
//                                 AssetCatalog.rupee,
//                                 height: 16,
//                                 width: 17,
//                               ),
//                               Text(
//                                 // '101',
//                                 '${homeSummary?.postFundingDetails?.receivedAmount ?? 0}',
//                                 // homeSummary?.profilePicPath?.filePath ?? ''
//                                 style: const TextStyle(fontSize: 10),
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//
//                     /// LinearPercentIndicator
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: LinearPercentIndicator(
//                         // width: 320,
//                         lineHeight: 3,
//                         percent: 0.40,
//                         // center: Text('75.0%',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
//                         linearStrokeCap: LinearStrokeCap.roundAll,
//                         progressColor: ThemeGenerator.primaryDarkColor2,
//                         backgroundColor: ThemeGenerator.accentColor2,
//                         animation: true,
//                         animationDuration: 2000,
//                       ),
//                     ),
//                   ],
//                 )),
//           ),
//
//           /// like ,comment ,share ,views
//           Container(
//             padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
//             child: Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Column(
//                   children: [
//                     /// Likes
//                     Text(
//                       // '${homeSummary?.likeCount ?? '0'}  Likes',
//                       '${homeSummary?.likeCount ?? '0'} ${AppLocalizations.of(context)!.like}',
//
//                       style: ThemeGenerator.textStyleBlackXII,
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//
//                 /// Comment
//                 Column(
//                   children: [
//                     // Text('${homeSummary?.commentCount ?? '0'} Comment',
//                     Text('${homeSummary?.commentCount ?? '0'} ${AppLocalizations.of(context)!.comment}',
//                         style: ThemeGenerator.textStyleBlackXII)
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//
//                 /// Share
//                 Column(
//                   children: [
//                     // Text('${homeSummary?.shareCount ?? '0'} Share',
//                     Text('${homeSummary?.shareCount ?? '0'}${AppLocalizations.of(context)!.share}',
//                         style: ThemeGenerator.textStyleBlackXII)
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 15,
//                 ),
//
//                 /// Views
//                 Column(
//                   children: [
//                     // Text('${homeSummary?.viewsCount ?? '0'} Views',
//                     Text('${homeSummary?.viewsCount ?? '0'} ${AppLocalizations.of(context)!.views}',
//                         style: ThemeGenerator.textStyleBlackXII)
//                   ],
//                 ),
//               ],
//             ),
//           ),
//
//           /// divider
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8),
//             child: Divider(
//               color: ThemeGenerator.greyShade1,
//               thickness: 0.25,
//             ),
//           ),
//
//           /// like,comment,share,contribute Icons
//           Container(
//             padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 /// Like
//                 Expanded(
//                   child: Column(
//                     children: [
//                       Image.asset(
//                         AssetCatalog.like,
//                         height: 16,
//                         width: 17,
//                       ),
//                       Text(
//                         // LocalStrings.like,
//                         AppLocalizations.of(context)!.like,
//                         style: ThemeGenerator.textStyleBlackXII,
//                       )
//                     ],
//                   ),
//                 ),
//
//                 /// Comment
//                 Expanded(
//                   child: Column(
//                     children: [
//                       Image.asset(
//                         AssetCatalog.conversation,
//                         height: 16,
//                         width: 17,
//                       ),
//                       Text(
//                           // LocalStrings.comment,
//                           AppLocalizations.of(context)!.comment,
//                           style: ThemeGenerator.textStyleBlackXII)
//                     ],
//                   ),
//                 ),
//
//                 /// Share
//                 Expanded(
//                   child: Column(
//                     children: [
//                       Image.asset(
//                         AssetCatalog.share,
//                         height: 16,
//                         width: 17,
//                       ),
//                       Text(
//                           // LocalStrings.share,
//                           AppLocalizations.of(context)!.share,
//                           style: ThemeGenerator.textStyleBlackXII)
//                     ],
//                   ),
//                 ),
//
//                 /// Contribute
//                 Visibility(
//                   visible: (homeSummary?.allowFund == 1),
//                   // visible: true,
//                   child: InkWell(
//                     onTap: () {
//                       showModalBottomSheet(
//                         //barrierColor: Colors.white.withOpacity(0.0),
//                         backgroundColor: ThemeGenerator.white,
//                         context: context,
//                         isScrollControlled: true,
//                         builder: (context) {
//                           return const Contribute();
//                         },
//                       );
//                     },
//                     child: Expanded(
//                       child: Column(
//                         children: [
//                           Image.asset(
//                             AssetCatalog.businessandfinance,
//                             height: 22,
//                             width: 22,
//                             color: ThemeGenerator.primaryDarkColor,
//                           ),
//                           Text(
//                               // LocalStrings.contribute,
//                               AppLocalizations.of(context)!.contribute,
//                               style: ThemeGenerator.textStyleBlackXII)
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// void _showBottomSheet2(BuildContext context) async {
//   return showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
//     builder: (context) => Padding(
//       padding: const EdgeInsets.only(bottom: 30, top: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           /// Arroe down
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Icon(
//                 Icons.keyboard_arrow_down,
//                 color: ThemeGenerator.black,
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//
//           ///Bookmarke,share,unfollow,Report this post
//
//           MoreSheetItem(label: AppLocalizations.of(context)!.bookmark,),
//           MoreSheetItem(label: AppLocalizations.of(context)!.share,),
//           MoreSheetItem(label: AppLocalizations.of(context)!.unfollow,),
//           MoreSheetItem(label: AppLocalizations.of(context)!.report_this_post,),
//           MoreSheetItem(label: AppLocalizations.of(context)!.edit_post,),
//           MoreSheetItem(label:AppLocalizations.of(context)!.delete_post,),
//         ],
//       ),
//     ),
//   );
// }
//
// class MyPageWidget1 extends StatelessWidget {
//   const MyPageWidget1({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Image.asset(AssetCatalog.indianFlag),
//     );
//   }
// }
//
// class MyPageWidget2 extends StatelessWidget {
//   const MyPageWidget2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Image.asset(AssetCatalog.knackBeLogo),
//     );
//   }
// }
//
// class MyPageWidget3 extends StatelessWidget {
//   const MyPageWidget3({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Image.asset(AssetCatalog.userImg),
//     );
//   }
// }
