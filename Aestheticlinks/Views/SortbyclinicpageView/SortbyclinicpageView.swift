import SwiftUI

struct SortbyclinicpageView: View {
    @StateObject var sortbyclinicpageViewModel = SortbyclinicpageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblSortBy)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(43.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(9.0))
                    .padding(.horizontal, getRelativeWidth(10.0))
                HStack {
                    TextField(StringConstants.kLblRecommended,
                              text: $sortbyclinicpageViewModel.groupfiftytwoText)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                        .foregroundColor(ColorConstants.Gray901)
                        .padding()
                    Image("img_vector_black_905_2x4")
                        .resizable()
                        .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(2.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                bottomRight: 2.0)
                                .stroke(ColorConstants.Gray901,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                   bottomRight: 2.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.vertical, getRelativeHeight(3.0))
                        .padding(.leading, getRelativeWidth(30.0))
                        .padding(.trailing, getRelativeWidth(8.0))
                    Spacer()
                }
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(19.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                           bottomRight: 2.0))
                .padding(.top, getRelativeHeight(4.0))
                .padding(.horizontal, getRelativeWidth(10.0))
                ZStack(alignment: .leading) {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(9.0),
                               alignment: .topTrailing)
                        .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                bottomRight: 2.0)
                                .stroke(ColorConstants.Gray901,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                   bottomRight: 2.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.bottom, getRelativeHeight(7.12))
                        .padding(.leading, getRelativeWidth(174.0))
                    Group {
                        VStack {
                            HStack(spacing: 0) {
                                TextField(StringConstants.kMsgSortByNames,
                                          text: $sortbyclinicpageViewModel.group312Text)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                    .foregroundColor(ColorConstants.Gray901)
                                    .padding()
                                    .keyboardType(.alphabet)
                            }
                            .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                            Divider()
                                .background(ColorConstants.Gray901)
                        }
                        .onChange(of: sortbyclinicpageViewModel.group312Text) { newValue in

                            sortbyclinicpageViewModel.isValidGroup312Text = newValue
                                .isText(isMandatory: false)
                        }
                        .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(19.0),
                               alignment: .leading)
                        if !sortbyclinicpageViewModel.isValidGroup312Text {
                            Text("Please enter valid text.")
                                .foregroundColor(Color.red)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .frame(width: getRelativeWidth(191.0),
                                       height: getRelativeHeight(19.0), alignment: .leading)
                        }
                    }
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(19.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                           bottomRight: 2.0))
                .padding(.horizontal, getRelativeWidth(10.0))
                ZStack(alignment: .leading) {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(9.0),
                               alignment: .topTrailing)
                        .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                bottomRight: 2.0)
                                .stroke(ColorConstants.Gray901,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                   bottomRight: 2.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.bottom, getRelativeHeight(7.12))
                        .padding(.leading, getRelativeWidth(174.0))
                    Group {
                        VStack {
                            HStack(spacing: 0) {
                                TextField(StringConstants.kMsgSortByNames2,
                                          text: $sortbyclinicpageViewModel.group314Text)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                    .foregroundColor(ColorConstants.Gray901)
                                    .padding()
                                    .keyboardType(.alphabet)
                            }
                            .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                            Divider()
                                .background(ColorConstants.Gray901)
                        }
                        .onChange(of: sortbyclinicpageViewModel.group314Text) { newValue in

                            sortbyclinicpageViewModel.isValidGroup314Text = newValue
                                .isText(isMandatory: false)
                        }
                        .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(19.0),
                               alignment: .leading)
                        if !sortbyclinicpageViewModel.isValidGroup314Text {
                            Text("Please enter valid text.")
                                .foregroundColor(Color.red)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .frame(width: getRelativeWidth(191.0),
                                       height: getRelativeHeight(19.0), alignment: .leading)
                        }
                    }
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(19.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                           bottomRight: 2.0))
                .padding(.horizontal, getRelativeWidth(10.0))
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 1, id: \.self) { index in
                                ColumnpricelowtohCell()
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(191.0), alignment: .center)
                .padding(.horizontal, getRelativeWidth(10.0))
                ZStack(alignment: .leading) {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(9.0),
                               alignment: .topTrailing)
                        .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                bottomRight: 2.0)
                                .stroke(ColorConstants.Gray901,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                   bottomRight: 2.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.bottom, getRelativeHeight(6.99))
                        .padding(.leading, getRelativeWidth(174.0))
                    VStack {
                        HStack(spacing: 0) {
                            TextField(StringConstants.kMsgTopRatedServi,
                                      text: $sortbyclinicpageViewModel.group316Text)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .foregroundColor(ColorConstants.Gray901)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(18.0),
                               alignment: .leading)
                        Divider()
                            .background(ColorConstants.Gray901)
                    }
                    .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(18.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                           bottomRight: 2.0))
                .padding(.horizontal, getRelativeWidth(10.0))
                ZStack(alignment: .leading) {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(9.0),
                               alignment: .topTrailing)
                        .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                bottomRight: 2.0)
                                .stroke(ColorConstants.Gray901,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                   bottomRight: 2.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.bottom, getRelativeHeight(6.74))
                        .padding(.leading, getRelativeWidth(174.0))
                    VStack {
                        HStack(spacing: 0) {
                            TextField(StringConstants.kLblFavorites,
                                      text: $sortbyclinicpageViewModel.group318Text)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .foregroundColor(ColorConstants.Gray901)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(19.0),
                               alignment: .leading)
                        Divider()
                            .background(ColorConstants.Gray901)
                    }
                    .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(19.0),
                           alignment: .leading)
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(19.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                           bottomRight: 2.0))
                .padding(.horizontal, getRelativeWidth(10.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblDone)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(10.0)))
                            .fontWeight(.semibold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(7.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(30.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(ColorConstants.Gray900))
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                    }
                })
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(30.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                           bottomRight: 4.0)
                        .fill(ColorConstants.Gray900))
                .padding(.top, getRelativeHeight(20.0))
                .padding(.horizontal, getRelativeWidth(10.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblReset)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(10.0)))
                            .fontWeight(.semibold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(7.0))
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(30.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Gray900,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.vertical, getRelativeHeight(4.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                    }
                })
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(30.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                        bottomRight: 4.0)
                        .stroke(ColorConstants.Gray900,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                           bottomRight: 4.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.vertical, getRelativeHeight(4.0))
                .padding(.horizontal, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(280.0),
                   alignment: .leading)
            .overlay(RoundedCorners().stroke(ColorConstants.Black9004c, lineWidth: 0))
            .background(RoundedCorners().fill(ColorConstants.WhiteA700))
        }
        .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(280.0))
        .shadow(color: ColorConstants.Black90026, radius: 15, x: 0, y: 0)
        .hideNavigationBar()
    }
}

struct SortbyclinicpageView_Previews: PreviewProvider {
    static var previews: some View {
        SortbyclinicpageView()
    }
}
