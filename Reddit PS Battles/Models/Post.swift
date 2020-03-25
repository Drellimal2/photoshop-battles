import Foundation
import SwiftUI

struct Post: Identifiable, Decodable {
    let id = UUID()
    let url: String
    let title: String
    let imageUrl: String
}
