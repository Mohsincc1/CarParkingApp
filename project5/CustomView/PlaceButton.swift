//
//  PlaceButton.swift
//  project5
//
//  Created by Syed Mohsin Hassan on 16/02/2021.
//

import UIKit

protocol PlaceButtonDelegate{
    func didChangeController(placeButton: UIView)
    
    
}

class PlaceButton: UIView {
    
    @IBOutlet weak var placeBtn: UIButton!
   
    var delegate: PlaceButtonDelegate?
    
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
        prepareView()
    }
    
    @IBAction func placeBtn(_ sender: Any) {
        delegate?.didChangeController(placeButton: self)
    }
    func binddata(title: String){
        placeBtn.setTitle(title, for: .normal)
        
    }

}
extension PlaceButton{
    func prepareView() {
        
        Utilities.StyleButton(placeBtn)
        
       
    }
}



extension PlaceButton {
    func loadNib() {
        let view = getNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
    func getNib() -> UIView {
        let bundle = Bundle(for: PlaceButton.self)
        let nib = UINib(nibName: "PlaceButton", bundle: bundle)
        guard let summaryHeaderView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            return UIView()
        }
        return summaryHeaderView
    }
    
    
}
