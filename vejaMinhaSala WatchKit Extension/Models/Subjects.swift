import Foundation

struct Subjects: Codable {

    let classId: String
    let subjects: [Subject]

    enum CodingKeys: String, CodingKey {
        case classId = "turma"
        case subjects = "materias"
    }
}
