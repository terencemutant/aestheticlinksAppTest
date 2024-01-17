import SwiftUI

struct CancellationandReschedulepolicyView: View {
    @StateObject var cancellationandReschedulepolicyViewModel =
        CancellationandReschedulepolicyViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        VStack {
                            Image("img_image12")
                                .resizable()
                                .frame(width: getRelativeWidth(135.0),
                                       height: getRelativeHeight(26.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                            Divider()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(1.0), alignment: .leading)
                                .background(ColorConstants.Black9004c)
                                .padding(.top, getRelativeHeight(21.0))
                            VStack(alignment: .leading, spacing: 0) {
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
                                    Text(StringConstants.kLblEditAppoinment)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(136.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(89.0))
                                }
                                .frame(width: getRelativeWidth(250.0),
                                       height: getRelativeHeight(25.0), alignment: .leading)
                                .padding(.trailing)
                                Text(StringConstants.kMsgCancellationAn)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(289.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(39.0))
                            }
                            .frame(width: getRelativeWidth(289.0), height: getRelativeHeight(88.0),
                                   alignment: .leading)
                            .padding(.vertical, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(185.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(3.0), alignment: .leading)
                            .background(ColorConstants.Cyan600)
                        ZStack(alignment: .center) {
                            ZStack(alignment: .center) {
                                Image("img_layer2_bluegray_101")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(545.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblType)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(35.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                        .padding(.trailing)
                                    Text(StringConstants.kMsg12HoursBefor)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(198.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                    HStack {
                                        Text(StringConstants.kMsgCancellationFe)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(117.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblRescheduleFee)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(108.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(65.0))
                                    }
                                    .frame(width: getRelativeWidth(291.0),
                                           height: getRelativeHeight(21.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(6.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                    HStack {
                                        Text(StringConstants.kLblFreeOfCharge)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(86.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblFreeOfCharge)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(86.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(93.0))
                                    }
                                    .frame(width: getRelativeWidth(266.0),
                                           height: getRelativeHeight(18.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(9.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(361.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Black90026)
                                        .padding(.top, getRelativeHeight(8.0))
                                    VStack(spacing: 0) {
                                        ScrollView(.vertical, showsIndicators: false) {
                                            LazyVStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    ColumntypeCell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(338.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(361.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Black90026)
                                        .padding(.top, getRelativeHeight(9.0))
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(358.0), alignment: .center)
                                .padding(.bottom, getRelativeHeight(107.54))
                                .padding(.horizontal, getRelativeWidth(15.0))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(545.0),
                                   alignment: .bottomLeading)
                            .padding(.top, getRelativeHeight(43.54))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblType)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(35.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kMsg10MinutesAfte)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(215.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(8.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    Text(StringConstants.kMsgCancellationFe)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(117.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblRescheduleFee)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(108.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(65.0))
                                }
                                .frame(width: getRelativeWidth(291.0),
                                       height: getRelativeHeight(21.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(6.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    Text(StringConstants.kLblFreeOfCharge)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(86.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblFreeOfCharge)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(86.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(93.0))
                                }
                                .frame(width: getRelativeWidth(266.0),
                                       height: getRelativeHeight(18.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(9.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                Divider()
                                    .frame(width: getRelativeWidth(361.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black90026)
                                    .padding(.top, getRelativeHeight(8.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblType)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(35.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                        .padding(.trailing)
                                    Text(StringConstants.kMsgMissedAppointm)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(123.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                    HStack {
                                        Text(StringConstants.kMsgCancellationFe)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(117.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblRescheduleFee)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(108.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(65.0))
                                    }
                                    .frame(width: getRelativeWidth(291.0),
                                           height: getRelativeHeight(21.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(6.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                    HStack {
                                        Text(StringConstants.kMsg100OfAppoint)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(161.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kMsg100OfAppoint)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(161.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                    }
                                    .frame(width: getRelativeWidth(341.0),
                                           height: getRelativeHeight(18.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(9.0))
                                }
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(102.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(379.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                Divider()
                                    .frame(width: getRelativeWidth(361.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black90026)
                                    .padding(.top, getRelativeHeight(9.0))
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(604.0),
                                   alignment: .center)
                            .padding(.horizontal, getRelativeWidth(15.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(604.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(29.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                }
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.bottom, getRelativeHeight(107.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct CancellationandReschedulepolicyView_Previews: PreviewProvider {
    static var previews: some View {
        CancellationandReschedulepolicyView()
    }
}
