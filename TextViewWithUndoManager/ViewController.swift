//
//  ViewController.swift
//  TextViewWithUndoManager
//
//  Created by Bart van Kuik on 02/08/2018.
//  Copyright © 2018 DutchVirtual. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var textView: UITextView!

    @IBAction func hideKeyboard(_ sender: UIBarButtonItem) {
        self.textView.resignFirstResponder()
    }
    
    @IBAction func redo(_ sender: UIBarButtonItem) {
        print("redo")
    }
    
    @IBAction func undo(_ sender: UIBarButtonItem) {
        print("undo")
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("didBegin")
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        print("didEnd")
    }
    
    override func viewDidLoad() {
    }
}
