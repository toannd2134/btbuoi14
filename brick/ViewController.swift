//
//  ViewController.swift
//  brick
//
//  Created by Toan on 2/17/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        draw()
    }
    func draw(){
        
    
           //  hinh vuong
//                                for i in 0...1{
//                                    for j in 0...1{
//                                        drawBrick(row: i, col: j, Radius: 20 , color: .red)
//                                    }
//                                }

//        //hinh L
//        for i in 0...2{
//            for j in 0...1{
//                if i<2 && j<1{
//                 drawBrick(row: i, col: j, Radius: 20 , color: .red)
//                }else if i==2{
//                    drawBrick(row: i, col: j, Radius: 20 , color: .red)
//                }
//
//
//        }
//        }// hinh i
//        for i in 0...3{
//            for j in 0...1{
//                if i>0 && j<1{
//                    drawBrick(row: i, col: j , Radius: 20 , color: .red)
//                }
//            }
//        }
        //hinh L nguoc
//        for i in 0...2{
//            for j in 0...1{
//                if j == 1 && i < 2 {
//                    drawBrick(row: i, col: j, Radius: 20 , color: .red)
//                }else if i == 2{
//                    drawBrick(row: i, col: j, Radius: 20 , color: .red)
//
//                }
//            }
//        }
        // hinh z
//        for i in 0...2{
//            for j in 0...2{
//                if i == 0 && j<2 || i == 2 && j > 0{
//                    drawBrick(row: i, col: j, Radius: 20 , color: .red)
//                }else if i == 1 && j==1   {
//                    drawBrick(row: i, col: j, Radius: 20 , color: .red)
//                }
//
//            }
//        }
        //hinh dao z
        for i in 0...2{
                    for j in 0...2{
                        if i == 0 && j>0 || i == 2 && j < 2{
                            drawBrick(row: i, col: j, Radius: 20 , color: .red)
                        }else if i == 1 && j==1   {
                            drawBrick(row: i, col: j, Radius: 20 , color: .red)
                        }
        
                    }
                }
    }
func drawBrick(row : Int ,col:Int ,Radius : CGFloat,color:UIColor){
     let d = Radius*2
     let draw = brick(Strart: CGPoint(x:2*d*CGFloat(col) , y: 2*d*CGFloat(row)), r: d, color: color)
     view.addSubview(draw)
 }
    

}

