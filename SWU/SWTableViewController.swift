//
//  SWTableViewController.swift
//  SWU
//
//  Created by Peggy Calderon on 22/03/2021.
//

import UIKit

class SWTableViewController: UITableViewController {
    
    var movies = [SWMovie]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        movies.append(SWMovie(title:"La menace fantôme", NumberEp: 1, year: 2000, real: "nc", img: UIImage(named: "SWep1")!))
        movies.append(SWMovie(title:"La menace fantôme", NumberEp: 2, year: 2000, real: "nc", img: UIImage(named: "SWep1")!))
        movies.append(SWMovie(title:"La menace fantôme", NumberEp: 3, year: 2000, real: "nc", img: UIImage(named: "SWep1")!))
        movies.append(SWMovie(title:"La menace fantôme", NumberEp: 4, year: 2000, real: "nc", img: UIImage(named: "SWep1")!))
        movies.append(SWMovie(title:"La menace fantôme", NumberEp: 5, year: 2000, real: "nc", img: UIImage(named: "SWep1")!))
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // renvoi nombre de paragraphes qu'il y a ds tableView
        return  1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // renvoi nombre de cellules qu'il y a ds tableView
        if section == 0 {
            return movies.count
        } else {
            return 0
        }
        //return section == 0 ? 4 : 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // je récupère le path de tableView et je lui passe l'id de la cellule que je veux récupérer
        if let cell = tableView.dequeueReusableCell(withIdentifier: "StarWarsCellType", for: indexPath) as? SWCell {
            let film = movies[indexPath.row]
            cell.textLabel?.text = film.title
            cell.detailTextLabel?.text = "\(film.NumberEp)"
            cell.imageView?.image = film.img
            return cell
        }
        return UITableViewCell()
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
