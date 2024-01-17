import SwiftUI

struct LandingDiscoverView: View {
    @StateObject var landingDiscoverViewModel = LandingDiscoverViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            HStack {
                                Image("img_unitedarabemi")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeHeight(13.0), alignment: .center)
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
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(6.0))
                                Image("img_vector_gray_901_3x6")
                                    .resizable()
                                    .frame(width: getRelativeWidth(6.0),
                                           height: getRelativeHeight(3.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(6.0))
                            }
                            .frame(width: getRelativeWidth(82.0), height: getRelativeHeight(21.0),
                                   alignment: .top)
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.bottom, getRelativeHeight(6.0))
                            Spacer()
                            Image("img_hamburgermenu")
                                .resizable()
                                .frame(width: getRelativeWidth(33.0),
                                       height: getRelativeWidth(33.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    landingDiscoverViewModel.nextScreen = "MenuView"
                                }
                        }
                        .frame(width: getRelativeWidth(202.0), height: getRelativeHeight(33.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(154.0))
                        .padding(.trailing, getRelativeWidth(38.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(77.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    .shadow(color: ColorConstants.Black90019, radius: 15, x: 0, y: 5)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                ZStack(alignment: .center) {
                                    ZStack(alignment: .trailing) {
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kLblReferAFriend)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(113.0),
                                                       height: getRelativeHeight(24.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(13.0))
                                                .padding(.horizontal, getRelativeWidth(14.0))
                                            Text(StringConstants.kMsgLoremIpsumDol7)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(165.0),
                                                       height: getRelativeHeight(18.0),
                                                       alignment: .topLeading)
                                                .padding(.horizontal, getRelativeWidth(14.0))
                                            HStack {
                                                Image("img_vector_gray_500")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(12.0),
                                                           height: getRelativeWidth(12.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.top, getRelativeHeight(9.0))
                                                    .padding(.bottom, getRelativeHeight(8.0))
                                                    .padding(.leading, getRelativeWidth(14.0))
                                                Text(StringConstants.kLblMyReferrals2)
                                                    .font(FontScheme
                                                        .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(72.0),
                                                           height: getRelativeHeight(18.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(6.0))
                                                    .padding(.bottom, getRelativeHeight(5.0))
                                                    .padding(.leading, getRelativeWidth(5.0))
                                            }
                                            .frame(width: getRelativeWidth(118.0),
                                                   height: getRelativeHeight(30.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                       bottomLeft: 5.0,
                                                                       bottomRight: 5.0)
                                                    .fill(ColorConstants.WhiteA700))
                                            .padding(.top, getRelativeHeight(13.0))
                                            .padding(.bottom, getRelativeHeight(14.0))
                                            .padding(.horizontal, getRelativeWidth(14.0))
                                        }
                                        .frame(width: getRelativeWidth(362.0),
                                               height: getRelativeHeight(115.0),
                                               alignment: .topLeading)
                                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                   bottomLeft: 10.0,
                                                                   bottomRight: 10.0)
                                                .fill(ColorConstants.Cyan600))
                                        .padding(.bottom, getRelativeHeight(30.14))
                                        Image("img_layer2_gray_900")
                                            .resizable()
                                            .frame(width: getRelativeWidth(112.0),
                                                   height: getRelativeHeight(156.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(217.98))
                                            .padding(.trailing, getRelativeWidth(32.02))
                                        HStack {
                                            Image("img_vector_gray_500_6x11")
                                                .resizable()
                                                .frame(width: getRelativeWidth(11.0),
                                                       height: getRelativeHeight(6.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(14.0))
                                            Text(StringConstants.kMsgShareMyReferr)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray500)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(126.0),
                                                       height: getRelativeHeight(18.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(7.0))
                                                .padding(.trailing, getRelativeWidth(14.0))
                                        }
                                        .frame(width: getRelativeWidth(174.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .bottomTrailing)
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                   bottomLeft: 5.0,
                                                                   bottomRight: 5.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.top, getRelativeHeight(81.86))
                                        .padding(.leading, getRelativeWidth(140.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(362.0),
                                           height: getRelativeHeight(156.0), alignment: .center)
                                    .padding(.bottom, getRelativeHeight(128.0))
                                    .padding(.horizontal, getRelativeWidth(1.0))
                                    Image("img_image10_143x320")
                                        .resizable()
                                        .frame(width: getRelativeWidth(320.0),
                                               height: getRelativeHeight(143.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0))
                                        .padding(.top, getRelativeHeight(141.86))
                                        .padding(.horizontal, getRelativeWidth(22.0))
                                    ZStack(alignment: .center) {
                                        Image("img_image40")
                                            .resizable()
                                            .frame(width: getRelativeWidth(364.0),
                                                   height: getRelativeHeight(143.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                       bottomLeft: 7.0,
                                                                       bottomRight: 7.0))
                                        Image("img_shape")
                                            .resizable()
                                            .frame(width: getRelativeWidth(58.0),
                                                   height: getRelativeWidth(58.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(42.75))
                                            .padding(.bottom, getRelativeHeight(42.25))
                                            .padding(.horizontal, getRelativeWidth(151.75))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(364.0),
                                           height: getRelativeHeight(143.0),
                                           alignment: .bottomLeading)
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0)
                                            .fill(ColorConstants.Bluegray101))
                                    .padding(.top, getRelativeHeight(141.86))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(364.0),
                                       height: getRelativeHeight(284.0), alignment: .center)
                                .padding(.horizontal, getRelativeWidth(15.0))
                                HStack {
                                    Text(StringConstants.kMsgBrowseByTopR)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(171.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    HStack {
                                        Text(StringConstants.kLblViewMore)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(64.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                        Image("img_arrowright_black_905")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(8.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(5.0))
                                    }
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(18.0), alignment: .top)
                                }
                                .frame(width: getRelativeWidth(362.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                Carouselitem2Cell()
                                                    .onTapGesture {
                                                        landingDiscoverViewModel
                                                            .nextScreen =
                                                            "LandingpageCliniclistviewView"
                                                    }
                                            }
                                        }
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                HStack {
                                    Text(StringConstants.kMsgTopRatedFace)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(168.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    HStack {
                                        Text(StringConstants.kLblViewMore)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(64.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                        Image("img_arrowright_black_905")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(8.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(5.0))
                                    }
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(18.0), alignment: .top)
                                }
                                .frame(width: getRelativeWidth(361.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 3, id: \.self) { index in
                                                ColumnrectangletwentynineCell()
                                                    .onTapGesture {
                                                        landingDiscoverViewModel
                                                            .nextScreen =
                                                            "LandingpageCliniclistviewView"
                                                    }
                                            }
                                        }
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                HStack {
                                    Text(StringConstants.kMsgTopRatedBody)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(170.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    HStack {
                                        Text(StringConstants.kLblViewMore)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(64.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                        Image("img_arrowright_black_905")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(8.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(5.0))
                                    }
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(18.0), alignment: .top)
                                }
                                .frame(width: getRelativeWidth(362.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(10.0))
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 3, id: \.self) { index in
                                                ColumnrectangletwentynineoneCell()
                                                    .onTapGesture {
                                                        landingDiscoverViewModel
                                                            .nextScreen =
                                                            "LandingpageCliniclistviewView"
                                                    }
                                            }
                                        }
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                HStack {
                                    Text(StringConstants.kMsgTopRatedHealt)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(228.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    HStack {
                                        Text(StringConstants.kLblViewMore)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(64.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                        Image("img_arrowright_black_905")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(8.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(5.0))
                                    }
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(18.0), alignment: .top)
                                }
                                .frame(width: getRelativeWidth(362.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(10.0))
                            }
                            Group {
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 3, id: \.self) { index in
                                                ColumnrectangletwentyninefiveCell()
                                                    .onTapGesture {
                                                        landingDiscoverViewModel
                                                            .nextScreen =
                                                            "LandingpageCliniclistviewView"
                                                    }
                                            }
                                        }
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                VStack {
                                    HStack {
                                        Text(StringConstants.kLblSpecialOffers)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(110.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        HStack {
                                            Text(StringConstants.kLblViewMore)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray901)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(64.0),
                                                       height: getRelativeHeight(18.0),
                                                       alignment: .topLeading)
                                            Image("img_arrowright_black_905")
                                                .resizable()
                                                .frame(width: getRelativeWidth(9.0),
                                                       height: getRelativeHeight(8.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(5.0))
                                        }
                                        .frame(width: getRelativeWidth(78.0),
                                               height: getRelativeHeight(18.0), alignment: .top)
                                        .padding(.vertical, getRelativeHeight(1.0))
                                    }
                                    .frame(width: getRelativeWidth(362.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(25.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    StackrectanglethirtysevenCell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(363.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                    ZStack(alignment: .bottomLeading) {
                                        Image("img_101789276596")
                                            .resizable()
                                            .frame(width: getRelativeWidth(362.0),
                                                   height: getRelativeHeight(170.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0))
                                        HStack {
                                            Image("img_vector_cyan_600_11x11")
                                                .resizable()
                                                .frame(width: getRelativeWidth(11.0),
                                                       height: getRelativeWidth(11.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(122.0))
                                            Text(StringConstants.kMsgDiamondMembers)
                                                .font(FontScheme
                                                    .kInterRegular(size: getRelativeHeight(9.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Cyan600)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(101.0),
                                                       height: getRelativeHeight(11.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(4.0))
                                                .padding(.trailing, getRelativeWidth(123.0))
                                        }
                                        .frame(width: getRelativeWidth(362.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .bottomLeading)
                                        .overlay(RoundedCorners(bottomLeft: 7.0, bottomRight: 7.0)
                                            .stroke(ColorConstants.Black90019, lineWidth: 1))
                                        .background(RoundedCorners(bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.top, getRelativeHeight(140.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(362.0),
                                           height: getRelativeHeight(170.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(14.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                    ZStack(alignment: .trailing) {
                                        Image("img_101789276594")
                                            .resizable()
                                            .frame(width: getRelativeWidth(174.0),
                                                   height: getRelativeHeight(194.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0))
                                            .padding(.trailing, getRelativeWidth(188.0))
                                        Image("img_101789276595")
                                            .resizable()
                                            .frame(width: getRelativeWidth(174.0),
                                                   height: getRelativeHeight(194.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0))
                                            .padding(.leading, getRelativeWidth(188.0))
                                        HStack {
                                            HStack {
                                                Image("img_vector_cyan_600_11x11")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(11.0),
                                                           height: getRelativeWidth(11.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.leading, getRelativeWidth(28.0))
                                                Text(StringConstants.kMsgDiamondMembers)
                                                    .font(FontScheme
                                                        .kInterRegular(size: getRelativeHeight(9.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Cyan600)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(101.0),
                                                           height: getRelativeHeight(11.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(4.0))
                                                    .padding(.trailing, getRelativeWidth(29.0))
                                            }
                                            .frame(width: getRelativeWidth(174.0),
                                                   height: getRelativeHeight(30.0),
                                                   alignment: .center)
                                            .overlay(RoundedCorners(bottomLeft: 7.0,
                                                                    bottomRight: 7.0)
                                                    .stroke(ColorConstants.Black90019,
                                                            lineWidth: 1))
                                            .background(RoundedCorners(bottomLeft: 7.0,
                                                                       bottomRight: 7.0)
                                                    .fill(ColorConstants
                                                        .WhiteA700))
                                            HStack {
                                                Image("img_vector_cyan_600_11x11")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(11.0),
                                                           height: getRelativeWidth(11.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.leading, getRelativeWidth(28.0))
                                                Text(StringConstants.kMsgDiamondMembers)
                                                    .font(FontScheme
                                                        .kInterRegular(size: getRelativeHeight(9.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Cyan600)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(101.0),
                                                           height: getRelativeHeight(11.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(4.0))
                                                    .padding(.trailing, getRelativeWidth(29.0))
                                            }
                                            .frame(width: getRelativeWidth(174.0),
                                                   height: getRelativeHeight(30.0),
                                                   alignment: .center)
                                            .overlay(RoundedCorners(bottomLeft: 7.0,
                                                                    bottomRight: 7.0)
                                                    .stroke(ColorConstants.Black90019,
                                                            lineWidth: 1))
                                            .background(RoundedCorners(bottomLeft: 7.0,
                                                                       bottomRight: 7.0)
                                                    .fill(ColorConstants
                                                        .WhiteA700))
                                            .padding(.leading, getRelativeWidth(14.0))
                                        }
                                        .frame(width: getRelativeWidth(362.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .bottomLeading)
                                        .padding(.top, getRelativeHeight(164.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(362.0),
                                           height: getRelativeHeight(194.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(14.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(698.0), alignment: .center)
                                .background(ColorConstants.WhiteA70099)
                                .padding(.top, getRelativeHeight(21.0))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Bluegray50)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CityfiltersView(),
                                   tag: "CityfiltersView",
                                   selection: $landingDiscoverViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LandingpageCliniclistviewView(),
                                   tag: "LandingpageCliniclistviewView",
                                   selection: $landingDiscoverViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MenuView(),
                                   tag: "MenuView",
                                   selection: $landingDiscoverViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Bluegray50)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct LandingDiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        LandingDiscoverView()
    }
}
