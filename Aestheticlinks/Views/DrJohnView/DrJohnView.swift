import SwiftUI

struct DrJohnView: View {
    @StateObject var drJohnViewModel = DrJohnViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgServicesOffere)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(225.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(7.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack {
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        RowrectangletwentynineCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(363.0), alignment: .center)
                        Divider()
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Black90026)
                            .padding(.top, getRelativeHeight(14.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(397.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(4.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: Servicedetails2View(),
                                   tag: "Servicedetails2View",
                                   selection: $drJohnViewModel.nextScreen,
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

struct DrJohnView_Previews: PreviewProvider {
    static var previews: some View {
        DrJohnView()
    }
}
