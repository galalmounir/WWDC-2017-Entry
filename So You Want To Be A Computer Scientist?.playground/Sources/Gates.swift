import Foundation
import SpriteKit

public class Gate{
    public var sprite: SKSpriteNode
    
    public var input1: BinaryValue
    public var input2: BinaryValue
    public var output: BinaryValue
    
    enum Gates{
        case AND
        case OR
        case NOT
        case ERROR
    }
    
    let type: Gates
    
    public init(in1: Int, in2: Int, gate: String) {
        input1 = BinaryValue(val: in1)
        input2 = BinaryValue(val: in2)
        
        switch gate {
        case "AND":
            output = BinaryValue(val: input1.myValue & input2.myValue)
            sprite = SKSpriteNode(imageNamed: "AND labeled")//+String(in1)+"-"+String(in2))
            type = Gates.AND
        case "OR":
            output = BinaryValue(val: input1.myValue | input2.myValue)
            sprite = SKSpriteNode(imageNamed: "OR labeled")//+String(in1)+"-"+String(in2))
            type = Gates.OR
        case "NOT":
            print("A NOT gate takes only 1 input")
            output = BinaryValue(val: 2)
            sprite = SKSpriteNode()
            type = Gates.ERROR
        default:
            print("There's an error, make sure the gate names are all upper-case")
            output = BinaryValue(val: 2)
            sprite = SKSpriteNode()
            type = Gates.ERROR
        }
    }
    
    public init(input: Int, gate: String) {
        input1 = BinaryValue(val: input)
        input2 = BinaryValue(val: 2)
        switch gate{
        case "AND":
            print("An AND gate takes 2 inputs")
            output = BinaryValue(val: 2)
            sprite = SKSpriteNode()
            type = Gates.ERROR
        case "OR":
            print("An OR gate takes 2 inputs")
            output = BinaryValue(val: 2)
            sprite = SKSpriteNode()
            type = Gates.ERROR
        case "NOT":
            if (input1.myValue == 1){
                output = BinaryValue(val:0)
            }
            else{
                output = BinaryValue(val:1)
            }
            
            sprite = SKSpriteNode(imageNamed: "NOT labeled")//+String(input))
            type = Gates.NOT
        default:
            print("There's an error, make sure the gate names are all upper-case")
            output = BinaryValue(val: 2)
            sprite = SKSpriteNode()
            type = Gates.ERROR
        }
    }
}
