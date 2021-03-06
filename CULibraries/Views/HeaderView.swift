/*
HeaderView.swift

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

struct HeaderView: View {
    var body: some View {
        VStack {
             HStack {
                Spacer()
                Text("CU Libraries")
                .font(.body)
                .foregroundColor(Color.white)
                .padding(.top, 30)
                Spacer()
            }
            .padding()
            .background(Color.init(.systemIndigo))
            .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
        }.edgesIgnoringSafeArea(.top)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
