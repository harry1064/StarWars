//
//  SWCharacterListVC.swift
//  StarWars
//
//  Created by Quinto Technologies on 05/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import UIKit

class SWCharacterListVC: UIViewController {
    
    let indicatorView: UIActivityIndicatorView = {
       let indicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        return indicator
    }()
    
    let loadingIndicatorBaseView: UIView = {
        let v = UIView()
        return v
    }()
    
    private let charactersListTableview: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.tableFooterView = UIView(frame: .zero)
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
    
    private let viewModel: SWCharactersListViewModel = {
        let vModel = SWCharactersListViewModel(withStarWarsWebServiceManager: SWWebServiceManager())
        return vModel
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
        self.navigationItem.title = viewModel.navigationTitle
        self.automaticallyAdjustsScrollViewInsets = false
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsHorizontalScrollIndicator = false
        view.addSubview(scrollView)
        scrollView.addSubview(filtersSegmentedControl)
        view.addSubview(charactersListTableview)
        loadingIndicatorBaseView.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: 40)
        loadingIndicatorBaseView.addSubview(indicatorView)

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
        
        loadingIndicatorBaseView.addConstraint(NSLayoutConstraint.init(item: indicatorView, attribute: .centerX, relatedBy: .equal, toItem: loadingIndicatorBaseView, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        loadingIndicatorBaseView.addConstraints(withFormat: "V:|-[v0]-|", views: indicatorView)
    }
    
    private func defaultInitialization() {
        charactersListTableview.delegate = self
        charactersListTableview.dataSource = self
        filtersSegmentedControl.addTarget(self, action: #selector(segmentSelected), for: .valueChanged)
        viewModel.onCurrentFilterOptionChange = {[unowned self] in
            self.charactersListTableview.reloadData()
            self.reloadSegments()
        }
        
        viewModel.onStartFetching = { [unowned self] in
            self.charactersListTableview.tableFooterView = self.loadingIndicatorBaseView
            self.indicatorView.startAnimating()
        }
        viewModel.onDoneFetching = { [unowned self] in
            self.charactersListTableview.tableFooterView = nil
            self.indicatorView.stopAnimating()
        }
        
        viewModel.onFetchCharactersError = {[unowned self] (errorMessage)in
            let alert =  UIAlertController.init(title: "Alert", message: errorMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "Ok", style: .destructive, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        viewModel.fetchCharacters()
    }
    
    private func reloadSegments() {
        let maximumAllowedSegmentOptionWidth = CGFloat(80.0)
        self.filtersSegmentedControl.removeAllSegments()
        for index in 0..<self.viewModel.numberOfFilterOptions {
            self.filtersSegmentedControl.insertSegment(
                withTitle: self.viewModel.filterOptionTitle(atIndex: index),
                at: index,
                animated: false)
        }
        self.filtersSegmentedControl.selectedSegmentIndex = self.viewModel.currentFilterOption.order
        self.filtersSegmentedControl.setWidth(maximumAllowedSegmentOptionWidth,
                                              forSegmentAt: self.filtersSegmentedControl.selectedSegmentIndex)
    }
    
    @objc func segmentSelected() {
        self.viewModel.selectFilterOption(atIndex: filtersSegmentedControl.selectedSegmentIndex)
    }
    
    func loadMoreCharacters() {
        viewModel.fetchCharacters()
    }
    
}


extension SWCharacterListVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfCharacters
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        let characterModel = viewModel.characterViewModel(atIndex: indexPath.row)
        cell.textLabel?.text = characterModel.nameString
        cell.detailTextLabel?.text = characterModel.eyeColorString
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if (indexPath.row == viewModel.numberOfCharacters - 1) {
            if (viewModel.canFetchMoreCharacters && viewModel.currentFilterOption.order == 0
                && !viewModel.isFetching) {
                viewModel.fetchCharacters()
            }
        }
    }

}

