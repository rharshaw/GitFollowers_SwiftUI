//
//  View Extensions.swift
//  GitFollowers_SwiftUI
//
//  Created by Rian Harshaw on 5/13/22.
//

import SwiftUI



// MARK: BUTTON MODS

extension View {
    func greenButtonMod() -> some View {
        modifier(Buttons())
            .background(.green)
            .cornerRadius(10)
    }
    
    func alertButtonMod() -> some View {
        modifier(Buttons())
            .background(.pink)
            .cornerRadius(10)
    }
}
