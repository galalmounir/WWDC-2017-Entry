import Foundation
import SpriteKit

public class Button{
    public var string: SKLabelNode
    let button: SKSpriteNode
    public var myColor: UIColor
    var callback: () -> Void
    
    public init( text: String, pos: CGPoint, call: @escaping () -> Void){
        button = SKSpriteNode(color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), size: CGSize(width: 80, height: 30))
        button.position = pos
        string = SKLabelNode(text: text)
        string.fontName = "Arial-BoldMT"
        string.fontSize = 15
        string.fontColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        string.position = CGPoint(x: button.frame.midX, y: button.frame.midY)
        string.verticalAlignmentMode = .center
        callback = call
        myColor = button.color
    }
    
    public func setSize(size: CGSize){
        button.size = size
    }
    
    public func setText(label: SKLabelNode){
        string.text = label.text
        string.fontColor = label.fontColor
        string.fontSize = label.fontSize
    }
    
    public func pressed (){
        button.color = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        callback()
    }
    
    public func getButtonColor () -> UIColor{
        return myColor
    }
    
    public func setButtonColor (color: UIColor){
        myColor = color
        button.color = myColor;
    }
}

