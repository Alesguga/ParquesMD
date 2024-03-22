class ResultImg: Codable {
    let imagenes:[Imagen]?
    private enum CodingKeys: String, CodingKey{
        case imagenes = "imagenes"
    }
}

struct Imagen: Codable {
    let id:String?
    let parque:String?
    let foto:String?
    
    private enum CodingKeys: String, CodingKey{
        case id = "id"
        case parque = "parque"
        case foto = "foto"
    }
}
