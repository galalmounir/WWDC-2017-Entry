import Foundation
import SpriteKit
import PlaygroundSupport

var number: Int = 0
let frame = CGRect(x: 0, y: 0, width: 500, height: 400)

let view = SKView(frame: frame)
let scene = MainScene(size: frame.size)

var digit1: Button?
var digit2: Button?
var digit3: Button?
var digit4: Button?

func win(){
    var decimal = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    decimal.fontSize = 60
    decimal.fontColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
    decimal.text = "3"
    decimal.position = CGPoint(x: 450, y:120)
    scene.addToView(node: decimal)
    
    decimal = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    decimal.fontSize = 60
    decimal.fontColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
    decimal.text = "6"
    decimal.position = CGPoint(x: 450, y: 200)
    scene.addToView(node: decimal)
    
    decimal = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    decimal.fontSize = 60
    decimal.fontColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
    decimal.text = "9"
    decimal.position = CGPoint(x: 450, y: 30)
    scene.addToView(node: decimal)
}

func updateView(){
    if digit1?.string.text == "1" && digit2?.string.text == "0" && digit3?.string.text == "0" && digit4?.string.text == "1" {
        win()
    }
    scene.updateView()
}

func change1(){
    if digit1?.string.text == "1"{
        digit1?.string.text = "0"
        digit1?.string.fontColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    else if digit1?.string.text == "0"{
        digit1?.string.text = "1"
        digit1?.string.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    else{
        digit1?.string.text = "1"
        digit1?.string.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    updateView()
}

func change2(){
    if digit2?.string.text == "1"{
        digit2?.string.text = "0"
        digit2?.string.fontColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    else if digit2?.string.text == "0"{
        digit2?.string.text = "1"
        digit2?.string.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    else{
        digit2?.string.text = "1"
        digit2?.string.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    updateView()
}

func change3(){
    if digit3?.string.text == "1"{
        digit3?.string.text = "0"
        digit3?.string.fontColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    else if digit3?.string.text == "0"{
        digit3?.string.text = "1"
        digit3?.string.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    else{
        digit3?.string.text = "1"
        digit3?.string.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    updateView()
}

func change4(){
    if digit4?.string.text == "1"{
        digit4?.string.text = "0"
        digit4?.string.fontColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    else if digit4?.string.text == "0"{
        digit4?.string.text = "1"
        digit4?.string.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    else{
        digit4?.string.text = "1"
        digit4?.string.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    updateView()
}

public func loadPage(){
    
    let line = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: 300, height: 3))
    line.position = CGPoint(x: frame.midX, y: 100)
    scene.addToView(node: line)

    var y = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    y.text = "0"
    y.fontSize = 60
    y.fontColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    y.position = CGPoint(x: 145, y:120)
    scene.addToView(node: y)

    y = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    y.text = "0"
    y.fontSize = 60
    y.fontColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    y.position = CGPoint(x: 215, y: 120)
    scene.addToView(node: y)

    y = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    y.text = "1"
    y.fontSize = 60
    y.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    y.position = CGPoint(x: 285, y: 120)
    scene.addToView(node: y)
    
    y = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    y.text = "1"
    y.fontSize = 60
    y.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    y.position = CGPoint(x: 355, y: 120)
    scene.addToView(node: y)
    
    y = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    y.text = "0"
    y.fontSize = 60
    y.fontColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    y.position = CGPoint(x: 145, y: 200)
    scene.addToView(node: y)
    
    y = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    y.text = "1"
    y.fontSize = 60
    y.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    y.position = CGPoint(x: 215, y: 200)
    scene.addToView(node: y)
    
    y = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    y.text = "1"
    y.fontSize = 60
    y.fontColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    y.position = CGPoint(x: 285, y: 200)
    scene.addToView(node: y)
    
    y = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    y.text = "0"
    y.fontSize = 60
    y.fontColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    y.position = CGPoint(x: 355, y: 200)
    scene.addToView(node: y)
    
    y = SKLabelNode(fontNamed: "CourierNewPS-BoldMT")
    y.text = "+"
    y.fontSize = 60
    y.fontColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    y.position = CGPoint(x: 80, y: 160)
    scene.addToView(node: y)
    
    digit1 = Button(text: "_", pos: CGPoint(x: 145, y: 50), call: change1)
    digit2 = Button(text: "_", pos: CGPoint(x: 215, y: 50), call: change2)
    digit3 = Button(text: "_", pos: CGPoint(x: 285, y: 50), call: change3)
    digit4 = Button(text: "_", pos: CGPoint(x: 355, y: 50), call: change4)
    
    digit1?.setSize(size: CGSize(width: 60, height: 60))
    digit1?.string.fontSize = 60
    scene.addButton(button: digit1!)
    
    digit2?.setSize(size: CGSize(width: 60, height: 60))
    digit2?.string.fontSize = 60
    scene.addButton(button: digit2!)
    
    digit3?.setSize(size: CGSize(width: 60, height: 60))
    digit3?.string.fontSize = 60
    scene.addButton(button: digit3!)
    
    digit4?.setSize(size: CGSize(width: 60, height: 60))
    digit4?.string.fontSize = 60
    scene.addButton(button: digit4!)
    
    scene.scaleMode = .aspectFit
    scene.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    view.presentScene(scene)
    
    PlaygroundPage.current.liveView = view
}
