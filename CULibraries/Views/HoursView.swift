/*
HoursView.swift

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

struct HoursView: View {

    @EnvironmentObject var applogic: AppLogic

    var body: some View {
        VStack {
            NavigationView {

            List(applogic.hours) { item in
            HStack {
                Text(item.service)
                .font(.body)
                .frame(alignment: .leading)

                Spacer()
                Text(item.text)
                .font(.body)
            }
            .navigationBarTitle(Text("Today's Hours"))
            }
                Spacer()
            }
        FooterView()
        }
    }
}

struct HoursView_Previews: PreviewProvider {
    static var previews: some View {
        HoursView().environmentObject(AppLogic())
    }
}
