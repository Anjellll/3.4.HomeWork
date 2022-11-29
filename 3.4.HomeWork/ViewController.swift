//
//  ViewController.swift
//  3.4.HomeWork
//
//  Created by anjella on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableVierw: UITableView!
    
    var posts: [Post] = [
        Post(image: "image1", nameOfCafe: "KFC", firstFood: "6 x Наггетсов", secondFood: "1 x Карри Бургер", priceOfFoods: "478,00 KGS"),
        Post(image: "image2", nameOfCafe: "ФРУНЗЕ", firstFood: "1 x Вода Asu лимон 1л ", secondFood: "2 x Рыба Норвежская соленная", priceOfFoods: "1027,00 KGS"),
        Post(image: "image3", nameOfCafe: "Oasis", firstFood: "2 x Донер - говядина", secondFood: "1 x Запеченный донер - говядина", priceOfFoods: "513,00 KGS"),
        Post(image: "image4", nameOfCafe: "GLOBUS", firstFood: "3 x Сыр Kav&Kev", secondFood: "2 x Чипсы Lay's нат.сол. 140Г", priceOfFoods: "2530,00 KGS")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "post_cell", for: indexPath) as! PostCell
        
        cell.iconImageView.image = UIImage(named: posts[indexPath.row].image)
        cell.nameOfFastFood.text = posts[indexPath.row].nameOfCafe
        cell.nameOfFirstFood.text = posts[indexPath.row].firstFood
        cell.nameOfSecondFood.text = posts[indexPath.row].secondFood
        cell.priceOfFood.text = posts[indexPath.row].priceOfFoods
        
        return cell
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
