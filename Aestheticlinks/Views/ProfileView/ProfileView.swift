import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Group {
                                VStack {
                                    Text(StringConstants.kLblProfile)
                                        .font(FontScheme.kDMSansBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(43.0),
                                               height: getRelativeHeight(19.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(21.0))
                                        .padding(.horizontal, getRelativeWidth(15.0))
                                    HStack {
                                        Text(StringConstants.kLbl)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .padding(.horizontal, getRelativeWidth(8.0))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(25.0),
                                                   height: getRelativeWidth(25.0),
                                                   alignment: .center)
                                            .overlay(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                                    bottomLeft: 12.5,
                                                                    bottomRight: 12.5)
                                                    .stroke(ColorConstants.WhiteA700,
                                                            lineWidth: 1))
                                            .background(RoundedCorners(topLeft: 12.5,
                                                                       topRight: 12.5,
                                                                       bottomLeft: 12.5,
                                                                       bottomRight: 12.5)
                                                    .fill(Color.clear.opacity(0.7)))
                                            .padding(.bottom, getRelativeHeight(79.0))
                                        Image("img_ellipse1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(100.0),
                                                   height: getRelativeWidth(100.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .clipShape(Circle())
                                            .padding(.top, getRelativeHeight(4.0))
                                            .padding(.leading, getRelativeWidth(106.0))
                                    }
                                    .frame(width: getRelativeWidth(231.0),
                                           height: getRelativeHeight(104.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(14.0))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                                    Text(StringConstants.kMsgEmmanuelGallus)
                                        .font(FontScheme.kDMSansBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(133.0),
                                               height: getRelativeHeight(19.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(9.0))
                                        .padding(.horizontal, getRelativeWidth(15.0))
                                    Text(StringConstants.kLbl35005000)
                                        .font(FontScheme
                                            .kDMSansRegular(size: getRelativeHeight(8.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(45.0),
                                               height: getRelativeHeight(11.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(4.0))
                                        .padding(.horizontal, getRelativeWidth(15.0))
                                    Image("img_group117")
                                        .resizable()
                                        .frame(width: getRelativeWidth(206.0),
                                               height: getRelativeHeight(14.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(15.0))
                                    Text(StringConstants.kMsgGetMoreDiscou)
                                        .font(FontScheme
                                            .kDMSansRegular(size: getRelativeHeight(10.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(184.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(7.0))
                                        .padding(.horizontal, getRelativeWidth(15.0))
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(255.0), alignment: .leading)
                                .background(ColorConstants.Cyan600)
                                Text(StringConstants.kLblYourAccount)
                                    .font(FontScheme.kDMSansBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(157.0),
                                           height: getRelativeHeight(32.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(20.0))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                                HStack {
                                    HStack {
                                        Image("img_usersvgrepoco")
                                            .resizable()
                                            .frame(width: getRelativeWidth(15.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kMsgPersonalInform)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(133.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(19.0))
                                    }
                                    .frame(width: getRelativeWidth(167.0),
                                           height: getRelativeHeight(19.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(5.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(337.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black9004c)
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                HStack {
                                    HStack {
                                        Image("img_vector")
                                            .resizable()
                                            .frame(width: getRelativeWidth(16.0),
                                                   height: getRelativeHeight(11.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblCards)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(39.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(18.0))
                                    }
                                    .frame(width: getRelativeWidth(74.0),
                                           height: getRelativeHeight(19.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(5.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(337.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black9004c)
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                HStack {
                                    HStack {
                                        Image("img_location")
                                            .resizable()
                                            .frame(width: getRelativeWidth(15.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblSavedAddress)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(97.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(19.0))
                                    }
                                    .frame(width: getRelativeWidth(131.0),
                                           height: getRelativeHeight(20.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(5.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(6.0))
                                }
                                .frame(width: getRelativeWidth(337.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black9004c)
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                            }
                            Group {
                                HStack {
                                    HStack {
                                        Image("img_bellsvgrepoco")
                                            .resizable()
                                            .frame(width: getRelativeWidth(15.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblNotifications)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(82.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(19.0))
                                    }
                                    .frame(width: getRelativeWidth(116.0),
                                           height: getRelativeHeight(19.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(5.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(337.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black9004c)
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                HStack {
                                    HStack {
                                        Image("img_vector_cyan_600")
                                            .resizable()
                                            .frame(width: getRelativeWidth(17.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblMyAppointments)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(117.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(16.0))
                                    }
                                    .frame(width: getRelativeWidth(150.0),
                                           height: getRelativeHeight(21.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(5.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(6.0))
                                        .padding(.bottom, getRelativeHeight(4.0))
                                }
                                .frame(width: getRelativeWidth(336.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black9004c)
                                    .padding(.top, getRelativeHeight(11.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                HStack {
                                    HStack {
                                        Image("img_vector_cyan_600_14x16")
                                            .resizable()
                                            .frame(width: getRelativeWidth(16.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblMyFavorites)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(82.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(16.0))
                                    }
                                    .frame(width: getRelativeWidth(115.0),
                                           height: getRelativeHeight(19.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(5.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(4.0))
                                }
                                .frame(width: getRelativeWidth(335.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(14.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black9004c)
                                    .padding(.top, getRelativeHeight(11.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                HStack {
                                    HStack {
                                        Image("img_vector_cyan_600_16x16")
                                            .resizable()
                                            .frame(width: getRelativeWidth(16.0),
                                                   height: getRelativeWidth(16.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblMyReferrals)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(80.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(16.0))
                                    }
                                    .frame(width: getRelativeWidth(113.0),
                                           height: getRelativeHeight(19.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(5.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(4.0))
                                }
                                .frame(width: getRelativeWidth(335.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black9004c)
                                    .padding(.top, getRelativeHeight(11.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                            }
                            Group {
                                HStack {
                                    HStack {
                                        Image("img_vector_16x16")
                                            .resizable()
                                            .frame(width: getRelativeWidth(16.0),
                                                   height: getRelativeWidth(16.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblSupport)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(53.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(16.0))
                                    }
                                    .frame(width: getRelativeWidth(86.0),
                                           height: getRelativeHeight(19.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(5.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(4.0))
                                }
                                .frame(width: getRelativeWidth(335.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black9004c)
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                Text(StringConstants.kLblPreferences)
                                    .font(FontScheme.kDMSansBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(141.0),
                                           height: getRelativeHeight(32.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(19.0))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                                HStack {
                                    HStack {
                                        Image("img_internetsvgrep")
                                            .resizable()
                                            .frame(width: getRelativeWidth(15.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblLanguage)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(62.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(19.0))
                                    }
                                    .frame(width: getRelativeWidth(96.0),
                                           height: getRelativeHeight(19.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(5.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(4.0))
                                }
                                .frame(width: getRelativeWidth(337.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(22.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black9004c)
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                HStack {
                                    HStack {
                                        Image("img_location")
                                            .resizable()
                                            .frame(width: getRelativeWidth(15.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblCity)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(27.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(20.0))
                                    }
                                    .frame(width: getRelativeWidth(62.0),
                                           height: getRelativeHeight(22.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(5.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(7.0))
                                        .padding(.bottom, getRelativeHeight(4.0))
                                }
                                .frame(width: getRelativeWidth(337.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                                .padding(.top, getRelativeHeight(11.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black9004c)
                                    .padding(.top, getRelativeHeight(11.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                HStack {
                                    HStack {
                                        Image("img_vector_cyan_600_18x10")
                                            .resizable()
                                            .frame(width: getRelativeWidth(10.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblCurrency)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900Cc)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(60.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(21.0))
                                    }
                                    .frame(width: getRelativeWidth(92.0),
                                           height: getRelativeHeight(19.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(5.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(4.0))
                                }
                                .frame(width: getRelativeWidth(334.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(11.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                            }
                            Group {
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black9004c)
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CityfiltersView(),
                                   tag: "CityfiltersView",
                                   selection: $profileViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: PopupView(),
                                   tag: "PopupView",
                                   selection: $profileViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AppointmentshistoryView(),
                                   tag: "AppointmentshistoryView",
                                   selection: $profileViewModel.nextScreen,
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
