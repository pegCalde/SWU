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

        movies.append(SWMovie(title:"La menace fantôme", NumberEp: 1, year: 1999, real: "George Lucas", img: UIImage(named: "SWep1")!))
        movies.append(SWMovie(title:"L'attaque des clones'", NumberEp: 2, year: 2002, real: "George Lucas", img: UIImage(named: "SWep2")!))
        movies.append(SWMovie(title:"La revanche des siths", NumberEp: 3, year: 2005, real: "George Lucas", img: UIImage(named: "SWep3")!))
        movies.append(SWMovie(title:"Un nouvel espoir", NumberEp: 4, year: 1977, real: "George Lucas", img: UIImage(named: "SWep4")!))
        movies.append(SWMovie(title:"L'empire contre-attaque", NumberEp: 5, year: 1980, real: "Irvin Kershner", img: UIImage(named: "SWep5")!))
        movies.append(SWMovie(title:"Le retour du jedi", NumberEp: 6, year: 1983, real: "Richard Marquand", img: UIImage(named: "SWep6")!))
        movies.append(SWMovie(title:"Le réveil de la force", NumberEp: 7, year: 2015, real: "J.J. Abrams", img: UIImage(named: "SWep7")!))
        movies.append(SWMovie(title:"Les derniers jedi", NumberEp: 8, year: 2017, real: "Rian Johnson", img: UIImage(named: "SWep8")!))
        movies.append(SWMovie(title:"L'ascension de Skywalker", NumberEp: 9, year: 2019, real: "J.J. Abrams", img: UIImage(named: "SWep9")!))
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
            cell.title?.text = film.title
            cell.epNumber?.text = "\(film.NumberEp)"
            cell.imgMovie.image = film.img
            cell.year.text = "\(film.year)"
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Main saga"
        } else {
            return "Other sagas"
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
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
