//
//  BookDescriptionView.swift
//  Bookshelf
//
//  Created by Carmen Chiu on 7/7/22.
//

import SwiftUI

struct BookDescriptionView: View {
    var book: Book
    
    var body: some View {
        //Hstack for the cover cover
        // Vstack for book title, author, progress, likes, and comments
        //HStack for the likes and comments
        HStack {
            Image(book.coverArt)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 150)
            
            VStack(alignment: .leading) {
                Text(book.title)
                    .fontWeight(.bold)
                    .padding(4)
                    .lineLimit(1)
                    .multilineTextAlignment(.leading)
                
                
                Text(book.author)
                    .fontWeight(.semibold)
                    .padding(6)
                
                HStack {
                    ProgressBar()
                    Text("50%")
                }
                
                HStack {
                    Image(systemName: "heart")
                    Text("393")
                    
                    Image(systemName: "message")
                    Text("192")
                }
                .foregroundColor(.secondary)
                .font(.system(size: 12, weight: .medium))
            }
            .frame(width: 200, height: 200, alignment: .leading)
        }
    }
}

struct BookDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        BookDescriptionView(book: Book(title: "The 10X Rule: The Only Difference Between Success and Failure", author: "Grant Cardone ", coverArt: "10x", releaseYear: "2011", description: ""))
    }
}

struct ProgressBar: View {
    
    var body: some View {
        ZStack(alignment: .leading) {
            Capsule().frame(width: 100, height: 5)
                .opacity(0.3)
                .foregroundColor(.gray)
            Capsule().frame(width: 50, height: 5)
                .foregroundColor(.orange)
        }
    }
}
