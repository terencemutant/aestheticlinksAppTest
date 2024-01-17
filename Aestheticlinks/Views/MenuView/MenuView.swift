import SwiftUI

struct MenuView: View {
    @StateObject var menuViewModel = MenuViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                ZStack {
                    VStack {
                        HStack {
                            Image("img_image12")
                                .resizable()
                                .frame(width: getRelativeWidth(135.0),
                                       height: getRelativeHeight(26.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(13.0))
                            Button(action: {}, label: {
                                Image("img_closesvgrepoc_black_905")
                            })
                            .frame(width: getRelativeWidth(25.0), height: getRelativeWidth(25.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 12.5, topRight: 12.5, bottomLeft: 12.5,
                                                    bottomRight: 12.5)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                       bottomLeft: 12.5, bottomRight: 12.5)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(14.0))
                            .padding(.leading, getRelativeWidth(74.0))
                        }
                        .frame(width: getRelativeWidth(234.0), height: getRelativeHeight(39.0),
                               alignment: .trailing)
                        .padding(.leading, getRelativeWidth(10.0))
                        HStack {
                            HStack {
                                Button(action: {}, label: {
                                    Image("img_homesvgrepoco")
                                })
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                        bottomLeft: 20.0, bottomRight: 20.0)
                                        .stroke(ColorConstants.Black9004c,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(Color.clear.opacity(0.7)))
                                Button(action: {
                                    menuViewModel.nextScreen = "AppointmentsscheduledView"
                                }, label: {
                                    Image("img_group98")
                                })
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                        bottomLeft: 20.0, bottomRight: 20.0)
                                        .stroke(ColorConstants.Black9004c,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.leading, getRelativeWidth(30.0))
                            }
                            .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            Button(action: {
                                menuViewModel.nextScreen = "ProfileView"
                            }, label: {
                                Image("img_usersvgrepoco_bluegray_901")
                            })
                            .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                    bottomRight: 20.0)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.leading, getRelativeWidth(100.0))
                        }
                        .frame(width: getRelativeWidth(250.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(14.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                        HStack {
                            Text(StringConstants.kLblHome)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(8.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black90099)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                            Text(StringConstants.kLblMyAppointments)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(8.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black90099)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(70.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(23.0))
                            Text(StringConstants.kLblDiscover)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(8.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black90099)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(35.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(16.0))
                            Text(StringConstants.kLblUser)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(8.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black90099)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(46.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(233.0), height: getRelativeHeight(13.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(8.0))
                        Divider()
                            .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(4.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                       bottomRight: 2.0)
                                    .fill(ColorConstants.Black905))
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.horizontal, getRelativeWidth(100.0))
                    }
                    .frame(width: getRelativeWidth(292.0), height: getRelativeHeight(133.0),
                           alignment: .bottomTrailing)
                    .padding(.top, getRelativeHeight(65.0))
                    .padding(.leading, getRelativeWidth(72.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(208.0),
                       alignment: .leading)
                .background(RoundedCorners(bottomLeft: 25.0, bottomRight: 25.0)
                    .fill(ColorConstants.WhiteA700))
                .shadow(color: ColorConstants.Black90026, radius: 4, x: 0, y: 4)
                FabButton(action: {
                    menuViewModel.nextScreen = "LandingDiscoverView"
                }, image: "img_group103",
                frameInfo: (Double(getRelativeWidth(40.0)),
                            Double(getRelativeHeight(40.0))))
                    .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                           alignment: .bottomTrailing)
                    .clipShape(Circle())
                    .padding(.top, getRelativeHeight(118.0))
                    .padding(.leading, getRelativeWidth(212.0))
                Group {
                    NavigationLink(destination: LandingDiscoverView(),
                                   tag: "LandingDiscoverView",
                                   selection: $menuViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ProfileView(),
                                   tag: "ProfileView",
                                   selection: $menuViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AppointmentsscheduledView(),
                                   tag: "AppointmentsscheduledView",
                                   selection: $menuViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(208.0))
        }
        .hideNavigationBar()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
