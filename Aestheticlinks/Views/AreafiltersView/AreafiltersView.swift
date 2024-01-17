import SwiftUI

struct AreafiltersView: View {
    @StateObject var areafiltersViewModel = AreafiltersViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                            .frame(width: getRelativeWidth(25.0), height: getRelativeWidth(25.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 12.5, topRight: 12.5, bottomLeft: 12.5,
                                                    bottomRight: 12.5)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                       bottomLeft: 12.5, bottomRight: 12.5)
                                    .fill(Color.clear.opacity(0.7)))
                        Spacer()
                        Text(StringConstants.kMsgSelectAnArea)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(200.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(241.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                }
                .frame(width: getRelativeWidth(241.0), height: getRelativeHeight(25.0),
                       alignment: .leading)
                .padding(.horizontal, getRelativeWidth(15.0))
                VStack(alignment: .leading, spacing: 0) {
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
                                      text: $areafiltersViewModel.grouptwelveText)
                                .font(FontScheme.kDMSansRegular(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.Black900Cc)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(31.0),
                               alignment: .center)
                        Divider()
                            .background(ColorConstants.Black900Cc)
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(31.0),
                           alignment: .center)
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
                                TextField(StringConstants.kLblAlBarsha,
                                          text: $areafiltersViewModel.group304Text)
                                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Black900Cc)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(32.0),
                                   alignment: .leading)
                            Divider()
                                .background(ColorConstants.Black900Cc)
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(32.0),
                               alignment: .leading)
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(13.0), height: getRelativeWidth(13.0),
                                   alignment: .topTrailing)
                            .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                    bottomRight: 2.0)
                                    .stroke(ColorConstants.Gray701,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                       bottomRight: 2.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.bottom, getRelativeHeight(17.0))
                            .padding(.leading, getRelativeWidth(342.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(33.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(12.0))
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
                                TextField(StringConstants.kLblAlSafa,
                                          text: $areafiltersViewModel.group306Text)
                                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Black900Cc)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(32.0),
                                   alignment: .leading)
                            Divider()
                                .background(ColorConstants.Black900Cc)
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(32.0),
                               alignment: .leading)
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(13.0), height: getRelativeWidth(13.0),
                                   alignment: .topTrailing)
                            .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                    bottomRight: 2.0)
                                    .stroke(ColorConstants.Gray701,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                       bottomRight: 2.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.bottom, getRelativeHeight(17.0))
                            .padding(.leading, getRelativeWidth(342.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(33.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(10.0))
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
                                    .padding(.vertical, getRelativeHeight(1.0))
                                    .padding(.leading, getRelativeWidth(9.0))
                                    .padding(.trailing, getRelativeWidth(18.0))
                                TextField(StringConstants.kLblAlQuoz,
                                          text: $areafiltersViewModel.group308Text)
                                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Black900Cc)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(31.0),
                                   alignment: .bottomLeading)
                            Divider()
                                .background(ColorConstants.Black900Cc)
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(31.0),
                               alignment: .bottomLeading)
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(13.0), height: getRelativeWidth(13.0),
                                   alignment: .topTrailing)
                            .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                    bottomRight: 2.0)
                                    .stroke(ColorConstants.Gray701,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                       bottomRight: 2.0)
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
                            Group {
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
                                            TextField(StringConstants.kLblAlRigga,
                                                      text: $areafiltersViewModel.group278Text)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Black900Cc)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .bottomLeading)
                                        Divider()
                                            .background(ColorConstants.Black900Cc)
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(30.0),
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
                                                .padding(.vertical, getRelativeHeight(2.0))
                                                .padding(.leading, getRelativeWidth(9.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            TextField(StringConstants.kLblAlNahda,
                                                      text: $areafiltersViewModel.group280Text)
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
                                                .padding(.vertical, getRelativeHeight(2.0))
                                                .padding(.leading, getRelativeWidth(9.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            TextField(StringConstants.kLblAlSeef,
                                                      text: $areafiltersViewModel.group282Text)
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
                                                .padding(.vertical, getRelativeHeight(2.0))
                                                .padding(.leading, getRelativeWidth(9.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            TextField(StringConstants.kLblAlKarama,
                                                      text: $areafiltersViewModel.group284Text)
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
                                                .padding(.vertical, getRelativeHeight(2.0))
                                                .padding(.leading, getRelativeWidth(9.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            TextField(StringConstants.kLblAlMina,
                                                      text: $areafiltersViewModel.group286Text)
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
                                                .padding(.vertical, getRelativeHeight(2.0))
                                                .padding(.leading, getRelativeWidth(9.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            TextField(StringConstants.kLblAlMuteena,
                                                      text: $areafiltersViewModel.group288Text)
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
                                                .padding(.vertical, getRelativeHeight(2.0))
                                                .padding(.leading, getRelativeWidth(9.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            TextField(StringConstants.kLblAlGhubaiba,
                                                      text: $areafiltersViewModel.group290Text)
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
                                            TextField(StringConstants.kLblBarshaHeights,
                                                      text: $areafiltersViewModel.group292Text)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Black900Cc)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .bottomLeading)
                                        Divider()
                                            .background(ColorConstants.Black900Cc)
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(30.0),
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
                            Group {
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
                                            TextField(StringConstants.kLblDubaiMarina,
                                                      text: $areafiltersViewModel.group294Text)
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
                                            TextField(StringConstants.kMsgDubaiSportsCi,
                                                      text: $areafiltersViewModel.group296Text)
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
                                            TextField(StringConstants.kMsgJumeirahLakeT,
                                                      text: $areafiltersViewModel.group298Text)
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
                                            TextField(StringConstants.kMsgJumeirahVillag,
                                                      text: $areafiltersViewModel.group300Text)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Black900Cc)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .bottomLeading)
                                        Divider()
                                            .background(ColorConstants.Black900Cc)
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(30.0),
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
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(506.0),
                               alignment: .center)
                        .padding(.bottom, getRelativeHeight(39.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(545.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(717.0),
                       alignment: .leading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(36.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(27.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct AreafiltersView_Previews: PreviewProvider {
    static var previews: some View {
        AreafiltersView()
    }
}
