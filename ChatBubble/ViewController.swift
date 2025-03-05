//
//  ViewController.swift
//  ChatBubble
//
//  Created by Ajo Alex on 20/02/25.
//

import UIKit
import ChatViewPOC

class ViewController: UIViewController, ChatViewDelegate {
    
    
    func didShowMessage(_ message: String) {
        
    }
    
    func didShowTypingIndicator(_ isTyping: Bool) {
        
    }

    var chatView: ChatViewPOC!
    
    var isTyping: Bool = true
    let theme = chatUITheme(
        sentMessageCellColor: UIColor(hex: "#222E50FF")!, sentMessageTextColor: UIColor(hex: "#FFFFFFFF")!, receiveMessageCellColor: UIColor(hex: "#294C60FF")!, receiveMessageTextColor: UIColor(hex: "#FFFFFFFF")!, chatViewBackgroundColor: UIColor(hex: "#001B2EFF")!
    )
    
    override func viewDidLoad() {
        title = "Chat"
        setupCollectionView()
        testMessages()
        super.viewDidLoad()
    }

        func testMessages() {
            let messages: [(String, Bool)] = [
                ("Lorem Ipsum ire recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", true),
                ("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ets containing Lorem Ipsum passages, and more recently Ipsum.", false),
                ("djhsdhj jhvjbh fkjnv dkjfnd", true),
                ("djhsdhj", true),
                ("djhsd jsdhbfs sdjhfbds jhsdbxhj", true),
                ("zdcsd", false),
                ("djhsd jsdhbfs sdjhfbds jhsdbxhj", true),
                ("djhsd jsdhbfs sdjhfbds jhsdbxhj", true),
                ("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has PageMaker including versions of Lorem Ipsum.", false),
                ("Lorem Ipsum ire recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", true),
                ("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ets containing Lorem Ipsum passages, and more recently Ipsum.", false),
                ("Lorem Ipsum ire recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", true)]
            
            for (index, message) in messages.enumerated() {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.5) {
                    if message.1 {
                        self.chatView.addRecieverMessage(content: message.0)
                        
                    } else {
                        self.chatView.addSenderMessage(content: message.0)
                    }
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(messages.count) * 0.5) {
             self.chatView.showTypingIndicator(true)
            }
        }
        
    
    func setupCollectionView(){
        // Initialize view model
                let chatViewModel = ChatViewModel()
                
                // Initialize ChatViewController with custom config and delegate
        chatView = ChatViewPOC(theme: theme, viewModel: chatViewModel, chatDelegate: self)
                
                // Add ChatViewController as a child view controller
                if let chatView = chatView {
                    addChild(chatView)
                    view.addSubview(chatView.view)
                    chatView.didMove(toParent: self)
                    chatView.view.translatesAutoresizingMaskIntoConstraints = false
                    
                    NSLayoutConstraint.activate([
                        chatView.view.topAnchor.constraint(equalTo: view.topAnchor),
                        chatView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                        chatView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                        chatView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor)
                    ])
                }
        view.addSubview(chatView.view)
    }
    
    
}


#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}
