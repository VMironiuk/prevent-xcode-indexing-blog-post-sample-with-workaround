//
//  ViewController.swift
//  XcodeIndexingSample
//
//  Created by Volodymyr Myroniuk on 04.03.2023.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet private weak var textView: NSTextView!
    @IBOutlet private weak var fileNameLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let resourceName = "dictionaries/001/de/LICENSE"
        
        let path = Bundle.main.path(forResource: resourceName, ofType: "")!
        let strings = try! String(contentsOfFile: path, encoding: .utf8)
        textView.string = strings
        
        fileNameLabel.stringValue = "Contents of \"\(resourceName)\" file:"
    }
}

