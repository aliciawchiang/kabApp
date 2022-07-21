//
//  ViewController.swift
//  kabApp
//
//  Created by Scholar on 7/19/22.
//  hi team!

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trash1: UIImageView!
    @IBOutlet weak var trash2: UIImageView!
    @IBOutlet weak var trash3: UIImageView!
    @IBOutlet weak var trash4: UIImageView!
    @IBOutlet weak var trash5: UIImageView!
    @IBOutlet weak var trash6: UIImageView!
    @IBOutlet weak var trash7: UIImageView!
    @IBOutlet weak var trash8: UIImageView!
    @IBOutlet weak var trash9: UIImageView!
    @IBOutlet weak var trash10: UIImageView!
    @IBOutlet weak var trash11: UIImageView!
    @IBOutlet weak var trash12: UIImageView!
    @IBOutlet weak var trash13: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trash1.isHidden = true
        trash2.isHidden = true
        trash3.isHidden = true
        trash4.isHidden = true
        trash5.isHidden = true
        trash6.isHidden = true
        trash7.isHidden = true
        trash8.isHidden = true
        trash9.isHidden = true
        trash10.isHidden = true
        trash11.isHidden = true
        trash12.isHidden = true
        trash13.isHidden = true
    }
    var counter = 0


    @IBAction func addTrash(_ sender: Any) {
        counter += 1
        if counter < 1 {
            counter = 1}
        if counter == 1 {
            trash1.isHidden = false }
        if counter == 2 {
            trash2.isHidden = false }
        if counter == 3 {
            trash3.isHidden = false }
        if counter == 4 {
            trash4.isHidden = false }
        if counter == 5 {
            trash5.isHidden = false }
        if counter == 6 {
            trash6.isHidden = false }
        if counter == 7 {
            trash7.isHidden = false }
        if counter == 8 {
            trash8.isHidden = false }
        if counter == 9 {
            trash9.isHidden = false }
        if counter == 10 {
            trash10.isHidden = false }
        if counter == 11 {
            trash11.isHidden = false }
        if counter == 12 {
            trash12.isHidden = false }
        if counter == 13 {
            trash13.isHidden = false }
        }
    
    @IBAction func deleteTrash(_ sender: Any) {
        counter -= 1
        if counter > 12 {
            counter = 12 }
        if counter == 12 {
            trash13.isHidden = true }
        if counter == 11 {
            trash12.isHidden = true }
        if counter == 10 {
            trash11.isHidden = true }
        if counter == 9 {
            trash10.isHidden = true }
        if counter == 8 {
            trash9.isHidden = true }
        if counter == 7 {
            trash8.isHidden = true }
        if counter == 6 {
            trash7.isHidden = true }
        if counter == 5 {
            trash6.isHidden = true }
        if counter == 4 {
            trash5.isHidden = true }
        if counter == 3 {
            trash4.isHidden = true }
        if counter == 2 {
            trash3.isHidden = true }
        if counter == 1 {
            trash2.isHidden = true }
        if counter == 0 {
            trash1.isHidden = true }
    }
}

    




