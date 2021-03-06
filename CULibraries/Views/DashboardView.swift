/*
DashboardView.swift

CULibraries, an Open Source Concordia University libraries app.
Created using the Concordia Opendata API.

https://github.com/opendataConcordiaU/documentation

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

import SwiftUI

// This extension allows us to clip specific corners of shapes rather
// than all of them at once
// Usage: .cornerRadius(20, corners: [.topLeft, .bottomRight])
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

// Define the rounded corner shape so we can use our corner specific rounding function

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct DashboardView: View {

    @EnvironmentObject var applogic: AppLogic

    var body: some View {

        VStack {

            HeaderView()
            ImageView()
            OccupancyView()

            VStack {
                HStack {
                    Spacer()
                Text("\(self.applogic.websterOccupancyError)")
                    .font(.footnote)
                    .fixedSize(horizontal: false, vertical: true)
                  //  .padding()
                    Spacer()
              //  .fixedSize(horizontal: true, vertical: false)
                }.padding()

                HStack {
                Spacer()
                    Text("\(self.applogic.vanierOccupancyError)")
                    .font(.footnote)
                    .fixedSize(horizontal: false, vertical: true)
               // .padding()
             //   .fixedSize(horizontal: true, vertical: false)
                    Spacer()
                }.padding()
            }

            Spacer()
            FooterView()
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView().environmentObject(AppLogic())
    }
}
