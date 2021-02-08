//
//  ViewController.swift
//  MVC
//
//  Created by Helga on 08.02.2021.
//

import UIKit

class CommentsViewController: UIViewController {
    
    var comments = [Comment]()
  
    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CommentNetworkService.getComments { (response) in
            self.comments = response.comments
            self.tableView.reloadData()
        }
        
    }

}

extension CommentsViewController : UITableViewDelegate {}
extension CommentsViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier : "cell", for: indexPath) as! CommentTableViewCell
        
        let comment = comments[indexPath.row]
        cell.configure(with: comment)
        return cell
    }
}

