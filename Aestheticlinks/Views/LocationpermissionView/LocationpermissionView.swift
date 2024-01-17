import SwiftUI

struct LocationpermissionView: View {
    @StateObject var locationpermissionViewModel = LocationpermissionViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text(StringConstants.kMsgAllowAppTo)
                        .font(FontScheme.kSFProTextSemibold(size: getRelativeHeight(17.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black905)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(149.0), height: getRelativeHeight(46.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(42.0))
                    Text(StringConstants.kMsgYourPreciseLo)
                        .font(FontScheme.kSFProTextRegular(size: getRelativeHeight(13.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black905)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(225.0), height: getRelativeHeight(63.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(6.0))
                }
                .frame(width: getRelativeWidth(238.0), height: getRelativeHeight(110.0),
                       alignment: .center)
                .cornerRadius(16.0)
                .padding(.top, getRelativeHeight(16.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                ZStack(alignment: .topLeading) {
                    Image("img_mapview")
                        .resizable()
                        .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(182.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    VStack {
                        HStack {
                            Spacer()
                            Image("img_vector_1")
                                .resizable()
                                .frame(width: getRelativeWidth(10.0),
                                       height: getRelativeHeight(9.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(6.0))
                                .padding(.leading, getRelativeWidth(10.0))
                                .padding(.trailing, getRelativeWidth(5.0))
                            TextField(StringConstants.kLblPreciseOn,
                                      text: $locationpermissionViewModel.preciseswitcheText)
                                .font(FontScheme.kSFProTextSemibold(size: getRelativeHeight(13.0)))
                                .foregroundColor(ColorConstants.LightBlueA700)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 11.28, topRight: 11.28,
                                                   bottomLeft: 11.28, bottomRight: 11.28)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(color: ColorConstants.Black9001e, radius: 8, x: 0, y: 3)
                        .padding(.trailing, getRelativeWidth(10.0))
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(12.0), height: getRelativeWidth(12.0),
                                   alignment: .trailing)
                            .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                    bottomRight: 6.0)
                                    .stroke(ColorConstants.WhiteA700,
                                            lineWidth: 3))
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0)
                                    .fill(ColorConstants.LightBlueA700))
                            .shadow(color: ColorConstants.Black9001e, radius: 12, x: 0, y: 8)
                            .padding(.top, getRelativeHeight(22.0))
                            .padding(.leading, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(146.0), height: getRelativeHeight(56.0),
                           alignment: .topLeading)
                    .padding(.bottom, getRelativeHeight(109.56))
                    .padding(.trailing, getRelativeWidth(116.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(182.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(8.0))
                Divider()
                    .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray80049)
                Text(StringConstants.kLblAllowOnce)
                    .font(FontScheme.kSFProTextRegular(size: getRelativeHeight(17.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.LightBlueA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(21.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(10.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                Divider()
                    .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray80049)
                    .padding(.top, getRelativeHeight(10.0))
                Text(StringConstants.kMsgAllowWhileUsi)
                    .font(FontScheme.kSFProTextRegular(size: getRelativeHeight(17.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.LightBlueA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(201.0), height: getRelativeHeight(21.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(11.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                Divider()
                    .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray80049)
                    .padding(.top, getRelativeHeight(9.0))
                Text(StringConstants.kLblDonTAllow)
                    .font(FontScheme.kSFProTextRegular(size: getRelativeHeight(17.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.LightBlueA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(21.0),
                           alignment: .topLeading)
                    .padding(.vertical, getRelativeHeight(10.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(443.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                       bottomRight: 16.0)
                    .fill(ColorConstants.WhiteA700E5))
            .shadow(radius: 4)
        }
        .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(443.0))
        .hideNavigationBar()
    }
}

struct LocationpermissionView_Previews: PreviewProvider {
    static var previews: some View {
        LocationpermissionView()
    }
}
