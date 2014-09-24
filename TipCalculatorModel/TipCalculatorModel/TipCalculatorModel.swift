//
//  TipCalculatorModel.swift
//  TipCalculatorModel
//
//  Created by Student on 9/12/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import Foundation
class TipCalculatorModel {
    
    //2
    var total: Double
    var taxPct: Double
    var subtotal: Double
    {
        get{
            return total/(taxPct+1)
        }
    }
    //3
    init(total: Double,taxPct: Double){
        self.total = total
        self.taxPct = taxPct
        //subtotal = total / (taxPct + 1)
    }
    
    //4
    func calcTipWithTipPct(tipPct:Double)->Double{
        return subtotal * tipPct
    }
    
    //1
    func returnPossibleTips() -> [Int: Double]{
        let PossibleTipsInferred = [0.15, 0.18, 0.20]
        let PossibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        var numberOfItems = PossibleTipsInferred.count
        
        //2
        var retval = [Int: Double]()
        for PossibleTip in PossibleTipsInferred{
            let intPct = Int(PossibleTip*100)
            
            //3
            retval[intPct] = calcTipWithTipPct(PossibleTip)
        }
        return retval
    }
}
