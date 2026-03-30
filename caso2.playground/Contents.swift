var incas: Set<String> = ["Manco Cápac",
    "Sinchi Roca",
    "Lloque Yupanqui",
    "Mayta Cápac",
    "Cápac Yupanqui",
    "Inca Roca",
    "Yahuar Huácac",
    "Huiracocha",
    "Pachacútec Inca Yupanqui",
    "Amaru Inca Yupanqui",
    "Túpac Inca Yupanqui",
    "Huayna Cápac",
    "Huáscar","Atahualpa"
]
let buscar = "Huayna Cápac"
if incas.contains(buscar) {
    print("\(buscar) está en la cronología")
} else {
    print("\(buscar) NO está en la cronología")
}
print("")
var otrosIncas: Set<String> = [
    "Manco Cápac",
    "Túpac Inca Yupanqui",
    "Nuevo Inca"
]
let union = incas.union(otrosIncas)
print("Unión sin duplicados:")
for inca in union {
    print(inca)
}
print("")
print("Incas con YUPANQUI:")

for inca in incas {
    if inca.uppercased().contains("YUPANQUI") {
        print(inca)
    }
}
