//  Created by Noah Carpenter
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@NoahDoesCoding97
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger

import SwiftUI

// MARK: - DetailView

/// A view that displays detailed information about a specific fruit.
struct DetailView: View {
    let fruit: Fruit // The fruit to display details for
    
    var body: some View {
        VStack {
            // Displays the fruit's name in large, bold font
            Text(fruit.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10) // Adds padding below the fruit name
            
            // Displays the fruit's description in body font
            Text(fruit.description)
                .font(.body)
                .padding() // Adds padding around the description
        }
        .navigationTitle(fruit.name) // Sets the navigation bar title to the fruit's name
    }
}

// MARK: - Preview

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Sample fruit for preview purposes
        DetailView(fruit: Fruit(name: "Apple", description: "A sweet, edible fruit produced by an apple tree."))
    }
}
