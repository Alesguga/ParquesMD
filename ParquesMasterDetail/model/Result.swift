class Result: Codable {
    let parques:[Parque]?
    private enum CodingKeys: String, CodingKey{
        case parques = "parques"
    }
}

struct Parque: Codable {
    let id:String?
    let nombre:String?
    let comunidad:String?
    let imagen:String?
    let mapa:String?
    let fondo:String?
    let descripcion:String?
    let likes:String?
    
    private enum CodingKeys: String, CodingKey{
        case id = "id"
        case nombre = "nombre"
        case comunidad = "comunidad"
        case imagen = "imagen"
        case mapa = "mapa"
        case fondo = "fondo"
        case descripcion = "descripcion"
        case likes = "likes"

    }
}
