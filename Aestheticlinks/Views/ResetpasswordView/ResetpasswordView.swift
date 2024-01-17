import SwiftUI

struct ResetpasswordView: View {
    @StateObject var resetpasswordViewModel = ResetpasswordViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgForgotPassword)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(217.0), height: getRelativeHeight(36.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        Text(StringConstants.kMsgEnterYourEmai)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(309.0), height: getRelativeHeight(42.0),
                                   alignment: .topLeading)
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLblEmail2)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(123.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(74.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack {
                        VStack {
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgExampleGmailC,
                                              text: $resetpasswordViewModel.emailoneText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .padding()
                                        .keyboardType(.emailAddress)
                                }
                                .onChange(of: resetpasswordViewModel.emailoneText) { newValue in

                                    resetpasswordViewModel.isValidEmailoneText = newValue
                                        .isValidEmail(isMandatory: true)
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
                                if !resetpasswordViewModel.isValidEmailoneText {
                                    Text("Please enter valid email.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(52.0), alignment: .leading)
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(52.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0))
                        Button(action: {
                            resetpasswordViewModel.nextScreen = "ResetpasswordTwoView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblContinue)
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
                                    .padding(.top, getRelativeHeight(186.0))
                            }
                        })
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0)
                                .fill(ColorConstants.Gray900))
                        .padding(.top, getRelativeHeight(186.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(278.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(7.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ResetpasswordTwoView(),
                                   tag: "ResetpasswordTwoView",
                                   selection: $resetpasswordViewModel.nextScreen,
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

struct ResetpasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ResetpasswordView()
    }
}
