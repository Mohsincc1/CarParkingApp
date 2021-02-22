//
//  radioproperty.swift
//  project5
//
//  Created by Syed Mohsin Hassan on 12/02/2021.
//

import UIKit

protocol RadioPropertyDelegate {
    func didChangeStatus(radioButton: UIView)
}

class radioproperty: UIView {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    
    var state: RadioPropertyEnum = .notSelected
    var delegate: RadioPropertyDelegate?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }
    public override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    @IBAction func radioButton(_ sender: Any) {
        delegate?.didChangeStatus(radioButton: self)
    }
    
    
}


extension radioproperty {
    func loadNib() {
        let view = getNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
    func getNib() -> UIView {
        let bundle = Bundle(for: radioproperty.self)
        let nib = UINib(nibName: "Custom", bundle: bundle)
        guard let summaryHeaderView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            return UIView()
        }
        return summaryHeaderView
    }
    
    func changeRadioButtonStatus(state: RadioPropertyEnum){
        if state == .selected {
            imgView.image = UIImage(named: "Radio-Selected")
        }
        else {
            imgView.image = UIImage(named: "Radio")
        }
    }
    
    func binddata(title: String){
        label1.text = title
    }
}
enum RadioPropertyEnum {
    case selected
    case notSelected
}
