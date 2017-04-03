import Foundation
import SpriteKit

public class BinaryValue{
    public var myValue: Int
    public var box: SKSpriteNode
    
    init(val: Int) {
        myValue = val
        if val == 1 {
            box = SKSpriteNode(color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), size: CGSize(width: 10, height: 10))
        }
        else if val == 0 {
            box = SKSpriteNode(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), size: CGSize(width: 10, height: 10))
        }
        else{
            box = SKSpriteNode(color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), size: CGSize(width: 10, height: 10))
        }
        box.anchorPoint = CGPoint(x: 0.5, y: 0.5)
    }
    
    public func setSize(size: CGSize){
        box.size = size
    }
}
