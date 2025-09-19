//
//  DataTableVC.swift
//  Fragment-Segments-gu
//
//  Created by Jaimin Raval on 26/08/25.
//

import UIKit

class DataTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var dataTable: UITableView!
    
//    var apiDataArr: [JokeModel] = []
    var dummyDict = ["key00": "Val0",
                     "key01": "Val1",
                     "key02": "Val2",
                     "key03": "Val3",
                     "key04": "Val4",
                     "key05": "Val5",]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        getDataFromAPI()

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dataTable.delegate = self
        dataTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyDict.count
//        return apiDataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell") as! MyDataCell
        cell.data01.text = "\(dummyDict["key0\(indexPath.row)"])"
        cell.data02.text = "\(dummyDict["key0\(indexPath.row)"])"
        return cell
    }
    
    //    MARK: - native api call function
//    func getDataFromAPI() -> [JokeModel] {
//        var res: [JokeModel] = []
//        let urlstr = "https://official-joke-api.appspot.com/jokes/random/10"
//
//        if let url = URL(string: urlstr) {
//
//            let session = URLSession.shared
//
//            let dataTask = session.dataTask(with: url) { data, response, error in
//
//                guard let jokeData = data else { return }
//                print("data here")
//
//                do {
//                    let jsonData = try JSONDecoder().decode([JokeModel].self, from: jokeData)
//                    res = jsonData
//                    debugPrint(jsonData)
//                    print("data here")
//                    self.dataTable.reloadData()
//                } catch(let err) {
//                    debugPrint("error in decoding")
//                }
//
//            }
//            dataTask.resume()
//
//        }
//        return res
//    }

    


}



//struct JokeModel: Codable {
//    
//    let id: Int
//    let type: String
//    let setup: String
//    let punchline: String
//    
//}
