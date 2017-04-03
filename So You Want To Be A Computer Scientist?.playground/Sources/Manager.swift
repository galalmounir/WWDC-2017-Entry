import Foundation
import SpriteKit
import PlaygroundSupport

public class MainScene: SKScene {
    let mySize: CGSize?
    var gates = [Gate]()
    var buttons = [Button]()
    var nodes = [SKNode]()
    public var gateScale = 0.15
    var gatePadding = 100
    var gatesCol1 = 0
    var gatesCol2 = 0
    var gatesCol3 = 0
    
    override public init(size: CGSize) {
        mySize = size
        super.init(size: size)
        
        let array = ["BoyElephant", "GirlElephant"]
        let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
        
        let elephant = SKSpriteNode(imageNamed: array[randomIndex])
        elephant.xScale = 0.1
        elephant.yScale = 0.1
        elephant.anchorPoint = CGPoint(x: 0, y: 1)
        elephant.position = CGPoint (x: 0, y: size.height)
        
        let title = SKLabelNode(fontNamed: "Chalkduster")
        title.text = "Welcome to Computer Science"
        title.fontSize = 15
        title.horizontalAlignmentMode = .left
        title.fontColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        title.position = CGPoint(x: frame.midX - 40, y: frame.height - 50)
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        addChild(title)
        addChild(elephant)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func addToView (node: SKNode){
        addChild(node)
        nodes.append(node)
    }
    
    public func addButton (button: Button){
        addChild(button.button)
        addChild(button.string)
        buttons.append(button)
        nodes.append(button.button)
        nodes.append(button.string)
    }
    
    public func addGate(gate: String, input1: Int, input2: Int) -> Gate{
        gatesCol1 = gatesCol1 + 1
        let x = Gate(in1: input1, in2: input2, gate: gate)
        x.sprite.xScale = CGFloat(gateScale)
        x.sprite.yScale = CGFloat(gateScale)
        x.sprite.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        x.sprite.position = CGPoint(x: CGFloat(gatePadding), y: (x.sprite.size.height * CGFloat(gatesCol1) + 100))
        
        x.input1.box.position = CGPoint(x: x.sprite.position.x - (x.sprite.size.width/2) - (x.input1.box.size.width/2), y: x.sprite.position.y + x.sprite.size.height/4)
        x.input2.box.position = CGPoint(x: x.sprite.position.x - (x.sprite.size.width/2) - (x.input2.box.size.width/2), y: x.sprite.position.y - x.sprite.size.height/4)
        x.output.box.position = CGPoint(x: x.sprite.position.x + (x.sprite.size.width/2) + (x.output.box.size.width/2), y: x.sprite.position.y)
        
        addChild(x.sprite)
        addChild(x.input1.box)
        addChild(x.input2.box)
        addChild(x.output.box)
        
        gates.append(x)
        updateView()
        return x
    }
    
    public func addGate(gate: String, input1: Gate, input2: Int) -> Gate{
        let x = Gate(in1: input1.output.myValue, in2: input2, gate: gate)
        x.sprite.xScale = CGFloat(gateScale)
        x.sprite.yScale = CGFloat(gateScale)
        x.sprite.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        x.sprite.position = CGPoint(x: input1.sprite.position.x + input1.sprite.size.width + CGFloat(gatePadding), y: input1.sprite.position.y - x.sprite.size.height)
        
        x.input1.box.position = CGPoint(x: x.sprite.position.x - (x.sprite.size.width/2) - (x.input1.box.size.width/2), y: x.sprite.position.y + x.sprite.size.height/4)
        x.input2.box.position = CGPoint(x: x.sprite.position.x - (x.sprite.size.width/2) - (x.input2.box.size.width/2), y: x.sprite.position.y - x.sprite.size.height/4)
        x.output.box.position = CGPoint(x: x.sprite.position.x + (x.sprite.size.width/2) + (x.output.box.size.width/2), y: x.sprite.position.y)

        let line1 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: Double(gatePadding/2) - 10, height: gateScale*35))
        line1.anchorPoint = CGPoint(x:0, y:0.5)
        line1.position = CGPoint(x: input1.sprite.position.x + (input1.sprite.size.width/2) + 10, y: input1.sprite.position.y)
        
        let line2 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: gateScale * 35, height: Double(x.sprite.size.height - (x.sprite.size.height/4))))
        line2.anchorPoint = CGPoint(x:1, y:1)
        line2.position = CGPoint(x: line1.position.x + line1.size.width, y: input1.sprite.position.y)
        
        let line3 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: Double(gatePadding/2) - 6, height: gateScale*35))
        line3.anchorPoint = CGPoint(x:0, y:0.5)
        line3.position = CGPoint(x: line2.position.x - CGFloat(gateScale*35), y: x.sprite.position.y + (x.sprite.size.height/4))
        
        addChild(x.sprite)
        addChild(x.input1.box)
        addChild(x.input2.box)
        addChild(x.output.box)
        
        addChild(line1)
        addChild(line2)
        addChild(line3)
        
        return x
    }
    
    public func addGate(gate: String, input1: Int, input2: Gate) -> Gate{
        let x = Gate(in1: input1, in2: input2.output.myValue, gate: gate)
        x.sprite.xScale = CGFloat(gateScale)
        x.sprite.yScale = CGFloat(gateScale)
        x.sprite.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        x.sprite.position = CGPoint(x: input2.sprite.position.x + input2.sprite.size.width + CGFloat(gatePadding), y: input2.sprite.position.y + x.sprite.size.height)
        
        x.input1.box.position = CGPoint(x: x.sprite.position.x - (x.sprite.size.width/2) - (x.input1.box.size.width/2), y: x.sprite.position.y + x.sprite.size.height/4)
        x.input2.box.position = CGPoint(x: x.sprite.position.x - (x.sprite.size.width/2) - (x.input2.box.size.width/2), y: x.sprite.position.y - x.sprite.size.height/4)
        x.output.box.position = CGPoint(x: x.sprite.position.x + (x.sprite.size.width/2) + (x.output.box.size.width/2), y: x.sprite.position.y)
        
        let line1 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: Double(gatePadding/2) - 10, height: gateScale*35))
        line1.anchorPoint = CGPoint(x:0, y:0.5)
        line1.position = CGPoint(x: input2.sprite.position.x + (input2.sprite.size.width/2) + 10, y: input2.sprite.position.y)
        
        let line2 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: gateScale * 35, height: Double(x.sprite.size.height - (x.sprite.size.height/4))))
        line2.anchorPoint = CGPoint(x:1, y:0)
        line2.position = CGPoint(x: line1.position.x + line1.size.width, y: input2.sprite.position.y)
        
        let line3 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: Double(gatePadding/2) - 6, height: gateScale*35))
        line3.anchorPoint = CGPoint(x:0, y:0.5)
        line3.position = CGPoint(x: line2.position.x - CGFloat(gateScale*35), y: x.sprite.position.y - (x.sprite.size.height/4))
        
        addChild(x.sprite)
        addChild(x.input1.box)
        addChild(x.input2.box)
        addChild(x.output.box)
        
        addChild(line1)
        addChild(line2)
        addChild(line3)
        
        return x
    }
    
    public func addGate(gate: String, input1: Gate, input2: Gate) -> Gate{
        let x = Gate(in1: input1.output.myValue, in2: input2.output.myValue, gate: gate)
        x.sprite.xScale = CGFloat(gateScale)
        x.sprite.yScale = CGFloat(gateScale)
        x.sprite.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        x.sprite.position = CGPoint(x: input1.sprite.position.x + input1.sprite.size.width + CGFloat(gatePadding), y: input1.sprite.position.y - x.sprite.size.height/2)
        
        x.input1.box.position = CGPoint(x: x.sprite.position.x - (x.sprite.size.width/2) - (x.input1.box.size.width/2), y: x.sprite.position.y + x.sprite.size.height/4)
        x.input2.box.position = CGPoint(x: x.sprite.position.x - (x.sprite.size.width/2) - (x.input2.box.size.width/2), y: x.sprite.position.y - x.sprite.size.height/4)
        x.output.box.position = CGPoint(x: x.sprite.position.x + (x.sprite.size.width/2) + (x.output.box.size.width/2), y: x.sprite.position.y)
        
        let line1 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: Double(gatePadding/2) - 10, height: gateScale*35))
        line1.anchorPoint = CGPoint(x:0, y:0.5)
        line1.position = CGPoint(x: input1.sprite.position.x + (input1.sprite.size.width/2) + 10, y: input1.sprite.position.y)
        
        let line2 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: gateScale * 35, height: Double(x.sprite.size.height/2 - (x.sprite.size.height/4))))
        line2.anchorPoint = CGPoint(x:1, y:1)
        line2.position = CGPoint(x: line1.position.x + line1.size.width, y: input1.sprite.position.y)
        
        let line3 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: Double(gatePadding/2) - 6, height: gateScale*35))
        line3.anchorPoint = CGPoint(x:0, y:0.5)
        line3.position = CGPoint(x: line2.position.x - CGFloat(gateScale*35), y: x.sprite.position.y + (x.sprite.size.height/4))
        
        let line11 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: Double(gatePadding/2) - 10, height: gateScale*35))
        line11.anchorPoint = CGPoint(x:0, y:0.5)
        line11.position = CGPoint(x: input2.sprite.position.x + (input2.sprite.size.width/2) + 10, y: input2.sprite.position.y)
        
        let line22 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: gateScale * 35, height: Double(x.sprite.size.height/2 - (x.sprite.size.height/4))))
        line22.anchorPoint = CGPoint(x:1, y:0)
        line22.position = CGPoint(x: line11.position.x + line11.size.width, y: input2.sprite.position.y)
        
        let line33 = SKSpriteNode(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), size: CGSize(width: Double(gatePadding/2) - 6, height: gateScale*35))
        line33.anchorPoint = CGPoint(x:0, y:0.5)
        line33.position = CGPoint(x: line22.position.x - CGFloat(gateScale*35), y: x.sprite.position.y - (x.sprite.size.height/4))
        
        addChild(x.sprite)
        addChild(x.input1.box)
        addChild(x.input2.box)
        addChild(x.output.box)
        
        addChild(line1)
        addChild(line2)
        addChild(line3)
        addChild(line11)
        addChild(line22)
        addChild(line33)
        
        return x
    }
    
    public func updateView(){
        removeChildren(in: nodes)
        for child in nodes{
            addChild(child)
        }
    }
 
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: scene!)
        for button in buttons{
            if button.button.contains(touchLocation){
                button.button.color = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            }
        }
    }

    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: scene!)
        for button in buttons{
            if button.button.contains(touchLocation){
                button.pressed()
            }
        }
    }
}
