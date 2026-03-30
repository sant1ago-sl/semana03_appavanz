import Foundation

var paises = ["Argentina","Bolivia","Brasil","Chile","Colombia","Ecuador","Mexico","Peru","Paraguay","Uruguay","Venezuela"]

var gdp: [Double] = [683.371,57.086,2256.910,347.174,438.121,130.529,1862.740,318.480,47.398,84.986,82.767]

if let i = paises.firstIndex(of: "Bolivia") {
    print("Bolivia:", gdp[i])
}

if let i = paises.firstIndex(of: "Peru") {
    gdp[i] = 326.608
    print("Perú 2026:", gdp[i])
    gdp[i] = 318.480
}

print("Promedio:", gdp.reduce(0,+)/Double(gdp.count))

if let max = gdp.max(),
   let i = gdp.firstIndex(of: max) {
    print("Mayor:", paises[i], max)
}

zip(paises, gdp)
    .filter { $0.1 > 300 }
    .forEach { print($0.0, $0.1) }

zip(paises, gdp)
    .sorted { $0.1 > $1.1 }
    .forEach { print($0.0, $0.1) }
