import SwiftUI

struct ResetpasswordThreeView: View {
    @StateObject var resetpasswordThreeViewModel = ResetpasswordThreeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblResetPassword)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(36.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        Text(StringConstants.kMsgYourNewPasswo)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(42.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLblNewPassword)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(127.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(73.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack {
                        VStack {
                            Group {
                                HStack {
                                    SecureField(StringConstants.kLbl3,
                                                text: $resetpasswordThreeViewModel.passwordText)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .padding()
                                        .keyboardType(.default)
                                    Image("img_icon_black_900")
                                        .resizable()
                                        .frame(width: getRelativeWidth(15.0),
                                               height: getRelativeWidth(15.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(18.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(18.0))
                                    Spacer()
                                }
                                .onChange(of: resetpasswordThreeViewModel
                                    .passwordText) { newValue in

                                        resetpasswordThreeViewModel.isValidPasswordText = newValue
                                            .isValidPassword(isMandatory: true)
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(52.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                        bottomLeft: 8.0,
                                                        bottomRight: 8.0)
                                        .stroke(ColorConstants.Bluegray100,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.WhiteA700))
                                if !resetpasswordThreeViewModel.isValidPasswordText {
                                    Text("Please enter valid password.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(14.0)))
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(52.0), alignment: .leading)
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(52.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(52.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(7.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgMustBeAtLeas)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(198.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        Text(StringConstants.kMsgConfirmPasswor)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(128.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(14.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(56.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(7.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack {
                        VStack {
                            HStack {
                                TextField(StringConstants.kLblSamplepw123,
                                          text: $resetpasswordThreeViewModel.inputText)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Black900)
                                    .padding()
                                Image("img_icon_black_900_11x15")
                                    .resizable()
                                    .frame(width: getRelativeWidth(15.0),
                                           height: getRelativeHeight(11.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(20.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(18.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(52.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                    bottomRight: 8.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(52.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(52.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(7.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgBothPasswordM)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(195.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(21.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(9.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack {
                        Button(action: {
                            resetpasswordThreeViewModel.nextScreen = "ResetpasswordFourView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblResetPassword)
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
                    .padding(.vertical, getRelativeHeight(315.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ResetpasswordFourView(),
                                   tag: "ResetpasswordFourView",
                                   selection: $resetpasswordThreeViewModel.nextScreen,
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

struct ResetpasswordThreeView_Previews: PreviewProvider {
    static var previews: some View {
        ResetpasswordThreeView()
    }
}
