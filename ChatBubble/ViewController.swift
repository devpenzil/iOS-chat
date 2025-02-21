//
//  ViewController.swift
//  ChatBubble
//
//  Created by Ajo Alex on 20/02/25.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var collectionView: UICollectionView!
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
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = CGSize(width: view.frame.width, height: 50)
        
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(SingleMessage.self, forCellWithReuseIdentifier: "cell")
                
        view.addSubview(collectionView)
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
