//
//  ViewController.swift
//  ChatBubble
//
//  Created by Ajo Alex on 20/02/25.
//

import UIKit
import ChatViewPOC

class ViewController: UIViewController {
    var collectionView: ChatViewPOC!
    var isTyping: Bool = false
    let theme = chatUiTheme(
        sentMessageCellColor: UIColor.cyan, sentMessageTextColor: UIColor.red, receiveMessageCellColor: UIColor.green, receiveMessageTextColor: UIColor.purple
    )
    
    override func viewDidLoad() {
        title = "Chat"
        setupCollectionView()
        super.viewDidLoad()
    }

    func setupCollectionView(){
        collectionView = ChatViewPOC(frame: view.bounds, theme: theme)
        collectionView.isTyping = isTyping
        
        collectionView.addSenderMessage(content: "Lorem Ipsum ire recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
        collectionView.addRecieverMessage(content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ets containing Lorem Ipsum passages, and more recently  Ipsum.")
        collectionView.addSenderMessage(content: "djhsdhj ")
        collectionView.addSenderMessage(content: "djhsdhj")
        collectionView.addSenderMessage(content: "djhsd jsdhbfs sdjhfbds jhsdbxhj")
        collectionView.addRecieverMessage(content: "zdcsd")
        collectionView.addSenderMessage(content: "djhsd jsdhbfs sdjhfbds jhsdbxhj")
        collectionView.addSenderMessage(content: "djhsd jsdhbfs sdjhfbds jhsdbxhj")
        collectionView.addRecieverMessage(content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has PageMaker including versions of Lorem Ipsum.")
        collectionView.addSenderMessage(content: "Lorem Ipsum ire recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
        collectionView.addRecieverMessage(content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ets containing Lorem Ipsum passages, and more recently  Ipsum.")
        collectionView.addSenderMessage(content: "Lorem Ipsum ire recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
        collectionView.addRecieverMessage(content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ets containing Lorem Ipsum passages, and more recently  Ipsum.")
        collectionView.addSenderMessage(content: "djhsdhj skdjnf sjdnfs sdjfsdjfsdkjfksdjfndsjk sjkdfnsjkfnas aksjnasd ajsdnsanj ajskdnasd akjdnansd askjdnasd asjwoiejhruwy ahsbdakjn")
        collectionView.addRecieverMessage(content: "Hello world")
        collectionView.addSenderMessage(content: "Helloooooo")
        view.addSubview(collectionView)
    }
}


#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}
