//
//  ViewController.swift
//  ChatBubble
//
//  Created by Ajo Alex on 20/02/25.
//

import UIKit
import AjoChatView

class ViewController: UIViewController {
    var collectionView: AjoChatView!
    var messages: [Message] = [
        Message(text: "Hey!", incoming:  true),
        Message(text: "Hi! How are you?", incoming: false),
        Message(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", incoming:  true),
        Message(text: "Hi!", incoming: false),
    ]
    
    override func viewDidLoad() {
        title = "Chat"
        setupCollectionView()
        super.viewDidLoad()
    }
    
    func setupCollectionView(){
        collectionView = AjoChatView(frame: view.bounds)
        collectionView.messages = messages
        view.addSubview(collectionView)

    }
    
}


#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}
