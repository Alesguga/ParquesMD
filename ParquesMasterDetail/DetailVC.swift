import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var ivparquedetail: UIImageView!
    @IBOutlet weak var lblnombredetail: UILabel!
    @IBOutlet weak var ivmapadetail: UIImageView!
    @IBOutlet weak var ivfondodetail: UIImageView!
    @IBOutlet weak var lbldescdetail: UILabel!
    
    var parque: Parque?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showParque()
    }
    
    func showParque() {
        guard let parque = parque else { return }
        
        // Configurar nombre del parque
        lblnombredetail.text = parque.nombre
        
        // Mostrar imagen del parque
        if let imageURLString = parque.imagen,
           let imageURL = URL(string: imageURLString) {
            URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
                guard let data = data, let image = UIImage(data: data) else { return }
                DispatchQueue.main.async {
                    self.ivparquedetail.image = image
                }
            }.resume()
        }
        
        // Mostrar mapa del parque
        if let mapaURLString = parque.mapa,
           let mapaURL = URL(string: mapaURLString) {
            URLSession.shared.dataTask(with: mapaURL) { (data, response, error) in
                guard let data = data, let image = UIImage(data: data) else { return }
                DispatchQueue.main.async {
                    self.ivmapadetail.image = image
                }
            }.resume()
        }
        
        // Mostrar imagen de fondo del parque
        if let fondoURLString = parque.fondo,
           let fondoURL = URL(string: fondoURLString) {
            URLSession.shared.dataTask(with: fondoURL) { (data, response, error) in
                guard let data = data, let image = UIImage(data: data) else { return }
                DispatchQueue.main.async {
                    self.ivfondodetail.image = image
                }
            }.resume()
        }
        
        // Mostrar descripción del parque
        if let descripcion = parque.descripcion {
            lbldescdetail.attributedText = descripcion.htmlToAttributedString()
        }
    }
}

extension String {
    func htmlToAttributedString() -> NSAttributedString? {
        guard let data = self.data(using: .utf8) else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
        } catch {
            return nil
        }
    }
}
