//
//  BookDetailView.swift
//  Bookshelf
//
//  Created by Carmen Chiu on 7/7/22.
//

import SwiftUI

struct BookDetailView: View {
    
    @Binding var book: Book
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 10) {
                Image(book.coverArt)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding(.all, 20)
                
                Text(book.title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(8)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text(book.author)
                    .fontWeight(.medium)
                    .font(.callout)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 9)
            }
            
            Spacer()
            
            BookNotesView(book: book)
                .padding(.bottom, 20)
            
            Spacer()
            VStack(alignment: .leading, spacing: 16) {
                Text("Description")
                    .fontWeight(.bold)
              
    
                ScrollView(showsIndicators: false) {
                  Text(book.description)
                }
            }
            .frame(width: .infinity, alignment: .leading)
            .padding(.all, 18)
        }
    }
}
    
    struct BookNotesView: View {
        var book: Book
        
        var body: some View {
            HStack(alignment: .center, spacing: 25) {
                VStack {
                    Text("Release")
                        .fontWeight(.bold)
                    Text(book.releaseYear)
                }
                
                VStack {
                    Text("Pages")
                        .fontWeight(.bold)
                    Text("333")
                }
                
                VStack {
                    Text("Languages")
                        .fontWeight(.bold)
                    Text("English")
                }
            }
        }
    }
   
struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: .constant(Book(title: "The 10X Rule: The Only Difference Between Success and Failure", author: "Grant Cardone ", coverArt: "10x", releaseYear: "2011", description: "Book description goes here.")))
    }
}
