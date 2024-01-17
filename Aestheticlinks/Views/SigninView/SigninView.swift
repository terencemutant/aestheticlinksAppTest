import SwiftUI

struct SigninView: View {
    @StateObject var signinViewModel = SigninViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblWelcomeBack)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(192.0), height: getRelativeHeight(36.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        Text(StringConstants.kMsgPleaseSignIn)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(7.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLblEmail2)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(21.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(106.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(73.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack {
                        VStack {
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgExampleGmailC,
                                              text: $signinViewModel.emailoneText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .padding()
                                        .keyboardType(.emailAddress)
                                }
                                .onChange(of: signinViewModel.emailoneText) { newValue in

                                    signinViewModel.isValidEmailoneText = newValue
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
                                if !signinViewModel.isValidEmailoneText {
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
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(52.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(7.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblPassword2)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(21.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(13.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack {
                        VStack {
                            Group {
                                HStack {
                                    SecureField(StringConstants.kLbl2,
                                                text: $signinViewModel.passwordoneText)
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
                                .onChange(of: signinViewModel.passwordoneText) { newValue in

                                    signinViewModel.isValidPasswordoneText = newValue
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
                                if !signinViewModel.isValidPasswordoneText {
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
                    VStack(alignment: .trailing, spacing: 0) {
                        Text(StringConstants.kMsgForgotPassword)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Cyan600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.leading)
                            .padding(.leading)
                            .onTapGesture {
                                signinViewModel.nextScreen = "ResetpasswordView"
                            }
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(21.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack {
                        Button(action: {
                            signinViewModel.nextScreen = "Landingpage1View"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblLogin)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(9.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(40.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0)
                                            .fill(ColorConstants.Gray900))
                            }
                        })
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0)
                                .fill(ColorConstants.Gray900))
                        HStack {
                            Divider()
                                .frame(width: getRelativeWidth(116.0),
                                       height: getRelativeHeight(1.0), alignment: .top)
                                .background(ColorConstants.Bluegray400)
                                .padding(.top, getRelativeHeight(9.0))
                                .padding(.bottom, getRelativeHeight(11.0))
                            Spacer()
                            Text(StringConstants.kLblOrSignInWith)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            Spacer()
                            Divider()
                                .frame(width: getRelativeWidth(116.0),
                                       height: getRelativeHeight(1.0), alignment: .top)
                                .background(ColorConstants.Bluegray400)
                                .padding(.top, getRelativeHeight(9.0))
                                .padding(.bottom, getRelativeHeight(11.0))
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(21.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(28.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(89.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(27.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Button(action: {}, label: {
                                Image("img_icon_amber_500")
                            })
                            .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                    bottomRight: 8.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(Color.clear.opacity(0.7)))
                            Button(action: {}, label: {
                                Image("img_button")
                            })
                            .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                    bottomRight: 8.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.leading, getRelativeWidth(16.0))
                            Button(action: {}, label: {
                                Image("img_button_gray_800")
                            })
                            .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                    bottomRight: 8.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.leading, getRelativeWidth(16.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(96.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(24.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack {
                        Text(StringConstants.kMsgNotYetAMembe)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(136.0), height: getRelativeHeight(42.0),
                                   alignment: .center)
                            .padding(.horizontal, getRelativeWidth(114.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(42.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(32.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ResetpasswordView(),
                                   tag: "ResetpasswordView",
                                   selection: $signinViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: Landingpage1View(),
                                   tag: "Landingpage1View",
                                   selection: $signinViewModel.nextScreen,
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

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}
