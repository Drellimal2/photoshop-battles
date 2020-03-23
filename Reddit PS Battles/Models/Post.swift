import Foundation
import SwiftUI

struct Post: Identifiable {
    let id = UUID()
    let url: String
    let title: String
    let imageUrl: String
}
