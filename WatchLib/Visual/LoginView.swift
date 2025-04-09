//
//  LoginView.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()

    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "Track TV", subtitle: "", angle: 15, background: .pink)
                
                
                //Login fields
                Form {
                    if !viewModel.errmsg.isEmpty {
                        Text(viewModel.errmsg)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()

                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    WLButton(title: "Log In", background: .blue) {
                        viewModel.login()
                    }
                    padding()
                }
                .offset(y: -50)
                
                //Create acct info
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    LoginView()
}
