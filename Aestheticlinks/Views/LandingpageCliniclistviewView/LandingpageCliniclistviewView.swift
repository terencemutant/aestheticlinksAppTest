import SwiftUI

struct LandingpageCliniclistviewView: View {
    @StateObject var landingpageCliniclistviewViewModel = LandingpageCliniclistviewViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ZStack(alignment: .bottomLeading) {
                                VStack(alignment: .trailing, spacing: 0) {
                                    HStack {
                                        HStack {
                                            Image("img_unitedarabemi")
                                                .resizable()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Text(StringConstants.kLblDubai)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Gray901)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(42.0),
                                                       height: getRelativeHeight(21.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(6.0))
                                            Image("img_vector_gray_901_3x6")
                                                .resizable()
                                                .frame(width: getRelativeWidth(6.0),
                                                       height: getRelativeHeight(3.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(6.0))
                                        }
                                        .frame(width: getRelativeWidth(82.0),
                                               height: getRelativeHeight(21.0), alignment: .top)
                                        .padding(.top, getRelativeHeight(5.0))
                                        .padding(.bottom, getRelativeHeight(6.0))
                                        Image("img_hamburgermenu")
                                            .resizable()
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeHeight(33.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(109.0))
                                            .onTapGesture {
                                                landingpageCliniclistviewViewModel
                                                    .nextScreen = "MenuView"
                                            }
                                    }
                                    .frame(width: getRelativeWidth(224.0),
                                           height: getRelativeHeight(33.0), alignment: .trailing)
                                    .padding(.top, getRelativeHeight(28.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(390.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Black9004c)
                                        .padding(.top, getRelativeHeight(16.0))
                                    VStack(alignment: .leading, spacing: 0) {
                                        HStack {
                                            Text(StringConstants.kLbl)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .padding(.horizontal, getRelativeWidth(8.0))
                                                .foregroundColor(ColorConstants.Gray400)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(24.0),
                                                       height: getRelativeHeight(25.0),
                                                       alignment: .center)
                                                .overlay(RoundedCorners(topLeft: 12.5,
                                                                        topRight: 12.5,
                                                                        bottomLeft: 12.5,
                                                                        bottomRight: 12.5)
                                                        .stroke(ColorConstants.Black9004c,
                                                                lineWidth: 1))
                                                .background(RoundedCorners(topLeft: 12.5,
                                                                           topRight: 12.5,
                                                                           bottomLeft: 12.5,
                                                                           bottomRight: 12.5)
                                                        .fill(Color.clear.opacity(0.7)))
                                            Spacer()
                                            Text(StringConstants.kMsgAvailableClini)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Gray901)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(223.0),
                                                       height: getRelativeHeight(24.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(14.0))
                                        }
                                        .frame(width: getRelativeWidth(263.0),
                                               height: getRelativeHeight(25.0), alignment: .leading)
                                        .padding(.trailing)
                                        HStack {
                                            TextField(StringConstants.kMsgSearchHereFor,
                                                      text: $landingpageCliniclistviewViewModel
                                                          .group125Text)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Gray500)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(360.0),
                                               height: getRelativeHeight(35.0), alignment: .leading)
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.Bluegray50))
                                        .padding(.top, getRelativeHeight(24.0))
                                    }
                                    .frame(width: getRelativeWidth(360.0),
                                           height: getRelativeHeight(84.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(23.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(241.0), alignment: .leading)
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    HStack {
                                        HStack {
                                            Text(StringConstants.kLblGender)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black90099)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(44.0),
                                                       height: getRelativeHeight(18.0),
                                                       alignment: .topLeading)
                                            Image("img_vector_black_901")
                                                .resizable()
                                                .frame(width: getRelativeWidth(6.0),
                                                       height: getRelativeHeight(3.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(7.0))
                                            Text(StringConstants.kLblServices)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black90099)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(49.0),
                                                       height: getRelativeHeight(18.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(50.0))
                                            Image("img_vector_black_901")
                                                .resizable()
                                                .frame(width: getRelativeWidth(6.0),
                                                       height: getRelativeHeight(3.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(10.0))
                                        }
                                        .frame(width: getRelativeWidth(174.0),
                                               height: getRelativeHeight(18.0), alignment: .bottom)
                                        .padding(.top, getRelativeHeight(5.0))
                                        Spacer()
                                        HStack {
                                            ZStack(alignment: .topTrailing) {
                                                Text(StringConstants.kLblFilters)
                                                    .font(FontScheme
                                                        .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray701)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(34.0),
                                                           height: getRelativeHeight(18.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(5.39))
                                                    .padding(.trailing, getRelativeWidth(12.0))
                                                Text(StringConstants.kLbl22)
                                                    .font(FontScheme
                                                        .kPoppinsSemiBold(size: getRelativeHeight(6.0)))
                                                    .fontWeight(.semibold)
                                                    .padding(.horizontal, getRelativeWidth(4.0))
                                                    .foregroundColor(ColorConstants.WhiteA700)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(11.0),
                                                           height: getRelativeHeight(12.0),
                                                           alignment: .center)
                                                    .background(ColorConstants.Gray900)
                                                    .padding(.bottom, getRelativeHeight(11.0))
                                                    .padding(.leading, getRelativeWidth(34.48))
                                            }
                                            .hideNavigationBar()
                                            .onTapGesture {
                                                landingpageCliniclistviewViewModel
                                                    .nextScreen = "MorefiltersView"
                                            }
                                            .frame(width: getRelativeWidth(46.0),
                                                   height: getRelativeHeight(23.0),
                                                   alignment: .center)
                                            Image("img_sortamountdow")
                                                .resizable()
                                                .frame(width: getRelativeWidth(16.0),
                                                       height: getRelativeHeight(14.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(40.0))
                                                .onTapGesture {
                                                    landingpageCliniclistviewViewModel
                                                        .nextScreen = "Sortby1View"
                                                }
                                        }
                                        .frame(width: getRelativeWidth(102.0),
                                               height: getRelativeHeight(23.0), alignment: .top)
                                    }
                                    .frame(width: getRelativeWidth(339.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(28.0))
                                    .padding(.trailing, getRelativeWidth(24.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(3.0), alignment: .leading)
                                        .background(ColorConstants.Cyan600)
                                        .padding(.top, getRelativeHeight(13.0))
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(41.0),
                                       alignment: .bottomLeading)
                                .padding(.top, getRelativeHeight(203.0))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(241.0), alignment: .leading)
                            VStack(alignment: .leading, spacing: 0) {
                                ZStack(alignment: .leading) {
                                    Image("img_101789276591")
                                        .resizable()
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(130.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0))
                                    HStack {
                                        ZStack(alignment: .leading) {
                                            Image("img_rectangle69")
                                                .resizable()
                                                .frame(width: getRelativeWidth(35.0),
                                                       height: getRelativeWidth(35.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 4.0,
                                                                           topRight: 4.0,
                                                                           bottomLeft: 4.0,
                                                                           bottomRight: 4.0))
                                            Image("img_festivallogo1_35x35")
                                                .resizable()
                                                .frame(width: getRelativeWidth(35.0),
                                                       height: getRelativeWidth(35.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 2.0,
                                                                           topRight: 2.0,
                                                                           bottomLeft: 2.0,
                                                                           bottomRight: 2.0))
                                        }
                                        .hideNavigationBar()
                                        .onTapGesture {
                                            landingpageCliniclistviewViewModel
                                                .nextScreen = "ClinicdetailsView"
                                        }
                                        .frame(width: getRelativeWidth(35.0),
                                               height: getRelativeWidth(35.0), alignment: .bottom)
                                        .padding(.leading, getRelativeWidth(8.0))
                                        Text(StringConstants.kMsgAlBarshaDuba)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(101.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(201.0))
                                            .padding(.trailing, getRelativeWidth(18.0))
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(130.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .Gray90000,
                                                    ColorConstants
                                                        .Gray90082]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(130.0), alignment: .leading)
                                HStack {
                                    Group {
                                        Text(StringConstants.kLblClinicName)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black905)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(86.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Image("img_female1363")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(4.0))
                                        Spacer()
                                        Text(StringConstants.kMsgForFemalePati)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(125.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                    }
                                    Group {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Text(StringConstants.kLbl50)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Cyan600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(21.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Image("img_star")
                                            .resizable()
                                            .frame(width: getRelativeWidth(12.0),
                                                   height: getRelativeHeight(11.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                    }
                                    Group {
                                        Image("img_group101")
                                            .resizable()
                                            .frame(width: getRelativeWidth(29.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                    }
                                }
                                .frame(width: getRelativeWidth(361.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .padding(.top, getRelativeHeight(6.0))
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kMsgPrpBotoxLip,
                                                  text: $landingpageCliniclistviewViewModel
                                                      .group260Text)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray901)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(32.0), alignment: .leading)
                                    Divider()
                                        .background(ColorConstants.Gray901)
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(32.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(4.0))
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(194.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            VStack(alignment: .leading, spacing: 0) {
                                ZStack(alignment: .leading) {
                                    Image("img_101789276591")
                                        .resizable()
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(130.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0))
                                    HStack {
                                        Image("img_festivallogo1_35x35")
                                            .resizable()
                                            .frame(width: getRelativeWidth(35.0),
                                                   height: getRelativeWidth(35.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                       bottomLeft: 2.0,
                                                                       bottomRight: 2.0))
                                            .padding(.leading, getRelativeWidth(8.0))
                                        Text(StringConstants.kMsgAlBarshaDuba)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(101.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(201.0))
                                            .padding(.trailing, getRelativeWidth(18.0))
                                    }
                                    .onTapGesture {
                                        landingpageCliniclistviewViewModel
                                            .nextScreen = "ClinicdetailsView"
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(130.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .Gray90000,
                                                    ColorConstants
                                                        .Gray90082]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(130.0), alignment: .leading)
                                HStack {
                                    Group {
                                        Text(StringConstants.kLblClinicName)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black905)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(86.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Image("img_female1363")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(4.0))
                                        Spacer()
                                        Text(StringConstants.kMsgForFemalePati)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(125.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                    }
                                    Group {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Text(StringConstants.kLbl50)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Cyan600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(21.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Image("img_star")
                                            .resizable()
                                            .frame(width: getRelativeWidth(12.0),
                                                   height: getRelativeHeight(11.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                    }
                                    Group {
                                        Image("img_group101")
                                            .resizable()
                                            .frame(width: getRelativeWidth(29.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                    }
                                }
                                .frame(width: getRelativeWidth(361.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .padding(.top, getRelativeHeight(6.0))
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kMsgPrpBotoxLip,
                                                  text: $landingpageCliniclistviewViewModel
                                                      .group266Text)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray901)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(33.0), alignment: .leading)
                                    Divider()
                                        .background(ColorConstants.Gray901)
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(33.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(4.0))
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(195.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            VStack(alignment: .leading, spacing: 0) {
                                ZStack(alignment: .leading) {
                                    Image("img_101789276591")
                                        .resizable()
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(130.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0))
                                    HStack {
                                        Image("img_festivallogo1_35x35")
                                            .resizable()
                                            .frame(width: getRelativeWidth(35.0),
                                                   height: getRelativeWidth(35.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                       bottomLeft: 2.0,
                                                                       bottomRight: 2.0))
                                            .padding(.leading, getRelativeWidth(8.0))
                                        Text(StringConstants.kMsgAlBarshaDuba)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(101.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(201.0))
                                            .padding(.trailing, getRelativeWidth(18.0))
                                    }
                                    .onTapGesture {
                                        landingpageCliniclistviewViewModel
                                            .nextScreen = "ClinicdetailsView"
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(130.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .Gray90000,
                                                    ColorConstants
                                                        .Gray90082]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(130.0), alignment: .leading)
                                HStack {
                                    Group {
                                        Text(StringConstants.kLblClinicName)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black905)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(86.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Image("img_female1363")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(4.0))
                                        Spacer()
                                        Text(StringConstants.kMsgForFemalePati)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(125.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                    }
                                    Group {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Text(StringConstants.kLbl50)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Cyan600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(21.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Image("img_star")
                                            .resizable()
                                            .frame(width: getRelativeWidth(12.0),
                                                   height: getRelativeHeight(11.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                    }
                                    Group {
                                        Image("img_group101")
                                            .resizable()
                                            .frame(width: getRelativeWidth(29.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                    }
                                }
                                .frame(width: getRelativeWidth(361.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .padding(.top, getRelativeHeight(6.0))
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kMsgPrpBotoxLip,
                                                  text: $landingpageCliniclistviewViewModel
                                                      .group262Text)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray901)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(32.0), alignment: .leading)
                                    Divider()
                                        .background(ColorConstants.Gray901)
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(32.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(4.0))
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(194.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            VStack(alignment: .leading, spacing: 0) {
                                ZStack(alignment: .leading) {
                                    Image("img_101789276591")
                                        .resizable()
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(130.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0))
                                    HStack {
                                        Image("img_festivallogo1_35x35")
                                            .resizable()
                                            .frame(width: getRelativeWidth(35.0),
                                                   height: getRelativeWidth(35.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                       bottomLeft: 2.0,
                                                                       bottomRight: 2.0))
                                            .padding(.leading, getRelativeWidth(8.0))
                                        Text(StringConstants.kMsgAlBarshaDuba)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(101.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(201.0))
                                            .padding(.trailing, getRelativeWidth(18.0))
                                    }
                                    .onTapGesture {
                                        landingpageCliniclistviewViewModel
                                            .nextScreen = "ClinicdetailsView"
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(130.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .Gray90000,
                                                    ColorConstants
                                                        .Gray90082]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(130.0), alignment: .leading)
                                HStack {
                                    Group {
                                        Text(StringConstants.kLblClinicName)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black905)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(86.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Image("img_female1363")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(4.0))
                                        Spacer()
                                        Text(StringConstants.kMsgForFemalePati)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(125.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                    }
                                    Group {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Text(StringConstants.kLbl50)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Cyan600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(21.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Image("img_star")
                                            .resizable()
                                            .frame(width: getRelativeWidth(12.0),
                                                   height: getRelativeHeight(11.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                    }
                                    Group {
                                        Image("img_group101")
                                            .resizable()
                                            .frame(width: getRelativeWidth(29.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                    }
                                }
                                .frame(width: getRelativeWidth(361.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .padding(.top, getRelativeHeight(6.0))
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kMsgPrpBotoxLip,
                                                  text: $landingpageCliniclistviewViewModel
                                                      .group268Text)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray901)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(33.0), alignment: .leading)
                                    Divider()
                                        .background(ColorConstants.Gray901)
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(33.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(4.0))
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(195.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            VStack(alignment: .leading, spacing: 0) {
                                ZStack(alignment: .leading) {
                                    Image("img_101789276591")
                                        .resizable()
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(130.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0))
                                    HStack {
                                        Image("img_festivallogo1_35x35")
                                            .resizable()
                                            .frame(width: getRelativeWidth(35.0),
                                                   height: getRelativeWidth(35.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                       bottomLeft: 2.0,
                                                                       bottomRight: 2.0))
                                            .padding(.leading, getRelativeWidth(8.0))
                                        Text(StringConstants.kMsgAlBarshaDuba)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(101.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(201.0))
                                            .padding(.trailing, getRelativeWidth(18.0))
                                    }
                                    .onTapGesture {
                                        landingpageCliniclistviewViewModel
                                            .nextScreen = "ClinicdetailsView"
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(130.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .Gray90000,
                                                    ColorConstants
                                                        .Gray90082]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(130.0), alignment: .leading)
                                HStack {
                                    Group {
                                        Text(StringConstants.kLblClinicName)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black905)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(86.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Image("img_female1363")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(4.0))
                                        Spacer()
                                        Text(StringConstants.kMsgForFemalePati)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(125.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                    }
                                    Group {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Text(StringConstants.kLbl50)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Cyan600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(21.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Image("img_star")
                                            .resizable()
                                            .frame(width: getRelativeWidth(12.0),
                                                   height: getRelativeHeight(11.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                    }
                                    Group {
                                        Image("img_group101")
                                            .resizable()
                                            .frame(width: getRelativeWidth(29.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                    }
                                }
                                .frame(width: getRelativeWidth(361.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .padding(.top, getRelativeHeight(6.0))
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kMsgPrpBotoxLip,
                                                  text: $landingpageCliniclistviewViewModel
                                                      .group264Text)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray901)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(32.0), alignment: .leading)
                                    Divider()
                                        .background(ColorConstants.Gray901)
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(32.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(4.0))
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(194.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            VStack(alignment: .leading, spacing: 0) {
                                ZStack(alignment: .leading) {
                                    Image("img_101789276591")
                                        .resizable()
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(130.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0))
                                    HStack {
                                        Image("img_festivallogo1_35x35")
                                            .resizable()
                                            .frame(width: getRelativeWidth(35.0),
                                                   height: getRelativeWidth(35.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                       bottomLeft: 2.0,
                                                                       bottomRight: 2.0))
                                            .padding(.leading, getRelativeWidth(8.0))
                                        Text(StringConstants.kMsgAlBarshaDuba)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(101.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(201.0))
                                            .padding(.trailing, getRelativeWidth(18.0))
                                    }
                                    .onTapGesture {
                                        landingpageCliniclistviewViewModel
                                            .nextScreen = "ClinicdetailsView"
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(130.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .Gray90000,
                                                    ColorConstants
                                                        .Gray90082]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(130.0), alignment: .leading)
                                HStack {
                                    Group {
                                        Text(StringConstants.kLblClinicName)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black905)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(86.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Image("img_female1363")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(4.0))
                                        Spacer()
                                        Text(StringConstants.kMsgForFemalePati)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(125.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                    }
                                    Group {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                        Text(StringConstants.kLbl50)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Cyan600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(21.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Image("img_star")
                                            .resizable()
                                            .frame(width: getRelativeWidth(12.0),
                                                   height: getRelativeHeight(11.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                        Spacer()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeWidth(3.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                       bottomLeft: 1.5,
                                                                       bottomRight: 1.5)
                                                    .fill(ColorConstants.Gray701))
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                        Spacer()
                                    }
                                    Group {
                                        Image("img_group101")
                                            .resizable()
                                            .frame(width: getRelativeWidth(29.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(5.0))
                                    }
                                }
                                .frame(width: getRelativeWidth(361.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .padding(.top, getRelativeHeight(6.0))
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kMsgPrpBotoxLip,
                                                  text: $landingpageCliniclistviewViewModel
                                                      .group270Text)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray901)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(33.0), alignment: .leading)
                                    Divider()
                                        .background(ColorConstants.Gray901)
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(33.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(4.0))
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(195.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ClinicdetailsView(),
                                   tag: "ClinicdetailsView",
                                   selection: $landingpageCliniclistviewViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MenuView(),
                                   tag: "MenuView",
                                   selection: $landingpageCliniclistviewViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: CityfiltersView(),
                                   tag: "CityfiltersView",
                                   selection: $landingpageCliniclistviewViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: Sortby1View(),
                                   tag: "Sortby1View",
                                   selection: $landingpageCliniclistviewViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MorefiltersView(),
                                   tag: "MorefiltersView",
                                   selection: $landingpageCliniclistviewViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ServicefilterView(),
                                   tag: "ServicefilterView",
                                   selection: $landingpageCliniclistviewViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct LandingpageCliniclistviewView_Previews: PreviewProvider {
    static var previews: some View {
        LandingpageCliniclistviewView()
    }
}
