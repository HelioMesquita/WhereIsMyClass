
struct Subject: Codable {

    let weekDay: String
    let weekDayNumber: Int
    let startTime: String
    let endTime: String
    let classRoom: String
    let professor: String
    let subject: String

    enum CodingKeys: String, CodingKey {
        case weekDay = "diaDaSemana"
        case weekDayNumber = "numeroDiaDaSemana"
        case startTime = "horaInicio"
        case endTime = "horaTermino"
        case classRoom = "numeroSala"
        case professor = "professor"
        case subject = "nomeDaMateria"
    }
}
