import SwiftUI

struct CityfiltersView: View {
    @StateObject var cityfiltersViewModel = CityfiltersViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        HStack {
                            Text(StringConstants.kLbl)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .padding(.horizontal, getRelativeWidth(8.0))
                                .foregroundColor(ColorConstants.Gray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(25.0),
                                       height: getRelativeWidth(25.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                        bottomLeft: 12.5, bottomRight: 12.5)
                                        .stroke(ColorConstants.Black9004c,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                           bottomLeft: 12.5, bottomRight: 12.5)
                                        .fill(Color.clear.opacity(0.7)))
                            Spacer()
                            Text(StringConstants.kLblSelectACity)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(99.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack(alignment: .topTrailing) {
                            VStack {
                                HStack(spacing: 0) {
                                    Spacer()
                                    Image("img_vector_gray_901")
                                        .resizable()
                                        .frame(width: getRelativeWidth(13.0),
                                               height: getRelativeWidth(13.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(12.0))
                                        .padding(.trailing, getRelativeWidth(21.0))
                                    TextField(StringConstants.kMsgShowAllClinic,
                                              text: $cityfiltersViewModel.group204Text)
                                        .font(FontScheme
                                            .kDMSansRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Black900Cc)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(32.0), alignment: .leading)
                                Divider()
                                    .background(ColorConstants.Black900Cc)
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(32.0),
                                   alignment: .leading)
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(13.0),
                                       height: getRelativeWidth(13.0), alignment: .topTrailing)
                                .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                        bottomLeft: 2.0,
                                                        bottomRight: 2.0)
                                        .stroke(ColorConstants.Gray701,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.bottom, getRelativeHeight(15.55))
                                .padding(.leading, getRelativeWidth(342.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(32.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(15.0))
                        ZStack(alignment: .topTrailing) {
                            VStack {
                                HStack(spacing: 0) {
                                    Spacer()
                                    Image("img_vector_gray_901_15x15")
                                        .resizable()
                                        .frame(width: getRelativeWidth(15.0),
                                               height: getRelativeWidth(15.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(1.0))
                                        .padding(.leading, getRelativeWidth(12.0))
                                        .padding(.trailing, getRelativeWidth(19.0))
                                    TextField(StringConstants.kMsgUseMyCurrent,
                                              text: $cityfiltersViewModel.group202Text)
                                        .font(FontScheme
                                            .kDMSansRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Black900Cc)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(31.0), alignment: .leading)
                                Divider()
                                    .background(ColorConstants.Black900Cc)
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(31.0),
                                   alignment: .leading)
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(13.0),
                                       height: getRelativeWidth(13.0), alignment: .topTrailing)
                                .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                        bottomLeft: 2.0,
                                                        bottomRight: 2.0)
                                        .stroke(ColorConstants.Gray701,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.bottom, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(342.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(31.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(11.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                        ZStack(alignment: .topTrailing) {
                            VStack {
                                HStack(spacing: 0) {
                                    Spacer()
                                    Image("img_unitedarabemi")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(13.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(2.0))
                                        .padding(.leading, getRelativeWidth(9.0))
                                        .padding(.trailing, getRelativeWidth(18.0))
                                    TextField(StringConstants.kLblAbuDhabi,
                                              text: $cityfiltersViewModel.group206Text)
                                        .font(FontScheme
                                            .kDMSansRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Black900Cc)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(32.0), alignment: .leading)
                                Divider()
                                    .background(ColorConstants.Black900Cc)
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(32.0),
                                   alignment: .leading)
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(13.0),
                                       height: getRelativeWidth(13.0), alignment: .topTrailing)
                                .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                        bottomLeft: 2.0,
                                                        bottomRight: 2.0)
                                        .stroke(ColorConstants.Gray701,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.bottom, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(342.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(33.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(11.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                        ZStack(alignment: .topTrailing) {
                            VStack {
                                HStack(spacing: 0) {
                                    Spacer()
                                    Image("img_unitedarabemi")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(13.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(2.0))
                                        .padding(.leading, getRelativeWidth(9.0))
                                        .padding(.trailing, getRelativeWidth(18.0))
                                    TextField(StringConstants.kLblDubai,
                                              text: $cityfiltersViewModel.group208Text)
                                        .font(FontScheme
                                            .kDMSansRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Black900Cc)
                                        .padding()
                                }
                                .onTapGesture {
                                    cityfiltersViewModel.nextScreen = "Landingpage1View"
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(32.0), alignment: .leading)
                                Divider()
                                    .background(ColorConstants.Black900Cc)
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(32.0),
                                   alignment: .leading)
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(13.0),
                                       height: getRelativeWidth(13.0), alignment: .topTrailing)
                                .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                        bottomLeft: 2.0,
                                                        bottomRight: 2.0)
                                        .stroke(ColorConstants.Gray701,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.bottom, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(342.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(33.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                        ZStack(alignment: .center) {
                            Image("img_layer2_bluegray_101")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(545.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            VStack(alignment: .leading, spacing: 0) {
                                ZStack(alignment: .topTrailing) {
                                    VStack {
                                        HStack(spacing: 0) {
                                            Spacer()
                                            Image("img_unitedarabemi")
                                                .resizable()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.vertical, getRelativeHeight(1.0))
                                                .padding(.leading, getRelativeWidth(9.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            TextField(StringConstants.kLblSharjah,
                                                      text: $cityfiltersViewModel.group192Text)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Black900Cc)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(31.0),
                                               alignment: .bottomLeading)
                                        Divider()
                                            .background(ColorConstants.Black900Cc)
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(31.0),
                                           alignment: .bottomLeading)
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(13.0),
                                               height: getRelativeWidth(13.0),
                                               alignment: .topTrailing)
                                        .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                bottomLeft: 2.0, bottomRight: 2.0)
                                                .stroke(ColorConstants.Gray701,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                   bottomLeft: 2.0,
                                                                   bottomRight: 2.0)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.bottom, getRelativeHeight(17.0))
                                        .padding(.leading, getRelativeWidth(342.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(33.0), alignment: .leading)
                                ZStack(alignment: .topTrailing) {
                                    VStack {
                                        HStack(spacing: 0) {
                                            Spacer()
                                            Image("img_unitedarabemi")
                                                .resizable()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.vertical, getRelativeHeight(1.0))
                                                .padding(.leading, getRelativeWidth(9.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            TextField(StringConstants.kLblAjman,
                                                      text: $cityfiltersViewModel.group194Text)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Black900Cc)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(31.0),
                                               alignment: .bottomLeading)
                                        Divider()
                                            .background(ColorConstants.Black900Cc)
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(31.0),
                                           alignment: .bottomLeading)
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(13.0),
                                               height: getRelativeWidth(13.0),
                                               alignment: .topTrailing)
                                        .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                bottomLeft: 2.0, bottomRight: 2.0)
                                                .stroke(ColorConstants.Gray701,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                   bottomLeft: 2.0,
                                                                   bottomRight: 2.0)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.bottom, getRelativeHeight(17.0))
                                        .padding(.leading, getRelativeWidth(342.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(33.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(10.0))
                                ZStack(alignment: .topTrailing) {
                                    VStack {
                                        HStack(spacing: 0) {
                                            Spacer()
                                            Image("img_unitedarabemi")
                                                .resizable()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.vertical, getRelativeHeight(2.0))
                                                .padding(.leading, getRelativeWidth(9.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            TextField(StringConstants.kLblRasAlKhaimah,
                                                      text: $cityfiltersViewModel.group196Text)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Black900Cc)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(32.0), alignment: .leading)
                                        Divider()
                                            .background(ColorConstants.Black900Cc)
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(32.0), alignment: .leading)
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(13.0),
                                               height: getRelativeWidth(13.0),
                                               alignment: .topTrailing)
                                        .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                bottomLeft: 2.0, bottomRight: 2.0)
                                                .stroke(ColorConstants.Gray701,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                   bottomLeft: 2.0,
                                                                   bottomRight: 2.0)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.bottom, getRelativeHeight(17.0))
                                        .padding(.leading, getRelativeWidth(342.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(33.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(10.0))
                                ZStack(alignment: .topTrailing) {
                                    VStack {
                                        HStack(spacing: 0) {
                                            Spacer()
                                            Image("img_unitedarabemi")
                                                .resizable()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.vertical, getRelativeHeight(1.0))
                                                .padding(.leading, getRelativeWidth(9.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            TextField(StringConstants.kLblFujairah,
                                                      text: $cityfiltersViewModel.group198Text)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Black900Cc)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(31.0),
                                               alignment: .bottomLeading)
                                        Divider()
                                            .background(ColorConstants.Black900Cc)
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(31.0),
                                           alignment: .bottomLeading)
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(13.0),
                                               height: getRelativeWidth(13.0),
                                               alignment: .topTrailing)
                                        .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                bottomLeft: 2.0, bottomRight: 2.0)
                                                .stroke(ColorConstants.Gray701,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                   bottomLeft: 2.0,
                                                                   bottomRight: 2.0)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.bottom, getRelativeHeight(17.0))
                                        .padding(.leading, getRelativeWidth(342.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(33.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(10.0))
                                ZStack(alignment: .topTrailing) {
                                    VStack {
                                        HStack(spacing: 0) {
                                            Spacer()
                                            Image("img_unitedarabemi")
                                                .resizable()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.vertical, getRelativeHeight(1.0))
                                                .padding(.leading, getRelativeWidth(9.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            TextField(StringConstants.kLblUmmAlQuwain,
                                                      text: $cityfiltersViewModel.group200Text)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Black900Cc)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(31.0),
                                               alignment: .bottomLeading)
                                        Divider()
                                            .background(ColorConstants.Black900Cc)
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(31.0),
                                           alignment: .bottomLeading)
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(13.0),
                                               height: getRelativeWidth(13.0),
                                               alignment: .topTrailing)
                                        .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                bottomLeft: 2.0, bottomRight: 2.0)
                                                .stroke(ColorConstants.Gray701,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                   bottomLeft: 2.0,
                                                                   bottomRight: 2.0)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.bottom, getRelativeHeight(17.0))
                                        .padding(.leading, getRelativeWidth(342.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(33.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(10.0))
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(205.0),
                                   alignment: .center)
                            .padding(.bottom, getRelativeHeight(340.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(545.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(10.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(716.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.top, getRelativeHeight(36.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(27.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: Landingpage1View(),
                                   tag: "Landingpage1View",
                                   selection: $cityfiltersViewModel.nextScreen,
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

struct CityfiltersView_Previews: PreviewProvider {
    static var previews: some View {
        CityfiltersView()
    }
}
