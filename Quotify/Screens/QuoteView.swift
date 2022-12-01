//
//  QuoteView.swift
//  Quotify
//
//  Created by Ardi Jorganxhi on 29.11.22.
//

import SwiftUI



struct QuoteView: View {
    
    
    
    
    @State var categoryItem: String
    @State private var quoteArray = [Quotes]()
    
    
    func fetchData(){
        
        
        let category = categoryItem.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let url = URL(string: "https://api.api-ninjas.com/v1/quotes?category="+category!)!
        var request = URLRequest(url: url)
        
        request.setValue("YOUR_API_KEY", forHTTPHeaderField: "X-Api-Key")
        
        let task = URLSession.shared.dataTask(with: request) {(data, res, err) in
            
            do{
                if let data = data {
                    let result = try JSONDecoder().decode([Quotes].self, from: data)
                    
                    
                    print(result)
                    
                    DispatchQueue.main.async{
                        
                        self.quoteArray = result
                    }
                    
                }
                else{
                    print("No data!")
                }
            } catch(let error){
                print(error)
                
            }
        }.resume()
        
        
        
        
    }
    
    
    var body: some View {
        NavigationStack{
            
            
            
            ZStack {
                
                
                
                VStack(alignment: .center, spacing: -60) {
                    
                    List(quoteArray, id: \.self) { array in
                        
                        /*@START_MENU_TOKEN@*/Text(array.quote)/*@END_MENU_TOKEN@*/
                            .font(.system(size: 28 ))
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text(array.author)
                            .font(.headline)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.leading)
                        
                    }
                    
                    
                    Button(action: {
                   
                        fetchData()
                        
                    }) {
                        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                            .imageScale(.large)
                        Text("Quote it!")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .controlSize(.large)
                    
                    
                    
                    
                }.onAppear(perform: {
                    
                    fetchData()
                })
            }
            
            
            
            
            
            
        }
    }
    
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView(categoryItem: "happiness")
    }
}
