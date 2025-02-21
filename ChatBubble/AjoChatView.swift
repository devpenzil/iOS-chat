//
//  AjoChatView.swift
//  ChatBubble
//
//  Created by Ajo Alex on 21/02/25.
//

import UIKit

class AjoChatView:UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource{
    var messages : [Message] = []
    
    init(frame: CGRect) {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
            layout.estimatedItemSize = CGSize(width: frame.width, height: 50)
            
            super.init(frame: frame, collectionViewLayout: layout)
            self.backgroundColor = .white
            self.delegate = self
            self.dataSource = self
            self.register(SingleMessage.self, forCellWithReuseIdentifier: "cell")
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return messages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SingleMessage
               cell.configure(with: messages[indexPath.item])
        return cell
    }
}



#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}
