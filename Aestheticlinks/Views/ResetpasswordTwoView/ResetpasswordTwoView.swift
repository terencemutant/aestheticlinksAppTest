import SwiftUI

struct ResetpasswordTwoView: View {
    @StateObject var resetpasswordTwoViewModel = ResetpasswordTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text(StringConstants.kMsgEmailVerificat)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(36.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(30.0))
                        Text(StringConstants.kMsgEnterTheVerif)
                            .font(FontScheme.kActionSansMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(42.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.horizontal, getRelativeWidth(30.0))
                        OTPView(text: $resetpasswordTwoViewModel.otpviewOTP1, width: 256.0,
                                height: 52.0, fieldsCount: 4,
                                displayType: .roundedCorner,
                                defaultBackgroundColor: ColorConstants.WhiteA700,
                                filledBackgroundColor: ColorConstants.WhiteA700,
                                defaultBorderColor: ColorConstants.Bluegray100,
                                filledBorderColor: ColorConstants.Bluegray100)
                            .frame(width: 256.0, height: 52.0)
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(159.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(72.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgDidnTReceive)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(190.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(75.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(21.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(23.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack {
                        Button(action: {
                            resetpasswordTwoViewModel.nextScreen = "ResetpasswordThreeView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblVerifyAcount)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(9.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0)
                                            .fill(ColorConstants.Gray900))
                            }
                        })
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0)
                                .fill(ColorConstants.Gray900))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(167.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ResetpasswordThreeView(),
                                   tag: "ResetpasswordThreeView",
                                   selection: $resetpasswordTwoViewModel.nextScreen,
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

struct ResetpasswordTwoView_Previews: PreviewProvider {
    static var previews: some View {
        ResetpasswordTwoView()
    }
}
