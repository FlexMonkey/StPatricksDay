import UIKit
import XCPlayground

//: # Happy Saint Patricks's Day from [http://flexmonkey.blogspot.co.uk/](http://flexmonkey.blogspot.co.uk/)

let layer = CAShapeLayer()
layer.strokeColor = UIColor.greenColor().CGColor
layer.fillColor = UIColor(red: 0.33, green: 0.5, blue: 0.33, alpha: 1).CGColor
layer.lineWidth = 12
layer.lineCap = kCALineCapRound
layer.lineJoin = kCALineCapRound

let view = UIView(frame: CGRect(x: 0, y: 0, width: 640, height: 640 ))
view.layer.addSublayer(layer)

XCPlaygroundPage.currentPage.liveView = view

let points: [CGPoint] = 0.stride(to: M_PI * 2, by: 0.01).map
{
    let radius = (sin(2 * $0) + 0.25 * sin(6.0 * $0)) * 300
    
    let x = 320.0 + (cos($0) * radius)
    let y = 320.0 + (sin($0) * radius)
    
    return CGPoint(x: x, y: y)
}

let path = CGPathCreateMutable()

CGPathAddLines(path, nil, points, points.count)

layer.path = path
