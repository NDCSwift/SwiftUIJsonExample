//  Created by Noah Carpenter
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@NoahDoesCoding97
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger

import SwiftUI

// MARK: - ContentView

/// The main view that displays a list of fruits loaded from a JSON file.
struct ContentView: View {
    @State private var fruits: [Fruit] = [] // Holds the list of fruits to display
    
    var body: some View {
        NavigationView {
            // List displays each fruit in the fruits array
            List(fruits) { fruit in
                // NavigationLink navigates to DetailView when a fruit is selected
                NavigationLink(destination: DetailView(fruit: fruit)) {
                    VStack(alignment: .leading) {
                        // Displays the fruit's name as a headline
                        Text(fruit.name)
                            .font(.headline)
                        
                        // Displays the fruit's description as a subheadline with purple text
                        Text(fruit.description)
                            .font(.subheadline)
                            .foregroundStyle(Color.purple)
                    }
                    .padding(.vertical, 10) // Adds vertical padding to each list item
                }
            }
            .navigationTitle("Fruits") // Sets the navigation bar title
            .onAppear {
                // Loads the fruits data when the view appears
                fruits = DataLoader().loadFruits()
            }
        }
        .padding() // Adds padding around the NavigationView
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
