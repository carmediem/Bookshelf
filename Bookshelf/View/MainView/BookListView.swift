//
//  BookListView.swift
//  Bookshelf
//
//  Created by Carmen Chiu on 7/7/22.
//

import SwiftUI

struct BookListView: View {
    
    @StateObject var bookViewModel = BookViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach($bookViewModel.books) { item in
                    
                    NavigationLink(destination: BookDetailView(book: item)) {
                        BookDescriptionView(book: item.wrappedValue)
                    }
                }
            }
            .navigationTitle("Book Shelf")
            .listStyle(PlainListStyle())
            //.listStyle(.automatic)
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
