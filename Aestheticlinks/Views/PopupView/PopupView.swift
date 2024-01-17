import SwiftUI

struct PopupView: View {
    @StateObject var popupViewModel = PopupViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        ZStack(alignment: .bottomLeading) {
                            ZStack(alignment: .topTrailing) {
                                Image("img_layer2_gray_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(140.0),
                                           height: getRelativeHeight(159.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Button(action: {}, label: {
                                    Image("img_closesvgrepoc_white_a700")
                                })
                                .frame(width: getRelativeWidth(25.0),
                                       height: getRelativeWidth(25.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                        bottomLeft: 12.5, bottomRight: 12.5)
                                        .stroke(ColorConstants.WhiteA700,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                           bottomLeft: 12.5, bottomRight: 12.5)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.bottom, getRelativeHeight(79.0))
                                .padding(.leading, getRelativeWidth(96.66))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(121.0),
                                   alignment: .trailing)
                            .padding(.leading, getRelativeWidth(191.34))
                            Text(StringConstants.kMsgReferAFriend)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(232.0),
                                       height: getRelativeHeight(56.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(49.49))
                                .padding(.trailing, getRelativeWidth(100.0))
                        }
                        .hideNavigationBar()
                        .padding(.leading, getRelativeWidth(31.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(121.0),
                           alignment: .leading)
                    .background(ColorConstants.Cyan600)
                    Text(StringConstants.kLblShareYourCode)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(149.0), height: getRelativeHeight(27.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(22.0))
                        .padding(.horizontal, getRelativeWidth(31.0))
                    Text(StringConstants.kMsgLoremIpsumDol2)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(275.0), height: getRelativeHeight(31.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(5.0))
                        .padding(.horizontal, getRelativeWidth(31.0))
                }
                .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(206.0),
                       alignment: .leading)
                VStack {
                    HStack {
                        TextField(StringConstants.kLbl234abc56d3f,
                                  text: $popupViewModel.groupthreeText)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(20.0)))
                            .foregroundColor(ColorConstants.Black900)
                            .padding()
                        Image("img_vector_bluegray_101")
                            .resizable()
                            .frame(width: getRelativeWidth(12.0), height: getRelativeHeight(13.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.bottom, getRelativeHeight(14.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.trailing, getRelativeWidth(20.0))
                        Spacer()
                    }
                    .frame(width: getRelativeWidth(297.0), height: getRelativeHeight(43.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                            bottomRight: 8.0)
                            .stroke(style: StrokeStyle(lineWidth: 2, dash: [5, 5])))
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.Bluegray50))
                    .padding(.horizontal, getRelativeWidth(31.0))
                    HStack {
                        Divider()
                            .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(1.0),
                                   alignment: .top)
                            .background(ColorConstants.Bluegray400)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.bottom, getRelativeHeight(7.0))
                        Text(StringConstants.kMsgOrShareYourI)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Divider()
                            .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(1.0),
                                   alignment: .top)
                            .background(ColorConstants.Bluegray400)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.bottom, getRelativeHeight(7.0))
                            .padding(.leading, getRelativeWidth(16.0))
                        Spacer()
                    }
                    .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(15.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(20.0))
                    .padding(.horizontal, getRelativeWidth(31.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgHttpSampleI)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .padding(.horizontal, getRelativeWidth(15.0))
                                .padding(.vertical, getRelativeHeight(12.0))
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(300.0),
                                       height: getRelativeHeight(40.0), alignment: .topLeading)
                                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                        bottomLeft: 8.0,
                                                        bottomRight: 8.0)
                                        .stroke(ColorConstants.Black90099,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.horizontal, getRelativeWidth(31.0))
                        }
                    })
                    .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(40.0),
                           alignment: .topLeading)
                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                            bottomRight: 8.0)
                            .stroke(ColorConstants.Black90099,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.top, getRelativeHeight(19.0))
                    .padding(.horizontal, getRelativeWidth(31.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblCopyLink)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(9.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(300.0),
                                       height: getRelativeHeight(40.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(ColorConstants.Gray900))
                                .padding(.top, getRelativeHeight(23.0))
                                .padding(.horizontal, getRelativeWidth(31.0))
                        }
                    })
                    .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                               bottomRight: 7.0)
                            .fill(ColorConstants.Gray900))
                    .padding(.top, getRelativeHeight(23.0))
                    .padding(.horizontal, getRelativeWidth(31.0))
                }
                .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(201.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(17.0))
                .padding(.bottom, getRelativeHeight(20.0))
            }
            .frame(width: getRelativeWidth(363.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}
