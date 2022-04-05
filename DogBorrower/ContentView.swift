//
//  ContentView.swift
//  DogBorrower
//
//  Created by Aimee Sullivan on 05/04/2022.
//

import SwiftUI
import AuthenticationServices

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        VStack(
            alignment: .center
        ) {
            Image("logo")
                .resizable()
                .padding(.all)
                .scaledToFit()
            
            Form{
                TextField(text: $username, prompt: Text("Username")) {
                    
                }
                
                SecureField(text: $password, prompt: Text("Password")) {
                    
                }
                
                HStack{
                    Spacer()
                    
                    Button(action: {
                        print("sign up")
                    }, label: {
                        Text("Sign Up")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.all)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        print("log in")
                    }, label: {
                        Text("Log In")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.all)
                    })
                    
                    Spacer()
                }
                .buttonStyle(.bordered)
            }
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
