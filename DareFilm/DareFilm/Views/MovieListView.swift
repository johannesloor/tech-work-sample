//
//  MovieListView.swift
//  DareFilm
//
//  Created by Johannes Loor on 2021-07-02.
//

import SwiftUI
/*
 Lists each movie in a scrollable list
 */
struct MovieListView: View {
    var movies: [Movie]
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            if movies.isEmpty{
                ProgressView()
            }
            else{
                ScrollView{
                    ForEach(movies){movie in
                        MovieView(movie: movie)
                    }
                }
            }
        }
        .padding()
    }
}
