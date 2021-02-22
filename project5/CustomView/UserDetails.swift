//
//  UserDetails.swift
//  project5
//
//  Created by Syed Mohsin Hassan on 17/02/2021.
//

import UIKit

class UserDetails: UIView {
    
    @IBOutlet weak var label: UILabel!
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
    func binddata(title: String){
        label.text = title
        
    }
    
}


extension UserDetails {
    func loadNib() {
        let view = getNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
    func getNib() -> UIView {
        let bundle = Bundle(for: UserDetails.self)
        let nib = UINib(nibName: "UserDetails", bundle: bundle)
        guard let summaryHeaderView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            return UIView()
        }
        return summaryHeaderView
    }
}
