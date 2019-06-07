//
//  TableViewController.swift
//  tableViewApp
//
//  Created by user on 2019/06/02.
//  Copyright © 2019 Yusuke Yamauchi. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
        var names: [String] = []

    //rootで何行目を押したかを呼び出し
    
    
    
//    @IBAction func backButton(_ sender: UIButton) {
//      let storyboard: UIStoryboard = self.storyboard!
//        let nextView = storyboard.instantiateViewController(withIdentifier: "NC1") as! UINavigationController
//        //nextView.modalTransitionStyle = .coverVertical
//        //nextView.modalTransitionStyle = .flipHorizontal
//        nextView.modalTransitionStyle = .crossDissolve
//       // nextView.modalTransitionStyle = .partialCurl
//        // ③画面遷移（presentメソッドを使う）
//        self.present(nextView, animated: true, completion: nil)
//    }
//
    
    
    
    
   
   //  let rootNum = UserDefaults.standard.object(forKey:"setRootNumKey") as! Int
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        
        //Rootで何行目を参照したかを呼び出す｡※外に定義するとうまくいかない
        let RootRow = UserDefaults.standard.object(forKey:"setRootNumKey")!
    
        if UserDefaults.standard.object(forKey:"setkey\(RootRow)") != nil{
            names = UserDefaults.standard.object(forKey:"setkey\(RootRow)") as! [String]
        }
      
            print(RootRow)
        tableView.reloadData()
        
}
    // MARK: - Table view data sour
    
override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // タップされたセルの行番号を出力
        
UserDefaults.standard.set(indexPath.row, forKey:"setNumKey")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
     
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names.count
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)
  
        // Configure the cell...
        cell.textLabel?.text = names[indexPath.row]
      
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //Rootで何行目を参照したかを呼び出す｡※外に定義するとうまくいかない
        let RootRow = UserDefaults.standard.object(forKey:"setRootNumKey")!
        
        if editingStyle == .delete {
            // Delete the row from the data source
            names.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            UserDefaults.standard.set(names, forKey:"setkey\(RootRow)")
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
