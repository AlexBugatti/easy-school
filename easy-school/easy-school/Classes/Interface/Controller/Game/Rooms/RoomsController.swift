//
//  RoomsController.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class RoomsController: UIViewController {
    
    var didRoomTapped: ((Room)->Void)?
    var didBackTapped: (()->Void)?
    
    var rooms: [Room] = [] {
        didSet {
            self.tableView?.reloadData()
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            self.tableView.register(RoomCell.self)
            self.tableView.delegate = self
            self.tableView.dataSource = self
            self.tableView.contentInset.top = 40
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Выберите комнату"
        self.getRooms()
        // Do any additional setup after loading the view.
    }
    
    private func getRooms() {
        self.rooms = [Room.testEnglishRoom(), Room.testSpanishRoom(), Room.testRussiaRoom(), Room.testJapanRoom(), Room.testGermanRoom(), Room.testEnglis2hRoom()]
    }

    // MARK: - Action
    
    @IBAction func onDidDismissTapped(_ sender: Any) {
        self.didBackTapped?()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension RoomsController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.rooms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let room = self.rooms[indexPath.row]
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as RoomCell
        cell.configure(room)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let room = self.rooms[indexPath.row]
        self.didRoomTapped?(room)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
