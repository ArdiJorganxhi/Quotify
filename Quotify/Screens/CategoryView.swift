//
//  CategoryView.swift
//  Quotify
//
//  Created by Ardi Jorganxhi on 28.11.22.
//

import SwiftUI

struct CategoryView: View {
    var categories: [Category] = categoryData
    
    
    
    
    
    var body: some View {
        NavigationStack{
            
            List {
                
                ForEach(categories) {
                    item in NavigationLink(destination: QuoteView(categoryItem: item.category)){
                        CategoryCardView(category: item)
                        
                            .padding(.vertical, 5)
                        
                    }
                    
                    
                    
                }
            }.navigationTitle("Quote Categories")
            
                .navigationBarBackButtonHidden()
            
            
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
