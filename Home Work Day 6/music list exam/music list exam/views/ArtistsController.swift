//
//  ArtistsController.swift
//  music list exam
//
//  Created by Consultant on 8/28/22.
//

import UIKit

class ArtistsController: UIViewController {

    var tableView = UITableView()
    var artists: [Artist] = []
    let artistCell = "artistCell"
    
    override func viewDidLoad() {
        configureTableView()
        setTableViewDelegates()
        artists = fetchData()
        title = "Artists"
        super.viewDidLoad()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.rowHeight = 100
        tableView.register(ArtistTableViewCell.self, forCellReuseIdentifier: artistCell)
        tableView.pin(view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension ArtistsController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: artistCell) as! ArtistTableViewCell
        let artist = artists[indexPath.row]
        cell.set(artist)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let artist = artists[indexPath.row]
        let dvc = DetailsController()
        dvc.detailTitle.text = artist.title
        dvc.detailDescription.text = artist.description
        dvc.imageView = UIImageView(image: artist.image)
        navigationController?.pushViewController(dvc, animated: true)
    }
}

extension ArtistsController {
    func fetchData() -> [Artist] {
        let artists = [
            Artist(image: Artists.acdc, title: "AC/DC", description: "AC/DC (stylised as ACϟDC) are an Australian rock band"),
            Artist(image: Artists.bandams, title: "Banda MS", description: "Banda MS"),
            Artist(image: Artists.beckyg, title: "Becky G", description: "Becky G"),
            Artist(image: Artists.brunomars, title: "Bruno Mars", description: "Bruno Mars"),
            Artist(image: Artists.carin, title: "Carin Leon", description: "Carin Leon"),
            Artist(image: Artists.christian, title: "Christian Nodal", description: "Christian Nodal"),
            Artist(image: Artists.edsheeran, title: "Ed Sheeran", description: "Ed Sheeran"),
            Artist(image: Artists.katyperry, title: "Katy Perry", description: "Katy Perry"),
            Artist(image: Artists.shakira, title: "Shakira", description: "Shakira"),
            Artist(image: Artists.taylorswift, title: "Taylor Swift", description: "Taylor Swift")
        ]
        
        return artists
    }
}
