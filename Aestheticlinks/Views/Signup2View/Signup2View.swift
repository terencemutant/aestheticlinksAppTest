import SwiftUI

struct Signup2View: View {
    @StateObject var signup2ViewModel = Signup2ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                Text(StringConstants.kMsgGettingStarted)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(196.0),
                                           height: getRelativeHeight(36.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kMsgCreateAnAccou)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(310.0),
                                           height: getRelativeHeight(43.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(4.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kMsgPleaseFillAll)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(10.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(97.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(8.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kLblName)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(53.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(18.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                VStack {
                                    Group {
                                        HStack {
                                            TextField(StringConstants.kLblName2,
                                                      text: $signup2ViewModel.inputText)
                                                .font(FontScheme
                                                    .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Bluegray400)
                                                .padding()
                                                .keyboardType(.alphabet)
                                        }
                                        .onChange(of: signup2ViewModel.inputText) { newValue in

                                            signup2ViewModel.isValidInputText = newValue
                                                .isText(isMandatory: false)
                                        }
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(52.0), alignment: .leading)
                                        .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                bottomLeft: 8.0, bottomRight: 8.0)
                                                .stroke(ColorConstants.Bluegray100,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.WhiteA700))
                                        if !signup2ViewModel.isValidInputText {
                                            Text("Please enter valid text.")
                                                .foregroundColor(Color.red)
                                                .font(FontScheme
                                                    .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                                .frame(width: getRelativeWidth(363.0),
                                                       height: getRelativeHeight(52.0),
                                                       alignment: .leading)
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(52.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0))
                                .padding(.top, getRelativeHeight(7.0))
                                Text(StringConstants.kLblEmail)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(49.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                VStack {
                                    Group {
                                        HStack {
                                            TextField(StringConstants.kLblEmail2,
                                                      text: $signup2ViewModel.inputoneText)
                                                .font(FontScheme
                                                    .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Bluegray400)
                                                .padding()
                                                .keyboardType(.emailAddress)
                                        }
                                        .onChange(of: signup2ViewModel.inputoneText) { newValue in

                                            signup2ViewModel.isValidInputoneText = newValue
                                                .isValidEmail(isMandatory: true)
                                        }
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(52.0), alignment: .leading)
                                        .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                bottomLeft: 8.0, bottomRight: 8.0)
                                                .stroke(ColorConstants.Bluegray100,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.WhiteA700))
                                        if !signup2ViewModel.isValidInputoneText {
                                            Text("Please enter valid email.")
                                                .foregroundColor(Color.red)
                                                .font(FontScheme
                                                    .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                                .frame(width: getRelativeWidth(363.0),
                                                       height: getRelativeHeight(52.0),
                                                       alignment: .leading)
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(52.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0))
                                .padding(.top, getRelativeHeight(7.0))
                                Text(StringConstants.kLblPassword)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                            }
                            Group {
                                VStack {
                                    Group {
                                        HStack {
                                            SecureField(StringConstants.kLblEnterPassword,
                                                        text: $signup2ViewModel.inputtwoText)
                                                .font(FontScheme
                                                    .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                                .foregroundColor(ColorConstants.Bluegray400)
                                                .padding()
                                                .keyboardType(.default)
                                            Image("img_icon")
                                                .resizable()
                                                .frame(width: getRelativeWidth(15.0),
                                                       height: getRelativeWidth(15.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.vertical, getRelativeHeight(18.0))
                                                .padding(.leading, getRelativeWidth(30.0))
                                                .padding(.trailing, getRelativeWidth(18.0))
                                            Spacer()
                                        }
                                        .onChange(of: signup2ViewModel.inputtwoText) { newValue in

                                            signup2ViewModel.isValidInputtwoText = newValue
                                                .isValidPassword(isMandatory: true)
                                        }
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(52.0), alignment: .leading)
                                        .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                bottomLeft: 8.0, bottomRight: 8.0)
                                                .stroke(ColorConstants.Bluegray100,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.WhiteA700))
                                        if !signup2ViewModel.isValidInputtwoText {
                                            Text("Please enter valid password.")
                                                .foregroundColor(Color.red)
                                                .font(FontScheme
                                                    .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                                .frame(width: getRelativeWidth(363.0),
                                                       height: getRelativeHeight(52.0),
                                                       alignment: .leading)
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(52.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0))
                                .padding(.top, getRelativeHeight(7.0))
                                Text(StringConstants.kLblReferralCode)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(94.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                VStack {
                                    HStack {
                                        TextField(StringConstants.kMsgEnterReferral,
                                                  text: $signup2ViewModel.inputthreeText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Bluegray400)
                                            .padding()
                                        Image("img_icon")
                                            .resizable()
                                            .frame(width: getRelativeWidth(15.0),
                                                   height: getRelativeWidth(15.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(18.0))
                                            .padding(.leading, getRelativeWidth(30.0))
                                            .padding(.trailing, getRelativeWidth(18.0))
                                        Spacer()
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(52.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                            bottomLeft: 8.0, bottomRight: 8.0)
                                            .stroke(ColorConstants.Bluegray100,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(52.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0))
                                .padding(.top, getRelativeHeight(7.0))
                                CheckboxField(idValue: StringConstants.kMsgIAgreeWithTe,
                                              label: StringConstants.kMsgIAgreeWithTe,
                                              color: ColorConstants.Bluegray100,
                                              isMarked: $signup2ViewModel.iagreewithteCheckbox)
                                    .minimumScaleFactor(0.5)
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(20.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                            bottomLeft: 4.0, bottomRight: 4.0)
                                            .stroke(ColorConstants.Bluegray100,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(46.0))
                                Button(action: {
                                    signup2ViewModel.nextScreen = "SigninView"
                                }, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblRegister)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .padding(.horizontal, getRelativeWidth(30.0))
                                            .padding(.vertical, getRelativeHeight(9.0))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(363.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                                       bottomLeft: 4.0,
                                                                       bottomRight: 4.0)
                                                    .fill(ColorConstants.Gray900))
                                            .padding(.top, getRelativeHeight(39.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(40.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.Gray900))
                                .padding(.top, getRelativeHeight(39.0))
                                HStack {
                                    Divider()
                                        .frame(width: getRelativeWidth(94.0),
                                               height: getRelativeHeight(1.0), alignment: .top)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(9.0))
                                        .padding(.bottom, getRelativeHeight(11.0))
                                    Spacer()
                                    Text(StringConstants.kLblOrSignUpWith)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Bluegray400)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(105.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Divider()
                                        .frame(width: getRelativeWidth(94.0),
                                               height: getRelativeHeight(1.0), alignment: .top)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(9.0))
                                        .padding(.bottom, getRelativeHeight(11.0))
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .padding(.top, getRelativeHeight(36.0))
                                .padding(.horizontal, getRelativeWidth(17.0))
                                HStack {
                                    Button(action: {}, label: {
                                        Image("img_icon_amber_500")
                                    })
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                            bottomLeft: 8.0, bottomRight: 8.0)
                                            .stroke(ColorConstants.Bluegray100,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    Button(action: {}, label: {
                                        Image("img_button")
                                    })
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                            bottomLeft: 8.0, bottomRight: 8.0)
                                            .stroke(ColorConstants.Bluegray100,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.leading, getRelativeWidth(16.0))
                                    Button(action: {}, label: {
                                        Image("img_button_gray_800")
                                    })
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                            bottomLeft: 8.0, bottomRight: 8.0)
                                            .stroke(ColorConstants.Bluegray100,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.leading, getRelativeWidth(16.0))
                                }
                                .frame(width: getRelativeWidth(152.0),
                                       height: getRelativeHeight(40.0), alignment: .center)
                                .padding(.top, getRelativeHeight(22.0))
                                .padding(.horizontal, getRelativeWidth(17.0))
                                Text(StringConstants.kMsgAlreadyAMembe)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(182.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(37.0))
                                    .padding(.horizontal, getRelativeWidth(17.0))
                            }
                        }
                        .frame(width: getRelativeWidth(363.0), alignment: .topLeading)
                    }
                }
                .frame(width: getRelativeWidth(363.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.vertical, getRelativeHeight(75.0))
                .padding(.horizontal, getRelativeWidth(14.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SigninView(),
                                   tag: "SigninView",
                                   selection: $signup2ViewModel.nextScreen,
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

struct Signup2View_Previews: PreviewProvider {
    static var previews: some View {
        Signup2View()
    }
}
