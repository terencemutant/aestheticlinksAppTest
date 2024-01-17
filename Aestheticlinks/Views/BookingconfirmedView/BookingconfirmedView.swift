import SwiftUI

struct BookingconfirmedView: View {
    @StateObject var bookingconfirmedViewModel = BookingconfirmedViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack {
                            Image("img_image12")
                                .resizable()
                                .frame(width: getRelativeWidth(135.0),
                                       height: getRelativeHeight(26.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(20.0))
                                .padding(.bottom, getRelativeHeight(21.0))
                                .padding(.horizontal, getRelativeWidth(129.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(67.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .leading)
                            .background(ColorConstants.Black9004c)
                        Button(action: {
                            bookingconfirmedViewModel.nextScreen = "Landingpage1View"
                        }, label: {
                            Image("img_closesvgrepoc_gray_501")
                        })
                        .frame(width: getRelativeWidth(25.0), height: getRelativeWidth(25.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 12.5, topRight: 12.5, bottomLeft: 12.5,
                                                bottomRight: 12.5)
                                .stroke(ColorConstants.Black9004c,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 12.5, topRight: 12.5, bottomLeft: 12.5,
                                                   bottomRight: 12.5)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(109.0),
                           alignment: .leading)
                    VStack {
                        VStack {
                            Image("img_checkbadgesvg")
                                .resizable()
                                .frame(width: getRelativeWidth(49.0),
                                       height: getRelativeWidth(49.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(31.0))
                                .padding(.horizontal, getRelativeWidth(28.0))
                            Text(StringConstants.kMsgBookingSuccess)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(162.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(23.0))
                                .padding(.horizontal, getRelativeWidth(28.0))
                            Text(StringConstants.kMsgLoremIpsumDol6)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(241.0),
                                       height: getRelativeHeight(37.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(28.0))
                            Divider()
                                .frame(width: getRelativeWidth(304.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Black9004c)
                                .padding(.top, getRelativeHeight(24.0))
                                .padding(.horizontal, getRelativeWidth(28.0))
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    Text(StringConstants.kLblName2)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(43.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblJamesSmith)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(91.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                }
                                .frame(width: getRelativeWidth(304.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblServiceName)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(98.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblClinicName)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(85.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing, getRelativeWidth(10.0))
                                        Text(StringConstants.kLblExpertName)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(90.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing, getRelativeWidth(10.0))
                                        Text(StringConstants.kLblClinicLocation)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(101.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblDate)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(34.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing, getRelativeWidth(10.0))
                                        Text(StringConstants.kLblTime)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(35.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(101.0),
                                           height: getRelativeHeight(126.0), alignment: .center)
                                    Spacer()
                                    VStack(alignment: .trailing, spacing: 0) {
                                        Text(StringConstants.kMsgFacialTreatmen2)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(118.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .padding(.leading)
                                            .padding(.leading)
                                        Text(StringConstants.kLblClinicName2)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(84.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(10.0))
                                        Text(StringConstants.kLblRobertWilliams)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(108.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(35.0))
                                        Text(StringConstants.kMsgAlBarshaDubai)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(144.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        ZStack(alignment: .bottomTrailing) {
                                            Text(StringConstants.kMsgOctober182022)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray901)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(113.0),
                                                       height: getRelativeHeight(20.0),
                                                       alignment: .topLeading)
                                                .padding(.bottom, getRelativeHeight(21.0))
                                            Text(StringConstants.kLbl13001400)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray901)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(82.0),
                                                       height: getRelativeHeight(20.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(20.53))
                                                .padding(.leading, getRelativeWidth(31.23))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(113.0),
                                               height: getRelativeHeight(41.0),
                                               alignment: .trailing)
                                        .padding(.leading, getRelativeWidth(30.0))
                                    }
                                    .frame(width: getRelativeWidth(145.0),
                                           height: getRelativeHeight(126.0), alignment: .center)
                                }
                                .frame(width: getRelativeWidth(305.0),
                                       height: getRelativeHeight(126.0), alignment: .leading)
                            }
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(149.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(28.0))
                            .padding(.horizontal, getRelativeWidth(28.0))
                            Divider()
                                .frame(width: getRelativeWidth(304.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Black9004c)
                                .padding(.top, getRelativeHeight(28.0))
                                .padding(.horizontal, getRelativeWidth(28.0))
                            Text(StringConstants.kLblThankYou)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(90.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(22.0))
                                .padding(.horizontal, getRelativeWidth(28.0))
                            Text(StringConstants.kMsgAddToMyCalen)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(8.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(1.0))
                                .padding(.horizontal, getRelativeWidth(28.0))
                                .onTapGesture {
                                    bookingconfirmedViewModel
                                        .nextScreen = "LandingpageCliniclistviewView"
                                }
                        }
                        .frame(width: getRelativeWidth(362.0), height: getRelativeHeight(500.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.horizontal, getRelativeWidth(14.0))
                        VStack {
                            Button(action: {
                                bookingconfirmedViewModel.nextScreen = "AppointmentsscheduledView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kMsgViewAppointmen)
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
                            Text(StringConstants.kMsgExploreMoreSe)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(109.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.horizontal, getRelativeWidth(127.0))
                                .onTapGesture {
                                    bookingconfirmedViewModel
                                        .nextScreen = "LandingpageCliniclistviewView"
                                }
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(68.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0))
                        .padding(.top, getRelativeHeight(61.0))
                        .padding(.horizontal, getRelativeWidth(14.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(629.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(21.0))
                    .padding(.bottom, getRelativeHeight(20.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Bluegray50)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: Landingpage1View(),
                                   tag: "Landingpage1View",
                                   selection: $bookingconfirmedViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LandingpageCliniclistviewView(),
                                   tag: "LandingpageCliniclistviewView",
                                   selection: $bookingconfirmedViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AppointmentsscheduledView(),
                                   tag: "AppointmentsscheduledView",
                                   selection: $bookingconfirmedViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Bluegray50)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct BookingconfirmedView_Previews: PreviewProvider {
    static var previews: some View {
        BookingconfirmedView()
    }
}
