import SwiftUI

struct tabCurve: Shape {
    
    var tabPoint : CGFloat
    
    var animatableData: CGFloat{
        get {return tabPoint}
        set {tabPoint = newValue}
    }
   
    func path(in rect: CGRect) -> Path{
        
        return Path {path in
        path.move(to: CGPoint(x: rect.width, y: rect.height))
        
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
            
        let mid = tabPoint
            path.move(to: CGPoint(x: mid - 40, y: rect.height))
            
            let to = CGPoint(x: mid, y: rect.height - 20)
            let contorl1 = CGPoint(x: mid - 15, y: rect.height )
            let contorl2 = CGPoint(x: mid - 15, y: rect.height - 20)
            
            let to1 = CGPoint(x: mid + 40, y: rect.height)
            let contorl3 = CGPoint(x: mid + 15, y: rect.height - 20)
            let contorl4 = CGPoint(x: mid + 15, y: rect.height )
            
            
            path.addCurve(to: to, control1: contorl1, control2: contorl2)
            path.addCurve(to: to1, control1: contorl3, control2: contorl4)

        
            
            
        }
    }
}

struct path_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

