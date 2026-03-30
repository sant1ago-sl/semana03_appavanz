struct MetroModel {
    static let metroLima: [String: [String]] = [
        "Linea 1": ["Bayovar", "Santa Rosa", "San Martin", "San Carlos", "Los Postes", "Los Jardines", "Piramide del Sol", "Caja de Agua", "Presbitero Maestro", "El Angel", "Miguel Grau", "28 de Julio", "Gamarra", "Nicolas Arriola", "La Cultura", "San Borja Sur", "Angamos", "Los Cabitos", "Ayacucho", "Jorge Chavez", "Atocongo", "San Juan", "Maria Auxiliadora", "Villa Maria", "Pumacahua", "Parque Industrial", "Villa El Salvador"],
        "Linea 2": ["Municipalidad de Ate", "Prolongacion Javier Prado", "Vista Alegre", "Mercado Santa Anita"],
        "Linea 3": ["El Alamo", "Huandoy", "2 de Octubre", "Villa El Sol", "Naranjal", "Carlos Izaguirre", "Tomas Valle"],
        "Linea 4": ["Mercado Santa Anita", "Mayorazgo", "Santa Patricia", "La Molina", "Los Frutales", "Manuel Olguin"]
    ]
}

func estacionesDeLinea(_ linea: String) -> [String]? {
    return MetroModel.metroLima[linea]
}

func lineasDeEstacion(_ estacion: String) -> [String] {
    var resultado: [String] = []
    
    for (linea, estaciones) in MetroModel.metroLima {
        if estaciones.contains(estacion) {
            resultado.append(linea)
        }
    }
    
    return resultado
}
func cantidadEstaciones(de linea: String) -> Int {
    return MetroModel.metroLima[linea]?.count ?? 0
}

func estacionPertenece(a linea: String, estacion: String) -> Bool {
    return MetroModel.metroLima[linea]?.contains(estacion) ?? false
}
print("todas las esaciones dle tren:")
print(estacionesDeLinea("Linea 1") ?? [])
print("")
print("lineas que pertenece una estacion:")
print(lineasDeEstacion("Mercado Santa Anita"))
print("")
print("Buscar si una estación pertenece a una linea especifica")
print(cantidadEstaciones(de: "Linea 3"))
print("")
print("Cuántas estaciones tiene una línea")
print(estacionPertenece(a: "Linea 4", estacion: "La Molina"))
