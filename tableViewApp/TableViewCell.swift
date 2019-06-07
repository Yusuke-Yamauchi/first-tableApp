//
//  TableViewCell.swift
//  tableViewApp
//
//  Created by user on 2019/06/07.
//  Copyright © 2019 Yusuke Yamauchi. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // タップされたセルの行番号を出力
        let  cellNumber : Int = indexPath.row
        UserDefaults.standard.set(cellNumber, forKey:"setRootNumKey")
    }

}
