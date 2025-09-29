//  Created by Noah Carpenter
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@NoahDoesCoding97
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger

import Foundation

// MARK: - DataLoader

/// A class responsible for loading fruit data from a JSON file.
class DataLoader {
    /// Loads fruits from the "FruitsJSON.json" file in the app bundle.
    /// - Returns: An array of `Fruit` objects.
    func loadFruits() -> [Fruit] {
        // Attempts to locate the JSON file in the app bundle
        guard let url = Bundle.main.url(forResource: "FruitsJSON", withExtension: "json") else {
            print("Could not find FruitsJSON.json file")
            return []
        }
        
        do {
            // Reads data from the JSON file
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            // Decodes the data into an array of Fruit objects
            let fruits = try decoder.decode([Fruit].self, from: data)
            return fruits
        } catch {
            // Prints an error message if decoding fails
            print("Error decoding JSON: \(error)")
            return []
        }
    }
}
