//
//  BucketItemCell.swift
//  Wyatt_Miller_CSP
//
//  Created by Miller, Wyatt on 1/9/18.
//  Copyright © 2018 Miller, Wyatt. All rights reserved.
//

import UIKit

public class BucketItemCell: UITableViewCell {
    @IBOutlet weak var bucketItemSymbol: UILabel!
    @IBOutlet weak var bucketItemText: UILabel!
    @IBOutlet weak var bucketItemSignature: UILabel!
    
    var bucketItem : BucketItem!
    {
        didSet
        {
            updateCellView()
        }
    }
    
    private func randomEmoji()->String
    {
        let emojiStart = 0x1F601
        let emojiEnd = 0x1F64F
        let symbolStart = 0x1F680
        let symbolEnd = 0x1F6C5
        
        let emojiRange = 79
        let symbolRange = 70
        
        let ascii = emojiStart + Int(arc4random_uniform(UInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        return emoji!
    }
    override public func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }
    override public func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
    
    private func updateCellView()
    {
        if (bucketItem != nil)
        {
            bucketItemSignature.text = bucketItem.itemAuthor
            bucketItemText.text = bucketItem.itemContents
        }
        else
        {
            bucketItemSignature.text = "author goes here"
            bucketItemText.text = "Text goes here"
        }
        
        bucketItemSymbol.text = randomEmoji()
    }

}
