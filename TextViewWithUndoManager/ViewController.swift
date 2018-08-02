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
    @IBOutlet weak var undoButton: UIBarButtonItem!
    @IBOutlet weak var redoButton: UIBarButtonItem!
    
    @IBAction func hideKeyboard(_ sender: UIBarButtonItem) {
        self.textView.resignFirstResponder()
    }
    
    @IBAction func redo(_ sender: UIBarButtonItem) {
        self.textView.undoManager?.redo()
        self.refreshView()
    }
    
    @IBAction func undo(_ sender: UIBarButtonItem) {
        self.textView.undoManager?.undo()
        self.refreshView()
    }
    
    private func refreshView() {
        guard let undoManager = self.textView.undoManager else {
            return
        }
        self.undoButton.isEnabled = undoManager.canUndo
        self.redoButton.isEnabled = undoManager.canRedo
    }
    
    func textViewDidChange(_ textView: UITextView) {
        self.refreshView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.refreshView()
    }
}
