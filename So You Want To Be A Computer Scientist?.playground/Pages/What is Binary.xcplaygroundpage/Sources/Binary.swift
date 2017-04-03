import Foundation
import SpriteKit
import PlaygroundSupport

var number: Int = 0
let frame = CGRect(x: 0, y: 250, width: 500, height: 300)

let view = SKView(frame: frame)
let scene = MainScene(size: frame.size)
let decimal = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
let binary = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")

func updateView(){
    decimal.text = String(number)
    binary.text = String(number, radix: 2)
    scene.updateView()
}

func add(){
    number = number + 1
    updateView()
}

func sub(){
    number = number - 1
    updateView()
}

public func loadPage(){
    
    var x = Button(text: "+", pos: CGPoint(x: frame.midX - 20, y: 30), call: add)
    x.setSize(size: CGSize(width: 30, height: 30))
    scene.addButton(button: x)
    
    x = Button(text: "-", pos: CGPoint(x: frame.midX + 20, y: 30), call: sub)
    x.setSize(size: CGSize(width: 30, height: 30))
    scene.addButton(button: x)
    
    var y = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    y.text = "Decimal"
    y.fontSize = 30
    y.fontColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    y.position = CGPoint(x: frame.midX/2, y:100)
    scene.addToView(node: y)
    
    y = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    y.text = "Binary"
    y.fontSize = 30
    y.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    y.position = CGPoint(x: frame.midX + frame.midX/2, y: 100)
    scene.addToView(node: y)
    
    decimal.text = String(number)
    decimal.fontSize = 30
    decimal.fontColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    decimal.position = CGPoint(x: frame.midX/2, y: 70)
    scene.addToView(node: decimal)
    
    binary.text = String(number, radix: 2)
    binary.fontSize = 30
    binary.fontColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    binary.position = CGPoint(x: frame.midX/2 + frame.midX, y: 70)
    scene.addToView(node: binary)
    
    scene.scaleMode = .aspectFit
    scene.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    view.presentScene(scene)
    
    PlaygroundPage.current.liveView = view
}
