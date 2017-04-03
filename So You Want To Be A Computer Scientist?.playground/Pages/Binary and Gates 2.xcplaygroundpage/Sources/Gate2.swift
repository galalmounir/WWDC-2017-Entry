import Foundation
import SpriteKit
import PlaygroundSupport

let frame = CGRect(x: 0, y: 0, width: 500, height: 550)
let view = SKView(frame: frame)
let scene = MainScene(size: frame.size)

var gatePadding = 100
var gateScale = 0.15

var result1: Button?
var result2: Button?
var result3: Button?
var result4: Button?
var result5: Button?
var result6: Button?
var result7: Button?
var result8: Button?
var result9: Button?
var result10: Button?
var done: Button?

func checkWin(){
    if (result1?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) && result2?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) && result3?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) && result4?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)){
        win()
    }
}

func win(){
    let check = SKSpriteNode(imageNamed: "Correct")
    check.size = CGSize(width: frame.maxX, height: 200)
    check.position = CGPoint(x: frame.midX, y: frame.midY)
    scene.addToView(node: check)
}

func updateView(){
    scene.updateView()
}

func change1(){
    if result1?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1){
        result1?.setButtonColor(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    else if result1?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1){
        result1?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else{
        result1?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    updateView()
}

func change2(){
    if result2?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1){
        result2?.setButtonColor(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    else if result2?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1){
        result2?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else{
        result2?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    updateView()
}

func change3(){
    if result3?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1){
        result3?.setButtonColor(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    else if result3?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1){
        result3?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else{
        result3?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    updateView()
}

func change4(){
    if result4?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1){
        result4?.setButtonColor(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    else if result4?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1){
        result4?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else{
        result4?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    updateView()
}

func change5(){
    if result5?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1){
        result5?.setButtonColor(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    else if result5?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1){
        result5?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else{
        result5?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    updateView()
}

public func loadPage(){

    let and = Gate(in1: 0, in2: 1, gate: "AND")
    and.sprite.xScale = CGFloat(gateScale)
    and.sprite.yScale = CGFloat(gateScale)
    and.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    and.sprite.position = CGPoint(x: frame.midX/2, y: CGFloat(gatePadding) + 100)
    
    and.input1.setSize(size: CGSize(width: 12, height: 12))
    and.input2.setSize(size: CGSize(width: 12, height: 12))
    and.output.setSize(size: CGSize(width: 35, height: 35))
    
    and.input1.box.position = CGPoint(x: and.sprite.position.x - (and.sprite.size.width/2) - (and.input1.box.size.width/2), y: and.sprite.position.y + and.sprite.size.height/4)
    and.input2.box.position = CGPoint(x: and.sprite.position.x - (and.sprite.size.width/2) - (and.input2.box.size.width/2), y: and.sprite.position.y - and.sprite.size.height/4)
    
    result1 = Button(text: "", pos: CGPoint(x: and.sprite.position.x + (and.sprite.size.width/2) + (and.output.box.size.width/2), y: and.sprite.position.y), call: change1)
    result1?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: and.sprite)
    scene.addToView(node: and.input1.box)
    scene.addToView(node: and.input2.box)
    
    
    
    var not = Gate(input: 1, gate: "NOT")
    not.sprite.xScale = CGFloat(gateScale)
    not.sprite.yScale = CGFloat(gateScale)
    not.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    not.sprite.position = CGPoint(x: frame.midX/2, y: CGFloat(gatePadding) + 200)
    
    not.input1.setSize(size: CGSize(width: 12, height: 12))
    not.output.setSize(size: CGSize(width: 35, height: 35))
    
    not.input1.box.position = CGPoint(x: not.sprite.position.x - (not.sprite.size.width/2) - (not.input1.box.size.width/2), y: not.sprite.position.y)
    
    result2 = Button(text: "", pos: CGPoint(x: not.sprite.position.x + (not.sprite.size.width/2) + (not.output.box.size.width/2), y: not.sprite.position.y), call: change2)
    result2?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: not.sprite)
    scene.addToView(node: not.input1.box)
    

    
    let or = Gate(in1: 0, in2: 0, gate: "OR")
    or.sprite.xScale = CGFloat(gateScale)
    or.sprite.yScale = CGFloat(gateScale)
    or.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    or.sprite.position = CGPoint(x: frame.midX, y: CGFloat(gatePadding) + 150)
    
    or.input1.setSize(size: CGSize(width: 12, height: 12))
    or.input2.setSize(size: CGSize(width: 12, height: 12))
    or.output.setSize(size: CGSize(width: 35, height: 35))
    
    or.input1.box.position = CGPoint(x: or.sprite.position.x - (or.sprite.size.width/2) - (or.input1.box.size.width/2), y: or.sprite.position.y + or.sprite.size.height/4)
    or.input2.box.position = CGPoint(x: or.sprite.position.x - (or.sprite.size.width/2) - (or.input2.box.size.width/2), y: or.sprite.position.y - or.sprite.size.height/4)
    
    result3 = Button(text: "", pos: CGPoint(x: or.sprite.position.x + (or.sprite.size.width/2) + (or.output.box.size.width/2), y: or.sprite.position.y), call: change3)
    result3?.setSize(size: CGSize(width: 35, height: 35))
    
    let line1 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: Double(gatePadding/2) - 10, height: gateScale*35))
    line1.anchorPoint = CGPoint(x:0, y:0.5)
    line1.position = CGPoint(x: not.sprite.position.x + (not.sprite.size.width/2) + CGFloat(gateScale * 35)*2 + 1, y: not.sprite.position.y)
    
    let line2 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: gateScale * 35, height: Double(or.sprite.size.height - (or.sprite.size.height/4)) - (gateScale * 35)))
    line2.anchorPoint = CGPoint(x:1, y:1)
    line2.position = CGPoint(x: line1.position.x + line1.size.width, y: not.sprite.position.y)
    
    let line3 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: 18, height: gateScale*35))
    line3.anchorPoint = CGPoint(x:0, y:0.5)
    line3.position = CGPoint(x: line2.position.x - CGFloat(gateScale*35), y: or.sprite.position.y + (or.sprite.size.height/4))
    
    let line4 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: Double(gatePadding/2) - 15, height: gateScale*35))
    line4.anchorPoint = CGPoint(x:0, y:0.5)
    line4.position = CGPoint(x: and.sprite.position.x + (and.sprite.size.width/2) + CGFloat(gateScale * 35)*2 + 1, y: and.sprite.position.y)
    
    let line5 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: gateScale * 35, height: Double(or.sprite.size.height - (or.sprite.size.height/4)) - (gateScale * 35)))
    line5.anchorPoint = CGPoint(x:1, y:0)
    line5.position = CGPoint(x: line4.position.x + line4.size.width, y: and.sprite.position.y)

    let line6 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: 20, height: gateScale*35))
    line6.anchorPoint = CGPoint(x:0, y:0.5)
    line6.position = CGPoint(x: line5.position.x - CGFloat(gateScale*35), y: or.sprite.position.y - (or.sprite.size.height/4))
    
    let line7 = SKSpriteNode(color: #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1), size: CGSize(width: 60, height: gateScale*35))
    line7.anchorPoint = CGPoint(x: 0, y: 0.5)
    line7.position = CGPoint(x: or.sprite.position.x + or.sprite.size.width/2, y: or.sprite.position.y)
    
    scene.addToView(node: or.sprite)
    scene.addToView(node: line1)
    scene.addToView(node: line2)
    scene.addToView(node: line3)
    scene.addToView(node: line4)
    scene.addToView(node: line5)
    scene.addToView(node: line6)
    scene.addToView(node: line7)
    scene.addButton(button: result1!)
    scene.addButton(button: result2!)
    scene.addButton(button: result3!)
    
    not = Gate(input: 0, gate: "NOT")
    not.sprite.xScale = CGFloat(gateScale)
    not.sprite.yScale = CGFloat(gateScale)
    not.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    not.sprite.position = CGPoint(x: (frame.midX/2) + frame.midX, y: CGFloat(gatePadding) + 150)
    
    not.output.setSize(size: CGSize(width: 35, height: 35))
    
    result4 = Button(text: "", pos: CGPoint(x: not.sprite.position.x + (not.sprite.size.width/2) + (not.output.box.size.width/2), y: not.sprite.position.y), call: change4)
    result4?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: not.sprite)
    scene.addButton(button: result4!)
    
    let done = Button(text: "Done", pos: CGPoint(x: frame.midX, y: 50), call: checkWin)
    done.setSize(size: CGSize(width: 100, height: 30))
    
    scene.addButton(button: done)
    
    scene.scaleMode = .aspectFit
    scene.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    view.presentScene(scene)
    
    PlaygroundPage.current.liveView = view
}
