

import Foundation

struct Fruit: Codable, Identifiable {
    let id = UUID()
    let name: String
    let description: String
}
