//
//  ViewController.swift
//  Searching_Algo
//
//  Created by Jamal Ahamad on 02/02/18.
//  Copyright © 2018 Jamal Ahamad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //linearSearch(value: 2)
        binarySearch(value: 30)
    }

    // MARK:- Linear search
    
    func linearSearch(value : Int){
        
        let array = [2,3,5,8,7,10,15]
        var count = 0
        
        for (index,element) in array.enumerated(){
            
            if element == value{
                count += 1
                print("value found : \(element) at index : \(index+1)")
                print("count is \(count)")
            }
        }
    }
    
    // MARK:- Binary search over sorted array
    
    func binarySearch(value : Int){
        var count = 0
        let array = [2,3,5,8,7,10,15,6,4,25,30]
        
        var firstIndex = array[0]
        var lastIndex = array.count-1
        var middle = 0
        while firstIndex <= lastIndex{
            
            count += 1
            middle = (firstIndex + lastIndex)/2
            let temp = array[middle]
            
            if value < temp{
                
                lastIndex = middle - 1
            }
            
            if value > temp{
                
                firstIndex = middle + 1
            }
            
            if value == array[middle]{
                
                print("value found at \(middle)")
                print("count \(count)")
                return
            }
           
        }
        
        if firstIndex >= lastIndex {
            
            print("value not found")
        }
        
    }
}

