import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblOyuncu1Skor: UILabel!
    @IBOutlet weak var lblOyuncu2Skor: UILabel!
    @IBOutlet weak var lblOyuncu1Puan: UILabel!
    @IBOutlet weak var lblOyuncu2Puan: UILabel!
    @IBOutlet weak var ImgOyuncu1Durum: UIImageView!
    @IBOutlet weak var ImgOyuncu2Durum: UIImageView!
    @IBOutlet weak var ImgZar1: UIImageView!
    @IBOutlet weak var ImgZar2: UIImageView!
    @IBOutlet weak var lblSetResult: UILabel!
    
    var oyuncuPuanları = (birinciOyuncuPuani: 0, ikinciOyuncuPuanı: 0)
    var oyuncuSkorları = (birinciOyuncuSkoru: 0, ikinciOyuncuSkoru: 0)
    var oyuncuSıra: Int = 1
    
    var maxSetSayisi: Int = 5
    var suankiSet: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let arkaPlan = UIImage(named: "arkaPlan") {
            self.view.backgroundColor = UIColor(patternImage: arkaPlan)
        }
        
        // Registering for shake gesture
        self.becomeFirstResponder()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            zarDegerleriniUret()
        }
    }
    
    func setSonucu ( zar1: Int, zar2: Int) {
    
    }
    
    func zarDegerleriniUret() {
        let zar1 = arc4random_uniform(6) + 1
        let zar2 = arc4random_uniform(6) + 1
        
        ImgZar1.image = UIImage(named: String(zar1))
        ImgZar2.image = UIImage(named: String(zar2))
        
        setSonucu(zar1: Int(zar1), zar2: Int(zar2))
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
}

