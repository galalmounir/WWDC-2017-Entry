import Foundation
import SpriteKit
import PlaygroundSupport

let frame = CGRect(x: 0, y: 250, width: 500, height: 300)
let view = SKView(frame: frame)
let scene = MainScene(size: frame.size)

public func loadPage(){
    scene.scaleMode = .aspectFit
    scene.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    view.presentScene(scene)
    
    PlaygroundPage.current.liveView = view
}
