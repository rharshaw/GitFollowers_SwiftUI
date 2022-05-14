//
//  Buttons.swift
//  GitFollowers_SwiftUI
//
//  Created by Rian Harshaw on 5/13/22.
//

import SwiftUI

struct ButtonViews: View {
    var body: some View {
        Button(action: {}) {
            Text("Green Button")
                .greenButtonMod()
        }
        
        Button(action: {}) {
            Text("Alert Button")
                .alertButtonMod()
        }
    }
}

struct Buttons: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.headline)
            .frame(width: 250, height: 50)
            
    }
}


struct ButtonViews_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViews()
            .previewLayout(.sizeThatFits)
    }
}
