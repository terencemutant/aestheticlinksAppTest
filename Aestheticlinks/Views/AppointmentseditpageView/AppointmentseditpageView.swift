import SwiftUI

struct AppointmentseditpageView: View {
    @StateObject var appointmentseditpageViewModel = AppointmentseditpageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Image("img_image12")
                            .resizable()
                            .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(26.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(129.0))
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .leading)
                            .background(ColorConstants.Black9004c)
                            .padding(.top, getRelativeHeight(21.0))
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
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
                                                               bottomLeft: 12.5, bottomRight: 12.5)
                                            .fill(Color.clear.opacity(0.7)))
                                    .onTapGesture {
                                        appointmentseditpageViewModel
                                            .nextScreen = "Landingpage1View"
                                    }
                                Spacer()
                                Text(StringConstants.kMsgEditAppointmen)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(142.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(86.0))
                            }
                            .frame(width: getRelativeWidth(253.0), height: getRelativeHeight(25.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(15.0))
                            HStack {
                                Text(StringConstants.kLblClinicName)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(98.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl45Mins)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray701)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(6.0))
                                    .padding(.leading, getRelativeWidth(7.0))
                            }
                            .frame(width: getRelativeWidth(146.0), height: getRelativeHeight(24.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(36.0))
                            .padding(.horizontal, getRelativeWidth(14.0))
                            Text(StringConstants.kMsgLoremIpsumDol5)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(331.0),
                                       height: getRelativeHeight(37.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(8.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                            ZStack(alignment: .center) {
                                ZStack(alignment: .center) {
                                    Image("img_layer2_bluegray_101")
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(545.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    VStack(alignment: .leading, spacing: 0) {
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kLblTimeDate)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Gray901)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(99.0),
                                                       height: getRelativeHeight(24.0),
                                                       alignment: .topLeading)
                                                .padding(.trailing)
                                            HStack {
                                                HStack {
                                                    TextField(StringConstants.kMsgOctober10202,
                                                              text: $appointmentseditpageViewModel
                                                                  .groupeightText)
                                                        .font(FontScheme
                                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                        .foregroundColor(ColorConstants.Gray901)
                                                        .padding()
                                                    Image("img_vector_gray_400")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(7.0),
                                                               height: getRelativeHeight(4.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.top, getRelativeHeight(18.0))
                                                        .padding(.bottom, getRelativeHeight(17.0))
                                                        .padding(.leading, getRelativeWidth(30.0))
                                                        .padding(.trailing, getRelativeWidth(18.0))
                                                    Spacer()
                                                }
                                                .frame(width: getRelativeWidth(176.0),
                                                       height: getRelativeHeight(40.0),
                                                       alignment: .center)
                                                .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                        bottomLeft: 7.0,
                                                                        bottomRight: 7.0)
                                                        .stroke(ColorConstants.Black9004c,
                                                                lineWidth: 1))
                                                .background(RoundedCorners(topLeft: 7.0,
                                                                           topRight: 7.0,
                                                                           bottomLeft: 7.0,
                                                                           bottomRight: 7.0)
                                                        .fill(ColorConstants.WhiteA700))
                                                Spacer()
                                                HStack {
                                                    TextField(StringConstants.kLbl13001700,
                                                              text: $appointmentseditpageViewModel
                                                                  .groupsevenText)
                                                        .font(FontScheme
                                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                        .foregroundColor(ColorConstants.Gray901)
                                                        .padding()
                                                }
                                                .frame(width: getRelativeWidth(176.0),
                                                       height: getRelativeHeight(40.0),
                                                       alignment: .center)
                                                .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                        bottomLeft: 7.0,
                                                                        bottomRight: 7.0)
                                                        .stroke(ColorConstants.Black9004c,
                                                                lineWidth: 1))
                                                .background(RoundedCorners(topLeft: 7.0,
                                                                           topRight: 7.0,
                                                                           bottomLeft: 7.0,
                                                                           bottomRight: 7.0)
                                                        .fill(ColorConstants.WhiteA700))
                                            }
                                            .frame(width: getRelativeWidth(364.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(15.0))
                                        }
                                        .frame(width: getRelativeWidth(364.0),
                                               height: getRelativeHeight(79.0), alignment: .leading)
                                        Text(StringConstants.kMsgCancellationAn)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(10.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(178.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(267.0))
                                            .padding(.horizontal, getRelativeWidth(93.0))
                                            .onTapGesture {
                                                appointmentseditpageViewModel
                                                    .nextScreen =
                                                    "CancellationandReschedulepolicyView"
                                            }
                                        Text(StringConstants.kMsgByChangingYou)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(8.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(362.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(6.0))
                                        Button(action: {
                                            appointmentseditpageViewModel
                                                .nextScreen = "ConfirmchangesView"
                                        }, label: {
                                            HStack(spacing: 0) {
                                                Text(StringConstants.kLblSaveChanges)
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
                                                    .background(RoundedCorners(topLeft: 7.0,
                                                                               topRight: 7.0,
                                                                               bottomLeft: 7.0,
                                                                               bottomRight: 7.0)
                                                            .fill(ColorConstants.Gray900))
                                                    .padding(.top, getRelativeHeight(10.0))
                                            }
                                        })
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.Gray900))
                                        .padding(.top, getRelativeHeight(10.0))
                                    }
                                    .frame(width: getRelativeWidth(364.0),
                                           height: getRelativeHeight(444.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(57.83))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                }
                                .hideNavigationBar()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(545.0), alignment: .leading)
                                VStack(alignment: .leading, spacing: 0) {
                                    HStack {
                                        ZStack(alignment: .leading) {
                                            Image("img_image6")
                                                .resizable()
                                                .frame(width: getRelativeWidth(50.0),
                                                       height: getRelativeWidth(50.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 8.0,
                                                                           topRight: 8.0,
                                                                           bottomLeft: 8.0,
                                                                           bottomRight: 8.0))
                                            ZStack {
                                                Image("img_image7_50x50")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(50.0),
                                                           height: getRelativeWidth(50.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .background(RoundedCorners(topLeft: 8.0,
                                                                               topRight: 8.0,
                                                                               bottomLeft: 8.0,
                                                                               bottomRight: 8.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(50.0),
                                                   height: getRelativeWidth(50.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0)
                                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                .Gray90000,
                                                            ColorConstants
                                                                .Gray900]),
                                                        startPoint: .topLeading,
                                                        endPoint: .bottomTrailing)))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeWidth(50.0), alignment: .center)
                                        Spacer()
                                        VStack(alignment: .leading, spacing: 0) {
                                            HStack {
                                                Text(StringConstants.kMsgDrNikolaKova)
                                                    .font(FontScheme
                                                        .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(ColorConstants.Gray901)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(115.0),
                                                           height: getRelativeHeight(21.0),
                                                           alignment: .topLeading)
                                                Spacer()
                                                Text(StringConstants.kLblEdit)
                                                    .font(FontScheme
                                                        .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray701)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(22.0),
                                                           height: getRelativeHeight(18.0),
                                                           alignment: .topLeading)
                                                    .padding(.bottom, getRelativeHeight(5.0))
                                            }
                                            .frame(width: getRelativeWidth(300.0),
                                                   height: getRelativeHeight(23.0),
                                                   alignment: .leading)
                                            HStack {
                                                ZStack(alignment: .center) {
                                                    Image("img_image17")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(10.0),
                                                               height: getRelativeWidth(10.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipShape(Circle())
                                                        .clipShape(Circle())
                                                        .padding(.trailing, getRelativeWidth(8.0))
                                                    Image("img_image16")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(10.0),
                                                               height: getRelativeWidth(10.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipShape(Circle())
                                                        .clipShape(Circle())
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(4.44))
                                                    Image("img_image5")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(10.0),
                                                               height: getRelativeWidth(10.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipShape(Circle())
                                                        .clipShape(Circle())
                                                        .padding(.leading, getRelativeWidth(8.89))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(18.0),
                                                       height: getRelativeHeight(10.0),
                                                       alignment: .top)
                                                .clipShape(Capsule())
                                                Text(StringConstants.kMsgEnglishArabic)
                                                    .font(FontScheme
                                                        .kDMSansRegular(size: getRelativeHeight(10.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Black90066)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(73.0),
                                                           height: getRelativeHeight(14.0),
                                                           alignment: .topLeading)
                                            }
                                            .frame(width: getRelativeWidth(95.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .leading)
                                            .clipShape(Capsule())
                                            .padding(.trailing, getRelativeWidth(10.0))
                                        }
                                        .frame(width: getRelativeWidth(300.0),
                                               height: getRelativeHeight(39.0), alignment: .top)
                                        .padding(.top, getRelativeHeight(4.0))
                                        .padding(.bottom, getRelativeHeight(6.0))
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(50.0), alignment: .leading)
                                    Divider()
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(1.0), alignment: .leading)
                                        .background(ColorConstants.Black90026)
                                        .padding(.top, getRelativeHeight(16.0))
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(66.0), alignment: .center)
                                .padding(.bottom, getRelativeHeight(501.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(567.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(22.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(722.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(786.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ConfirmchangesView(),
                                   tag: "ConfirmchangesView",
                                   selection: $appointmentseditpageViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: CancellationandReschedulepolicyView(),
                                   tag: "CancellationandReschedulepolicyView",
                                   selection: $appointmentseditpageViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: Landingpage1View(),
                                   tag: "Landingpage1View",
                                   selection: $appointmentseditpageViewModel.nextScreen,
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

struct AppointmentseditpageView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentseditpageView()
    }
}
