import SwiftUI

struct CheckoutnewcardView: View {
    @StateObject var checkoutnewcardViewModel = CheckoutnewcardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Image("img_image12")
                            .resizable()
                            .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(26.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(129.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(26.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(20.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .leading)
                            .background(ColorConstants.Black9004c)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(21.0))
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                HStack {
                                    Text(StringConstants.kLbl)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
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
                                                                   bottomLeft: 12.5,
                                                                   bottomRight: 12.5)
                                                .fill(Color.clear.opacity(0.7)))
                                    Spacer()
                                    Text(StringConstants.kLblCheckout)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(79.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(117.0))
                                }
                                .frame(width: getRelativeWidth(221.0),
                                       height: getRelativeHeight(25.0), alignment: .leading)
                                .padding(.trailing)
                                Text(StringConstants.kMsgAppointmentDet)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(168.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(28.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kLblJamesSmith)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(91.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kMsgFacialTreatmen2)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(118.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.trailing, getRelativeWidth(10.0))
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kMsgOctober18202,
                                                  text: $checkoutnewcardViewModel.group222Text)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray901)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(36.0), alignment: .leading)
                                    Divider()
                                        .background(ColorConstants.Gray901)
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(36.0), alignment: .leading)
                                HStack {
                                    Text(StringConstants.kLblTotal)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLbl500Aed)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(24.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(9.0))
                                Text(StringConstants.kMsgChooseYourPay)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(249.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(41.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kMsgLoremIpsumDol5)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(331.0),
                                           height: getRelativeHeight(37.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(6.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                            }
                            Group {
                                HStack {
                                    ZStack {
                                        Image("img_vector_cyan_600_22x35")
                                            .resizable()
                                            .frame(width: getRelativeWidth(35.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(22.0))
                                            .padding(.bottom, getRelativeHeight(21.0))
                                            .padding(.horizontal, getRelativeWidth(39.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(114.0),
                                           height: getRelativeHeight(65.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                            bottomLeft: 8.0, bottomRight: 8.0)
                                            .stroke(ColorConstants.Cyan600,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.Cyan6003f))
                                    Spacer()
                                    ZStack {
                                        Image("img_applepaylogo")
                                            .resizable()
                                            .frame(width: getRelativeWidth(45.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(23.92))
                                            .padding(.bottom, getRelativeHeight(22.08))
                                            .padding(.horizontal, getRelativeWidth(34.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(114.0),
                                           height: getRelativeHeight(65.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                            bottomLeft: 8.0, bottomRight: 8.0)
                                            .stroke(ColorConstants.Black90099,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    Spacer()
                                    ZStack {
                                        Image("img_vector_black_905")
                                            .resizable()
                                            .frame(width: getRelativeWidth(45.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(25.0))
                                            .padding(.bottom, getRelativeHeight(24.0))
                                            .padding(.horizontal, getRelativeWidth(34.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(114.0),
                                           height: getRelativeHeight(65.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                            bottomLeft: 8.0, bottomRight: 8.0)
                                            .stroke(ColorConstants.Black90099,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(Color.clear.opacity(0.7)))
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(65.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(19.0))
                                Group {
                                    HStack {
                                        TextField(StringConstants.kMsgCardholderSNa,
                                                  text: $checkoutnewcardViewModel.groupfiftyText)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Black9004c)
                                            .padding()
                                            .keyboardType(.alphabet)
                                    }
                                    .onChange(of: checkoutnewcardViewModel
                                        .groupfiftyText) { newValue in

                                            checkoutnewcardViewModel
                                                .isValidGroupfiftyText = newValue
                                                .isText(isMandatory: false)
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(40.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                            bottomLeft: 7.0, bottomRight: 7.0)
                                            .stroke(ColorConstants.Black9004c,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(22.0))
                                    if !checkoutnewcardViewModel.isValidGroupfiftyText {
                                        Text("Please enter valid text.")
                                            .foregroundColor(Color.red)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .frame(width: getRelativeWidth(363.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .leading)
                                    }
                                }
                                Group {
                                    HStack {
                                        TextField(StringConstants.kLblCardNumber,
                                                  text: $checkoutnewcardViewModel
                                                      .groupfortynineText)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray400)
                                            .padding()
                                            .keyboardType(.numberPad)
                                        Image("img_visasvgrepocom_1_1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(25.0),
                                                   height: getRelativeHeight(7.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(17.0))
                                            .padding(.bottom, getRelativeHeight(15.0))
                                            .padding(.leading, getRelativeWidth(30.0))
                                            .padding(.trailing, getRelativeWidth(17.0))
                                        Spacer()
                                    }
                                    .onChange(of: checkoutnewcardViewModel
                                        .groupfortynineText) { newValue in

                                            checkoutnewcardViewModel
                                                .isValidGroupfortynineText = newValue
                                                .isNumeric(isMandatory: false)
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(40.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                            bottomLeft: 7.0, bottomRight: 7.0)
                                            .stroke(ColorConstants.Black9004c,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(15.0))
                                    if !checkoutnewcardViewModel.isValidGroupfortynineText {
                                        Text("Please enter valid number.")
                                            .foregroundColor(Color.red)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .frame(width: getRelativeWidth(363.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .leading)
                                    }
                                }
                                HStack {
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kMsgExpirationDate)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .padding(.horizontal, getRelativeWidth(21.0))
                                                .padding(.vertical, getRelativeHeight(9.0))
                                                .foregroundColor(ColorConstants.Black9004c)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(176.0),
                                                       height: getRelativeHeight(40.0),
                                                       alignment: .topLeading)
                                                .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                        bottomLeft: 7.0,
                                                                        bottomRight: 7.0)
                                                        .stroke(ColorConstants.Gray402,
                                                                lineWidth: 1))
                                                .background(RoundedCorners(topLeft: 7.0,
                                                                           topRight: 7.0,
                                                                           bottomLeft: 7.0,
                                                                           bottomRight: 7.0)
                                                        .fill(ColorConstants.WhiteA700))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(176.0),
                                           height: getRelativeHeight(40.0), alignment: .topLeading)
                                    .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                            bottomLeft: 7.0, bottomRight: 7.0)
                                            .stroke(ColorConstants.Gray402,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0)
                                            .fill(ColorConstants.WhiteA700))
                                    Spacer()
                                    HStack {
                                        TextField(StringConstants.kMsgCcv,
                                                  text: $checkoutnewcardViewModel.languageText)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Black9004c)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(176.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                            bottomLeft: 7.0, bottomRight: 7.0)
                                            .stroke(ColorConstants.Gray402,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0)
                                            .fill(ColorConstants.WhiteA700))
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(40.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(15.0))
                                HStack {
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(14.0),
                                               height: getRelativeWidth(14.0), alignment: .top)
                                        .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                bottomLeft: 2.0, bottomRight: 2.0)
                                                .stroke(ColorConstants.Black9004c,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                   bottomLeft: 2.0,
                                                                   bottomRight: 2.0)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.vertical, getRelativeHeight(3.0))
                                    Text(StringConstants.kMsgLoremIpsumDol6)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(331.0),
                                               height: getRelativeHeight(37.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(12.0))
                                }
                                .frame(width: getRelativeWidth(357.0),
                                       height: getRelativeHeight(37.0), alignment: .center)
                                .padding(.top, getRelativeHeight(11.0))
                                .padding(.trailing, getRelativeWidth(5.0))
                                Button(action: {
                                    checkoutnewcardViewModel.nextScreen = "BookingconfirmedView"
                                }, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblBookNow)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.bold)
                                            .padding(.horizontal, getRelativeWidth(30.0))
                                            .padding(.vertical, getRelativeHeight(9.0))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(363.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                       bottomLeft: 7.0,
                                                                       bottomRight: 7.0)
                                                    .fill(ColorConstants.Gray900))
                                            .padding(.top, getRelativeHeight(28.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(40.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(ColorConstants.Gray900))
                                .padding(.top, getRelativeHeight(28.0))
                            }
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(679.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(15.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(679.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: BookingconfirmedView(),
                                   tag: "BookingconfirmedView",
                                   selection: $checkoutnewcardViewModel.nextScreen,
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

struct CheckoutnewcardView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutnewcardView()
    }
}
