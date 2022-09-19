//
//  ViewController.swift
//  HW17
//
//  Created by Борис Киселев on 19.09.2022.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    //MARK: - SubView's
    
    var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = UISearchBar.Style.minimal
        
        return searchBar
    }()
    
    var label: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 35)
        label.text = "Поиск"
        
        return label
    }()
    
    var collectionView = AlbumCollectionView()
    
    
    //MARK: - Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()
        

        collectionViewSettings()
        setupHierarchy()
        setupLayout()
       
    }

    //MARK: - Setup Hierarchy
    
    func setupHierarchy() {
        view.addSubview(searchBar)
        view.addSubview(label)
        view.addSubview(collectionView)
    }
    
    //MARK: - Settings
    
   
    
    func collectionViewSettings() {
        collectionView.showsVerticalScrollIndicator = false
    }
    
    
    //MARK: Setup Autolayout
    
    func setupLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.topAnchor.constraint(equalTo: label.safeAreaLayoutGuide.bottomAnchor, constant: 10).isActive = true
        searchBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true

        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: searchBar.safeAreaLayoutGuide.bottomAnchor, constant: 10).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80).isActive = true
        
    }

}
