import SwiftUI

struct LandingpagefiltersoffView: View {
    @StateObject var landingpagefiltersoffViewModel = LandingpagefiltersoffViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .bottomLeading) {
                    ZStack(alignment: .leading) {
                        Image("img_image10_307x393")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(307.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0))
                            .padding(.bottom, getRelativeHeight(134.0))
                        ZStack(alignment: .topLeading) {
                            Image("img_image11_1")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(441.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0))
                            VStack {
                                HStack {
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
                                        Spacer()
                                        Image("img_hamburgermenu")
                                            .resizable()
                                            .frame(width: getRelativeWidth(33.0),
                                                   height: getRelativeWidth(33.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .onTapGesture {
                                                landingpagefiltersoffViewModel
                                                    .nextScreen = "MenuView"
                                            }
                                    }
                                    .frame(width: getRelativeWidth(224.0),
                                           height: getRelativeHeight(33.0), alignment: .leading)
                                    .padding(.leading, getRelativeWidth(154.0))
                                    .padding(.trailing, getRelativeWidth(15.0))
                                }
                                .frame(width: UIScreen.main.bounds.width - 20,
                                       height: getRelativeHeight(67.0), alignment: .leading)
                                .background(ColorConstants.WhiteA700)
                                .shadow(color: ColorConstants.Black90019, radius: 15, x: 0, y: 5)
                                HStack {
                                    HStack {
                                        ZStack(alignment: .center) {
                                            Image("img_vector_cyan_600_34x26")
                                                .resizable()
                                                .frame(width: getRelativeWidth(26.0),
                                                       height: getRelativeHeight(34.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 10.0,
                                                                           topRight: 10.0,
                                                                           bottomLeft: 10.0,
                                                                           bottomRight: 10.0))
                                            VStack {
                                                Image("img_festivallogo1")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(22.0),
                                                           height: getRelativeWidth(22.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipShape(Circle())
                                                    .clipShape(Circle())
                                            }
                                            .frame(width: getRelativeWidth(22.0),
                                                   height: getRelativeWidth(22.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 11.0,
                                                                       topRight: 11.0,
                                                                       bottomLeft: 11.0,
                                                                       bottomRight: 11.0)
                                                    .fill(ColorConstants.Bluegray101))
                                            .padding(.bottom, getRelativeHeight(10.0))
                                            .padding(.horizontal, getRelativeWidth(2.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(26.0),
                                               height: getRelativeHeight(34.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                   bottomLeft: 10.0,
                                                                   bottomRight: 10.0))
                                        Text(StringConstants.kLblClinicNumber1)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(8.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black905)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(61.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                    }
                                    .frame(width: getRelativeWidth(90.0),
                                           height: getRelativeHeight(34.0), alignment: .top)
                                    .padding(.bottom, getRelativeHeight(19.0))
                                    Spacer()
                                    HStack {
                                        ZStack(alignment: .center) {
                                            Image("img_vector_cyan_600_34x26")
                                                .resizable()
                                                .frame(width: getRelativeWidth(26.0),
                                                       height: getRelativeHeight(34.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 10.0,
                                                                           topRight: 10.0,
                                                                           bottomLeft: 10.0,
                                                                           bottomRight: 10.0))
                                            VStack {
                                                Image("img_festivallogo1")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(22.0),
                                                           height: getRelativeWidth(22.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipShape(Circle())
                                                    .clipShape(Circle())
                                            }
                                            .frame(width: getRelativeWidth(22.0),
                                                   height: getRelativeWidth(22.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 11.0,
                                                                       topRight: 11.0,
                                                                       bottomLeft: 11.0,
                                                                       bottomRight: 11.0)
                                                    .fill(ColorConstants.Bluegray101))
                                            .padding(.bottom, getRelativeHeight(10.0))
                                            .padding(.horizontal, getRelativeWidth(2.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(26.0),
                                               height: getRelativeHeight(34.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                   bottomLeft: 10.0,
                                                                   bottomRight: 10.0))
                                        Text(StringConstants.kLblClinicNumber2)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(8.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black905)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(63.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                    }
                                    .frame(width: getRelativeWidth(92.0),
                                           height: getRelativeHeight(34.0), alignment: .bottom)
                                    .padding(.top, getRelativeHeight(19.0))
                                    .padding(.leading, getRelativeWidth(140.0))
                                }
                                .frame(width: getRelativeWidth(322.0),
                                       height: getRelativeHeight(53.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.horizontal, getRelativeWidth(23.0))
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(136.0), alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(305.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(441.0),
                               alignment: .leading)
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(441.0),
                           alignment: .topLeading)
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
                            Divider()
                                .frame(width: getRelativeWidth(60.0),
                                       height: getRelativeHeight(4.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(ColorConstants.Gray900))
                                .padding(.top, getRelativeHeight(11.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                            HStack {
                                TextField(StringConstants.kMsgSearchForClin,
                                          text: $landingpagefiltersoffViewModel.group105Text)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Gray500)
                                    .padding()
                            }
                            .onTapGesture {
                                landingpagefiltersoffViewModel
                                    .nextScreen = "LandingpageCliniclistviewView"
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(35.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.Bluegray50))
                            .padding(.top, getRelativeHeight(27.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            HStack {
                                HStack {
                                    Text(StringConstants.kLblGender)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black90099)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(45.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                    Image("img_vector_black_901")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(3.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(9.0))
                                    Text(StringConstants.kLblServices)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black90099)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(48.0))
                                    Image("img_vector_black_901")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(3.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(10.0))
                                }
                                .frame(width: getRelativeWidth(177.0),
                                       height: getRelativeHeight(18.0), alignment: .center)
                                Spacer()
                                HStack {
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
                                    Image("img_sortamountdow")
                                        .resizable()
                                        .frame(width: getRelativeWidth(16.0),
                                               height: getRelativeHeight(14.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(53.0))
                                        .onTapGesture {
                                            landingpagefiltersoffViewModel
                                                .nextScreen = "Sortby1View"
                                        }
                                }
                                .frame(width: getRelativeWidth(103.0),
                                       height: getRelativeHeight(18.0), alignment: .center)
                            }
                            .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(18.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(26.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            Divider()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(3.0), alignment: .leading)
                                .background(ColorConstants.Cyan600)
                                .padding(.top, getRelativeHeight(13.0))
                            ZStack(alignment: .leading) {
                                Image("img_101789276591")
                                    .resizable()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(130.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0))
                                VStack {
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
                                        .padding(.vertical, getRelativeHeight(103.0))
                                        .padding(.horizontal, getRelativeWidth(18.0))
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
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(130.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(14.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            HStack {
                                Group {
                                    Text(StringConstants.kLblAesthetics)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(13.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black905)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(70.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(3.0),
                                               height: getRelativeWidth(3.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                   bottomLeft: 1.5,
                                                                   bottomRight: 1.5)
                                                .fill(ColorConstants.Gray701))
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.bottom, getRelativeHeight(9.0))
                                        .padding(.leading, getRelativeWidth(26.0))
                                    Image("img_female1363")
                                        .resizable()
                                        .frame(width: getRelativeWidth(9.0),
                                               height: getRelativeHeight(14.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.bottom, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(9.0))
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
                                        .padding(.leading, getRelativeWidth(5.0))
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(3.0),
                                               height: getRelativeWidth(3.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                   bottomLeft: 1.5,
                                                                   bottomRight: 1.5)
                                                .fill(ColorConstants.Gray701))
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.bottom, getRelativeHeight(9.0))
                                        .padding(.leading, getRelativeWidth(11.0))
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
                                        .padding(.leading, getRelativeWidth(10.0))
                                    Image("img_star")
                                        .resizable()
                                        .frame(width: getRelativeWidth(12.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.bottom, getRelativeHeight(5.0))
                                        .padding(.leading, getRelativeWidth(4.0))
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(3.0),
                                               height: getRelativeWidth(3.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                   bottomLeft: 1.5,
                                                                   bottomRight: 1.5)
                                                .fill(ColorConstants.Gray701))
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.bottom, getRelativeHeight(9.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                                Group {
                                    Image("img_group101")
                                        .resizable()
                                        .frame(width: getRelativeWidth(29.0),
                                               height: getRelativeHeight(13.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.bottom, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                    Spacer()
                                }
                            }
                            .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            VStack {
                                HStack(spacing: 0) {
                                    TextField(StringConstants.kMsgPrpBotoxLip,
                                              text: $landingpagefiltersoffViewModel.group188Text)
                                        .font(FontScheme
                                            .kDMSansRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray901)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(32.0), alignment: .center)
                                Divider()
                                    .background(ColorConstants.Gray901)
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(32.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            ZStack(alignment: .leading) {
                                Image("img_101789276591")
                                    .resizable()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(130.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0))
                                VStack {
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
                                        .padding(.vertical, getRelativeHeight(103.0))
                                        .padding(.horizontal, getRelativeWidth(18.0))
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
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(130.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                        }
                        Group {
                            HStack {
                                Group {
                                    Text(StringConstants.kLblAlBiraaClinic)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(13.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black905)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(92.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(3.0),
                                               height: getRelativeWidth(3.0), alignment: .bottom)
                                        .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                   bottomLeft: 1.5,
                                                                   bottomRight: 1.5)
                                                .fill(ColorConstants.Gray701))
                                        .padding(.top, getRelativeHeight(10.0))
                                        .padding(.bottom, getRelativeHeight(9.0))
                                        .padding(.leading, getRelativeWidth(6.0))
                                    Image("img_female1363")
                                        .resizable()
                                        .frame(width: getRelativeWidth(9.0),
                                               height: getRelativeHeight(14.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(7.0))
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
                                        .padding(.leading, getRelativeWidth(5.0))
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(3.0),
                                               height: getRelativeWidth(3.0), alignment: .bottom)
                                        .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                   bottomLeft: 1.5,
                                                                   bottomRight: 1.5)
                                                .fill(ColorConstants.Gray701))
                                        .padding(.top, getRelativeHeight(10.0))
                                        .padding(.bottom, getRelativeHeight(9.0))
                                        .padding(.leading, getRelativeWidth(11.0))
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
                                        .padding(.leading, getRelativeWidth(10.0))
                                    Image("img_star")
                                        .resizable()
                                        .frame(width: getRelativeWidth(12.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(4.0))
                                        .padding(.bottom, getRelativeHeight(5.0))
                                        .padding(.leading, getRelativeWidth(4.0))
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(3.0),
                                               height: getRelativeWidth(3.0), alignment: .bottom)
                                        .background(RoundedCorners(topLeft: 1.5, topRight: 1.5,
                                                                   bottomLeft: 1.5,
                                                                   bottomRight: 1.5)
                                                .fill(ColorConstants.Gray701))
                                        .padding(.top, getRelativeHeight(10.0))
                                        .padding(.bottom, getRelativeHeight(9.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                                Group {
                                    Image("img_group101")
                                        .resizable()
                                        .frame(width: getRelativeWidth(29.0),
                                               height: getRelativeHeight(13.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                    Spacer()
                                }
                            }
                            .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(22.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            VStack {
                                HStack(spacing: 0) {
                                    TextField(StringConstants.kMsgPrpBotoxLip,
                                              text: $landingpagefiltersoffViewModel.group190Text)
                                        .font(FontScheme
                                            .kDMSansRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray901)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(33.0), alignment: .center)
                                Divider()
                                    .background(ColorConstants.Gray901)
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(33.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblViewAll)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .fontWeight(.medium)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.Gray900))
                                        .padding(.vertical, getRelativeHeight(15.0))
                                        .padding(.horizontal, getRelativeWidth(15.0))
                                }
                            })
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.Gray900))
                            .padding(.vertical, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(654.0),
                           alignment: .bottomLeading)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0)
                        .fill(ColorConstants.WhiteA700))
                    .shadow(color: ColorConstants.Black90019, radius: 15, x: 0, y: -5)
                    .padding(.top, getRelativeHeight(151.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: LandingpageCliniclistviewView(),
                                   tag: "LandingpageCliniclistviewView",
                                   selection: $landingpagefiltersoffViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: Sortby1View(),
                                   tag: "Sortby1View",
                                   selection: $landingpagefiltersoffViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ServicefilterView(),
                                   tag: "ServicefilterView",
                                   selection: $landingpagefiltersoffViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LandingpagemapviewView(),
                                   tag: "LandingpagemapviewView",
                                   selection: $landingpagefiltersoffViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MenuView(),
                                   tag: "MenuView",
                                   selection: $landingpagefiltersoffViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: CityfiltersView(),
                                   tag: "CityfiltersView",
                                   selection: $landingpagefiltersoffViewModel.nextScreen,
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

struct LandingpagefiltersoffView_Previews: PreviewProvider {
    static var previews: some View {
        LandingpagefiltersoffView()
    }
}
