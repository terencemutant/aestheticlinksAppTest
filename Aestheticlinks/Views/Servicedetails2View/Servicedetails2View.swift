import SwiftUI

struct Servicedetails2View: View {
    @StateObject var servicedetails2ViewModel = Servicedetails2ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack {
                        HStack {
                            HStack {
                                HStack {
                                    Image("img_unitedarabemi")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(13.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblDubai)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(42.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(6.0))
                                    Image("img_vector_gray_901_3x6")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(3.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(6.0))
                                }
                                .frame(width: getRelativeWidth(82.0),
                                       height: getRelativeHeight(21.0), alignment: .top)
                                .padding(.top, getRelativeHeight(5.0))
                                .padding(.bottom, getRelativeHeight(6.0))
                                Spacer()
                                Image("img_hamburgermenu")
                                    .resizable()
                                    .frame(width: getRelativeWidth(33.0),
                                           height: getRelativeWidth(33.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        servicedetails2ViewModel.nextScreen = "MenuView"
                                    }
                            }
                            .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(33.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(154.0))
                            .padding(.trailing, getRelativeWidth(15.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(67.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .shadow(color: ColorConstants.Black90026, radius: 15, x: 0, y: 5)
                        ZStack(alignment: .topLeading) {
                            Image("img_rectangle32")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(196.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
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
                                        .stroke(ColorConstants.WhiteA700,
                                                lineWidth: 1))
                                .background(ColorConstants.WhiteA700)
                                .padding(.bottom, getRelativeHeight(155.0))
                                .padding(.trailing, getRelativeWidth(353.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(196.0),
                               alignment: .leading)
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    Text(StringConstants.kLblBotox)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(46.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLbl45Mins)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(10.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray701)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(6.0))
                                        .padding(.leading, getRelativeWidth(12.0))
                                }
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(24.0), alignment: .leading)
                                .padding(.trailing)
                                Text(StringConstants.kMsgDubaiUnitedA)
                                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black90099)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(155.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(155.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            Spacer()
                            ZStack(alignment: .bottomLeading) {
                                Text(StringConstants.kMsg599Aed500A)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(124.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Divider()
                                    .frame(width: getRelativeWidth(47.0),
                                           height: getRelativeHeight(1.0),
                                           alignment: .bottomLeading)
                                    .background(ColorConstants.Cyan600)
                                    .padding(.top, getRelativeHeight(12.68))
                                    .padding(.trailing, getRelativeWidth(79.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(126.0), height: getRelativeHeight(18.0),
                                   alignment: .bottom)
                            .padding(.top, getRelativeHeight(23.0))
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(41.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                        HStack {
                            HStack {
                                Image("img_vector_gray_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(6.0),
                                           height: getRelativeHeight(11.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Image("img_female1363")
                                    .resizable()
                                    .frame(width: getRelativeWidth(8.0),
                                           height: getRelativeHeight(12.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kMsgForMaleFema)
                                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black90099)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(149.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(4.0))
                            }
                            .frame(width: getRelativeWidth(170.0), height: getRelativeHeight(16.0),
                                   alignment: .center)
                            Spacer()
                            Text(StringConstants.kMsgTillOctober13)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray701)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(95.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(16.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(15.0))
                        Text(StringConstants.kMsgAestheticsIsA2)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(67.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(22.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                        Button(action: {
                            servicedetails2ViewModel.nextScreen = "ScheduleDateView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblBookNow)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(9.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                            bottomLeft: 7.0, bottomRight: 7.0)
                                            .stroke(ColorConstants.Gray900,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0)
                                            .fill(ColorConstants.Gray900))
                                    .padding(.top, getRelativeHeight(297.0))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                            }
                        })
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                bottomRight: 7.0)
                                .stroke(ColorConstants.Gray900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                   bottomRight: 7.0)
                                .fill(ColorConstants.Gray900))
                        .padding(.top, getRelativeHeight(297.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(763.0),
                           alignment: .topLeading)
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CityfiltersView(),
                                   tag: "CityfiltersView",
                                   selection: $servicedetails2ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ScheduleDateView(),
                                   tag: "ScheduleDateView",
                                   selection: $servicedetails2ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MenuView(),
                                   tag: "MenuView",
                                   selection: $servicedetails2ViewModel.nextScreen,
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

struct Servicedetails2View_Previews: PreviewProvider {
    static var previews: some View {
        Servicedetails2View()
    }
}
