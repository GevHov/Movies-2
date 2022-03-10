//
//  ViewController.swift
//  Example2
//
//  Created by Gevorg Hovhannisyan on 30.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - ImageURL
    
    var imageView = UIImageView()
    let dataSource: [Models] = [Models (imageURL: "https://m.media-amazon.com/images/M/MV5BYzg0NGM2NjAtNmIxOC00MDJmLTg5ZmYtYzM0MTE4NWE2NzlhXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_FMjpg_UX1000_.jpg"), Models(imageURL: "https://avatars.mds.yandex.net/get-zen_doc/912331/pub_5d7cd3f16f5f6f01277d0c6d_5d7cd7a4a660d700bf456426/scale_1200"),Models(imageURL: "https://m.media-amazon.com/images/M/MV5BMmJmMzZkNTQtOGViNi00OWI4LTg3MTctNDY5YTZjNzUzNTUxXkEyXkFqcGdeQXVyMTM2Mzg4MA@@._V1_.jpg"),Models(imageURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/classics-1566494388.jpg?crop=0.502xw:1.00xh;0.260xw,0&resize=640:*"),Models(imageURL: "https://www.007.com/wp-content/uploads/2020/08/skyfall.jpg"),Models(imageURL: "https://i.ytimg.com/vi/pa2llrQyLUI/maxresdefault.jpg"),Models(imageURL: "https://pbs.twimg.com/media/EILseYNUEAA15TA.jpg"),Models(imageURL: "https://amc-theatres-res.cloudinary.com/v1631738383/amc-cdn/production/2/movies/66900/66945/PosterDynamic/128342.jpg"),Models(imageURL: "https://prod.miramax.digital/media/assets/one-sheet.jpeg"),Models(imageURL: "https://www.007.com/wp-content/uploads/2021/03/quantum-e1611725210375.jpg"),Models (imageURL: "https://m.media-amazon.com/images/M/MV5BYzg0NGM2NjAtNmIxOC00MDJmLTg5ZmYtYzM0MTE4NWE2NzlhXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_FMjpg_UX1000_.jpg"), Models(imageURL: "https://avatars.mds.yandex.net/get-zen_doc/912331/pub_5d7cd3f16f5f6f01277d0c6d_5d7cd7a4a660d700bf456426/scale_1200"),Models(imageURL: "https://upload.wikimedia.org/wikipedia/ru/6/66/Отец_%282020%29_постер.jpg"),Models(imageURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/classics-1566494388.jpg?crop=0.502xw:1.00xh;0.260xw,0&resize=640:*"),Models(imageURL: "https://www.007.com/wp-content/uploads/2020/08/skyfall.jpg"),Models(imageURL: "https://i.ytimg.com/vi/pa2llrQyLUI/maxresdefault.jpg"),Models(imageURL: "https://pbs.twimg.com/media/EILseYNUEAA15TA.jpg"),Models(imageURL: "https://amc-theatres-res.cloudinary.com/v1631738383/amc-cdn/production/2/movies/66900/66945/PosterDynamic/128342.jpg"),Models(imageURL: "https://prod.miramax.digital/media/assets/one-sheet.jpeg"),Models(imageURL: "https://www.007.com/wp-content/uploads/2021/03/quantum-e1611725210375.jpg")]

    
    //MARK: - @IBOutlet
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: - LifeCycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //MARK: - MyTableViewCell Register
        
        tableView.register(UINib(nibName: MyTableViewCell.id, bundle: nil), forCellReuseIdentifier: MyTableViewCell.id)
        
    }
    
}

//MARK: - Extensions

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 6

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tableView.frame.height/3
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.id, for: indexPath) as! MyTableViewCell
        
//        cell.data = [dataSource[indexPath.row * 2], dataSource[indexPath.row * 2 + 1]]
        cell.data = dataSource

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "MOVIES"
    }
    
}

