import SwiftUI

struct SignupreferralcodeView: View {
    @StateObject var signupreferralcodeViewModel = SignupreferralcodeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblReferralCode)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(162.0), height: getRelativeHeight(36.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(36.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(72.0))
                    .padding(.horizontal, getRelativeWidth(14.0))
                    VStack {
                        Text(StringConstants.kMsgLoremIpsumDol)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(43.0),
                                   alignment: .topLeading)
                        VStack {
                            HStack {
                                TextField(StringConstants.kLblEnterCode,
                                          text: $signupreferralcodeViewModel.inputText)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .padding()
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
                        .padding(.top, getRelativeHeight(12.0))
                        VStack {
                            Button(action: {
                                signupreferralcodeViewModel.nextScreen = "WelcomeView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblConfirm)
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
                                                                   bottomLeft: 4.0,
                                                                   bottomRight: 4.0)
                                                .fill(ColorConstants.Gray900))
                                }
                            })
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(ColorConstants.Gray900))
                            Text(StringConstants.kLblSkipThisStep)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Cyan600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(93.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(135.0))
                                .onTapGesture {
                                    signupreferralcodeViewModel.nextScreen = "WelcomeView"
                                }
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(73.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0))
                        .padding(.top, getRelativeHeight(194.0))
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(375.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(7.0))
                    .padding(.horizontal, getRelativeWidth(14.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: WelcomeView(),
                                   tag: "WelcomeView",
                                   selection: $signupreferralcodeViewModel.nextScreen,
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

struct SignupreferralcodeView_Previews: PreviewProvider {
    static var previews: some View {
        SignupreferralcodeView()
    }
}
