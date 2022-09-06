//
//  BottomPicture.swift
//  adopti
//
//  Created by Zahra chouchane on 6/9/2022.
//

import SwiftUI

struct BottomPicture: View {
     var ImgName: String

     var ShadowColor: String
    
    var body: some View {
        
         Image(ImgName)
             .shadow(color: Color(ShadowColor), radius: 40, x: 0, y: 0)    }
}

struct BottomPicture_Previews: PreviewProvider {
    static var previews: some View {
        BottomPicture(ImgName: "cat", ShadowColor: "PrimaryPink" )
    }
}
