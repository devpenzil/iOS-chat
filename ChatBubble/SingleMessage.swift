//
//  SingleMessage.swift
//  ChatBubble
//
//  Created by Ajo Alex on 20/02/25.
//

import UIKit

struct Message{
    let text: String
    let incoming: Bool
}

class SingleMessage: UICollectionViewCell{
    let messageLabel = UILabel()
    let bubbleView = UIView()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        bubbleView.layer.cornerRadius = 15
        bubbleView.clipsToBounds = true
        addSubview(bubbleView)
        
        messageLabel.numberOfLines = 0
        messageLabel.font = UIFont.systemFont(ofSize: 16)
        bubbleView.addSubview(messageLabel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with message: Message){
        messageLabel.text = message.text
        bubbleView.backgroundColor = message.incoming ? .lightGray : .blue
        messageLabel.textColor = message.incoming ? .black : .white
        
        bubbleView.frame = CGRect(x: message.incoming ? 10 : frame.width - 210, y: 5, width: 200, height: frame.height - 10)
        messageLabel.frame = CGRect(x: 10, y: 5, width: 180, height: bubbleView.frame.height - 10)
        
    }
}
