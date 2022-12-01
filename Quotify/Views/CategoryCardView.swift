//
//  CategoryCardView.swift
//  Quotify
//
//  Created by Ardi Jorganxhi on 28.11.22.
//

import SwiftUI

struct CategoryCardView: View {
    
    @State var category: Category
    
    var body: some View {
        ZStack {
            
            HStack{
                
                VStack(alignment: .leading, spacing: 5){
                    
                    Text(category.category)
                        .font(.title2)
                        .fontWeight(.bold)
                        
                    
                    
                }
            }
        }
    }
}

struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(category: categoryData[0])
    }
}
