import Foundation
import SpriteKit
import PlaygroundSupport

var number: Int = 0
let frame = CGRect(x: 0, y: 0, width: 500, height: 700)

let view = SKView(frame: frame)
let scene = MainScene(size: frame.size)

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

let gateScale = 0.15

func checkWin(){
    if (result1?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) && result2?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) && result3?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) && result4?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)){
        winAND()
    }
    
    if (result5?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) && result6?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) && result7?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) && result8?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)){
        winOR()
    }
    
    if (result9?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) && result10?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)){
        winNOT()
    }
}

func winAND(){
    let check = SKSpriteNode(imageNamed: "Correct")
    check.size = CGSize(width: frame.maxX/2, height: 200)
    check.position = CGPoint(x: frame.midX, y: 450)
    scene.addToView(node: check)
}

func winOR(){
    let check = SKSpriteNode(imageNamed: "Correct")
    check.size = CGSize(width: frame.maxX/2, height: 200)
    check.position = CGPoint(x: frame.midX, y: 250)
    scene.addToView(node: check)
}

func winNOT(){
    let check = SKSpriteNode(imageNamed: "Correct")
    check.size = CGSize(width: frame.maxX/2, height: 150)
    check.position = CGPoint(x: frame.midX, y: 70)
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

func change6(){
    if result6?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1){
        result6?.setButtonColor(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    else if result6?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1){
        result6?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else{
        result6?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    updateView()
}

func change7(){
    if result7?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1){
        result7?.setButtonColor(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    else if result7?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1){
        result7?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else{
        result7?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    updateView()
}

func change8(){
    if result8?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1){
        result8?.setButtonColor(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    else if result8?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1){
        result8?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else{
        result8?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    updateView()
}

func change9(){
    if result9?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1){
        result9?.setButtonColor(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    else if result9?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1){
        result9?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else{
        result9?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    updateView()
}

func change10(){
    if result10?.getButtonColor() == #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1){
        result10?.setButtonColor(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    else if result10?.getButtonColor() == #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1){
        result10?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    else{
        result10?.setButtonColor(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
    updateView()
}

public func loadPage(){
    var and = Gate(in1: 0, in2: 0, gate: "AND")
    and.sprite.xScale = CGFloat(gateScale)
    and.sprite.yScale = CGFloat(gateScale)
    and.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    and.sprite.position = CGPoint(x: 100, y: 500)
    
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
    scene.addButton(button: result1!)
    
    and = Gate(in1: 1, in2: 0, gate: "AND")
    and.sprite.xScale = CGFloat(gateScale)
    and.sprite.yScale = CGFloat(gateScale)
    and.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    and.sprite.position = CGPoint(x: 250, y: 500)
    
    and.input1.setSize(size: CGSize(width: 12, height: 12))
    and.input2.setSize(size: CGSize(width: 12, height: 12))
    and.output.setSize(size: CGSize(width: 35, height: 35))
    
    and.input1.box.position = CGPoint(x: and.sprite.position.x - (and.sprite.size.width/2) - (and.input1.box.size.width/2), y: and.sprite.position.y + and.sprite.size.height/4)
    and.input2.box.position = CGPoint(x: and.sprite.position.x - (and.sprite.size.width/2) - (and.input2.box.size.width/2), y: and.sprite.position.y - and.sprite.size.height/4)
    
    result2 = Button(text: "", pos: CGPoint(x: and.sprite.position.x + (and.sprite.size.width/2) + (and.output.box.size.width/2), y: and.sprite.position.y), call: change2)
    result2?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: and.sprite)
    scene.addToView(node: and.input1.box)
    scene.addToView(node: and.input2.box)
    scene.addButton(button: result2!)
    
    and = Gate(in1: 0, in2: 1, gate: "AND")
    and.sprite.xScale = CGFloat(gateScale)
    and.sprite.yScale = CGFloat(gateScale)
    and.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    and.sprite.position = CGPoint(x: 400, y: 500)
    
    and.input1.setSize(size: CGSize(width: 12, height: 12))
    and.input2.setSize(size: CGSize(width: 12, height: 12))
    and.output.setSize(size: CGSize(width: 35, height: 35))
    
    and.input1.box.position = CGPoint(x: and.sprite.position.x - (and.sprite.size.width/2) - (and.input1.box.size.width/2), y: and.sprite.position.y + and.sprite.size.height/4)
    and.input2.box.position = CGPoint(x: and.sprite.position.x - (and.sprite.size.width/2) - (and.input2.box.size.width/2), y: and.sprite.position.y - and.sprite.size.height/4)
    
    result3 = Button(text: "", pos: CGPoint(x: and.sprite.position.x + (and.sprite.size.width/2) + (and.output.box.size.width/2), y: and.sprite.position.y), call: change3)
    result3?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: and.sprite)
    scene.addToView(node: and.input1.box)
    scene.addToView(node: and.input2.box)
    scene.addButton(button: result3!)
    
    
    and = Gate(in1: 1, in2: 1, gate: "AND")
    and.sprite.xScale = CGFloat(gateScale)
    and.sprite.yScale = CGFloat(gateScale)
    and.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    and.sprite.position = CGPoint(x: frame.midX, y: 420)
    
    and.input1.setSize(size: CGSize(width: 12, height: 12))
    and.input2.setSize(size: CGSize(width: 12, height: 12))
    and.output.setSize(size: CGSize(width: 35, height: 35))
    
    and.input1.box.position = CGPoint(x: and.sprite.position.x - (and.sprite.size.width/2) - (and.input1.box.size.width/2), y: and.sprite.position.y + and.sprite.size.height/4)
    and.input2.box.position = CGPoint(x: and.sprite.position.x - (and.sprite.size.width/2) - (and.input2.box.size.width/2), y: and.sprite.position.y - and.sprite.size.height/4)
    
    result4 = Button(text: "", pos: CGPoint(x: and.sprite.position.x + (and.sprite.size.width/2) + (and.output.box.size.width/2), y: and.sprite.position.y), call: change4)
    result4?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: and.sprite)
    scene.addToView(node: and.input1.box)
    scene.addToView(node: and.input2.box)
    scene.addButton(button: result4!)
    
    
    
    var or = Gate(in1: 0, in2: 0, gate: "OR")
    or.sprite.xScale = CGFloat(gateScale)
    or.sprite.yScale = CGFloat(gateScale)
    or.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    or.sprite.position = CGPoint(x: 100, y: 300)
    
    or.input1.setSize(size: CGSize(width: 12, height: 12))
    or.input2.setSize(size: CGSize(width: 12, height: 12))
    or.output.setSize(size: CGSize(width: 35, height: 35))
    
    or.input1.box.position = CGPoint(x: or.sprite.position.x - (or.sprite.size.width/2) - (or.input1.box.size.width/2), y: or.sprite.position.y + or.sprite.size.height/4)
    or.input2.box.position = CGPoint(x: or.sprite.position.x - (or.sprite.size.width/2) - (or.input2.box.size.width/2), y: or.sprite.position.y - or.sprite.size.height/4)
    
    result5 = Button(text: "", pos: CGPoint(x: or.sprite.position.x + (or.sprite.size.width/2) + (or.output.box.size.width/2), y: or.sprite.position.y), call: change5)
    result5?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: or.sprite)
    scene.addToView(node: or.input1.box)
    scene.addToView(node: or.input2.box)
    scene.addButton(button: result5!)
    
    or = Gate(in1: 1, in2: 0, gate: "OR")
    or.sprite.xScale = CGFloat(gateScale)
    or.sprite.yScale = CGFloat(gateScale)
    or.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    or.sprite.position = CGPoint(x: 250, y: 300)
    
    or.input1.setSize(size: CGSize(width: 12, height: 12))
    or.input2.setSize(size: CGSize(width: 12, height: 12))
    or.output.setSize(size: CGSize(width: 35, height: 35))
    
    or.input1.box.position = CGPoint(x: or.sprite.position.x - (or.sprite.size.width/2) - (or.input1.box.size.width/2), y: or.sprite.position.y + or.sprite.size.height/4)
    or.input2.box.position = CGPoint(x: or.sprite.position.x - (or.sprite.size.width/2) - (or.input2.box.size.width/2), y: or.sprite.position.y - or.sprite.size.height/4)
    
    result6 = Button(text: "", pos: CGPoint(x: or.sprite.position.x + (or.sprite.size.width/2) + (or.output.box.size.width/2), y: or.sprite.position.y), call: change6)
    result6?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: or.sprite)
    scene.addToView(node: or.input1.box)
    scene.addToView(node: or.input2.box)
    scene.addButton(button: result6!)
    
    or = Gate(in1: 0, in2: 1, gate: "OR")
    or.sprite.xScale = CGFloat(gateScale)
    or.sprite.yScale = CGFloat(gateScale)
    or.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    or.sprite.position = CGPoint(x: 400, y: 300)
    
    or.input1.setSize(size: CGSize(width: 12, height: 12))
    or.input2.setSize(size: CGSize(width: 12, height: 12))
    or.output.setSize(size: CGSize(width: 35, height: 35))
    
    or.input1.box.position = CGPoint(x: or.sprite.position.x - (or.sprite.size.width/2) - (or.input1.box.size.width/2), y: or.sprite.position.y + or.sprite.size.height/4)
    or.input2.box.position = CGPoint(x: or.sprite.position.x - (or.sprite.size.width/2) - (or.input2.box.size.width/2), y: or.sprite.position.y - or.sprite.size.height/4)
    
    result7 = Button(text: "", pos: CGPoint(x: or.sprite.position.x + (or.sprite.size.width/2) + (or.output.box.size.width/2), y: or.sprite.position.y), call: change7)
    result7?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: or.sprite)
    scene.addToView(node: or.input1.box)
    scene.addToView(node: or.input2.box)
    scene.addButton(button: result7!)
    
    or = Gate(in1: 1, in2: 1, gate: "OR")
    or.sprite.xScale = CGFloat(gateScale)
    or.sprite.yScale = CGFloat(gateScale)
    or.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    or.sprite.position = CGPoint(x: frame.midX, y: 220)
    
    or.input1.setSize(size: CGSize(width: 12, height: 12))
    or.input2.setSize(size: CGSize(width: 12, height: 12))
    or.output.setSize(size: CGSize(width: 35, height: 35))
    
    or.input1.box.position = CGPoint(x: or.sprite.position.x - (or.sprite.size.width/2) - (or.input1.box.size.width/2), y: or.sprite.position.y + or.sprite.size.height/4)
    or.input2.box.position = CGPoint(x: or.sprite.position.x - (or.sprite.size.width/2) - (or.input2.box.size.width/2), y: or.sprite.position.y - or.sprite.size.height/4)
    
    result8 = Button(text: "", pos: CGPoint(x: or.sprite.position.x + (or.sprite.size.width/2) + (or.output.box.size.width/2), y: or.sprite.position.y), call: change8)
    result8?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: or.sprite)
    scene.addToView(node: or.input1.box)
    scene.addToView(node: or.input2.box)
    scene.addButton(button: result8!)
    
    
    
    
    
    
    var not = Gate(input: 0, gate: "NOT")
    not.sprite.xScale = CGFloat(gateScale)
    not.sprite.yScale = CGFloat(gateScale)
    not.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    not.sprite.position = CGPoint(x: frame.maxX/4, y: 100)
    
    not.input1.setSize(size: CGSize(width: 12, height: 12))
    not.output.setSize(size: CGSize(width: 35, height: 35))
    
    not.input1.box.position = CGPoint(x: not.sprite.position.x - (not.sprite.size.width/2) - (not.input1.box.size.width/2), y: not.sprite.position.y)
    
    result9 = Button(text: "", pos: CGPoint(x: not.sprite.position.x + (not.sprite.size.width/2) + (not.output.box.size.width/2), y: not.sprite.position.y), call: change9)
    result9?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: not.sprite)
    scene.addToView(node: not.input1.box)
    scene.addButton(button: result9!)
    
    
    not = Gate(input: 1, gate: "NOT")
    not.sprite.xScale = CGFloat(gateScale)
    not.sprite.yScale = CGFloat(gateScale)
    not.sprite.anchorPoint = CGPoint(x:0.5, y:0.5)
    not.sprite.position = CGPoint(x: frame.maxX/4 + frame.midX, y: 100)
    
    not.input1.setSize(size: CGSize(width: 12, height: 12))
    not.output.setSize(size: CGSize(width: 35, height: 35))
    
    not.input1.box.position = CGPoint(x: not.sprite.position.x - (not.sprite.size.width/2) - (not.input1.box.size.width/2), y: not.sprite.position.y)
    
    result10 = Button(text: "", pos: CGPoint(x: not.sprite.position.x + (not.sprite.size.width/2) + (not.output.box.size.width/2), y: not.sprite.position.y), call: change10)
    result10?.setSize(size: CGSize(width: 35, height: 35))
    
    scene.addToView(node: not.sprite)
    scene.addToView(node: not.input1.box)
    scene.addButton(button: result10!)
    
    let done = Button(text: "Done", pos: CGPoint(x: frame.midX, y: 50), call: checkWin)
    done.setSize(size: CGSize(width: 100, height: 30))
    
    scene.addButton(button: done)
        
    scene.scaleMode = .aspectFit
    scene.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    view.presentScene(scene)
    
    PlaygroundPage.current.liveView = view
}
