//
//  SWCharacterListVC.swift
//  StarWars
//
//  Created by Quinto Technologies on 05/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import UIKit

class SWCharacterListVC: UIViewController {
    
    private let charactersListTableview: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    
    private let filtersSegmentedControl: UISegmentedControl = {
        let control = UISegmentedControl()
        control.translatesAutoresizingMaskIntoConstraints = false
        control.selectedSegmentIndex = 0
        let font = UIFont.systemFont(ofSize: 12)
        control.setTitleTextAttributes([NSAttributedStringKey.font: font], for: .normal)
        return control
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUserInterface()
        defaultInitialization()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupUserInterface() {
        let topConstraintConstant = 64.0 // height of navigation bar
        self.automaticallyAdjustsScrollViewInsets = false
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsHorizontalScrollIndicator = false
        view.addSubview(scrollView)
        scrollView.addSubview(filtersSegmentedControl)
        view.addSubview(charactersListTableview)
        
        // Add constraints
        view.addConstraints(withFormat: "H:|-0-[v0]-0-|",
                            views: scrollView)
        view.addConstraints(withFormat: "H:|-0-[v0]-0-|",
                            views: charactersListTableview)
        view.addConstraints(withFormat: "V:|-\(topConstraintConstant)-[v0(==44)]-[v1]-|",
                            views: scrollView , charactersListTableview)
        scrollView.addConstraints(withFormat: "H:|-10-[v0]-10-|",
                                  views: filtersSegmentedControl)
        scrollView.addConstraints(withFormat: "V:|-[v0]-|",
                                  views: filtersSegmentedControl)
    }
    
    private func defaultInitialization() {
        filtersSegmentedControl.addTarget(self, action: #selector(segmentSelected), for: .valueChanged)
    }
    
    @objc func segmentSelected() {
        
    }
    
}
