//
//  ViewController.swift
//  MVC
//
//  Created by Helga on 08.02.2021.
//

import UIKit

class CommentsViewController: UIViewController {

  
    @IBOutlet weak var tableView : UITableView!

}

extension CommentsViewController : UITableViewDelegate {}
extension CommentsViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier : "cell", for: indexPath)
        return cell
    }
}

