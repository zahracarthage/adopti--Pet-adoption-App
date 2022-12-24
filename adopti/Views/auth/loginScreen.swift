//
//  loginScreen.swift
//  adopti
//
//  Created by Zahra chouchane on 16/7/2022.
//

import SwiftUI
import AuthenticationServices

struct loginScreen: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @FocusState var focus1: Bool
    @FocusState var focus2: Bool
    @State var showPassword: Bool = false
    @State var isLinkActive = false


    var body: some View {
     
            
            
            
        VStack{
           
            
            VStack(alignment: .leading){
                
          
                VStack(alignment: .leading, spacing: 4) {
                                Text("Hey there!")
                                    .lineLimit(2)
                                    .font(Font.custom("Poppins-SemiBold", size: 22))
                                    .foregroundColor(Color("DarkBlue"))
                                Text("Welcome back")
                                    .font(Font.custom("Poppins-SemiBold", size: 22))
                                    .foregroundColor(Color("DarkBlue"))


                                
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom,40)
                    
            
            VStack(alignment: .leading) {
                Text("Email")
                    .font(Font.custom("Poppins-Medium", size: 14))
                    .foregroundColor(Color("LightBlue"))

                TextField("Enter your Email", text: $username)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("DarkBlue"), style: StrokeStyle(lineWidth: 0.7)))
            }.padding(.bottom,25)
           
            VStack(alignment: .leading) {
                Text("Password")
                    .font(Font.custom("Poppins-Medium", size: 14))
                    .foregroundColor(Color("LightBlue"))

                SecureInputView("Password", text: $password)

            }
                     
            Text("Forgot password?")
                .font(Font.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color("LightBlue"))
                .padding(.top,10)
                .frame(maxWidth: .infinity, alignment: .trailing)
                       
            LargeButton(title: "Login", backgroundColor: Color("PrimaryPink"), foregroundColor: .white, action: {})
                
           
                
                SignInWithAppleButton(.signIn) { request in
                    request.requestedScopes = [.fullName,.email]                } onCompletion: { result in
                    switch result {
                        case .success(let authResults):
                            print("Authorisation successful")
                            
                            guard let credentials = authResults.credential as? ASAuthorizationAppleIDCredential,
                                  
                                    let identityToken = credentials.identityToken,
                                    let identityTokenString = String(data: identityToken, encoding: .utf8) else { return }
                            let body = ["appleIdentityToken": identityTokenString]
                            guard let jsonData = try? JSONEncoder().encode(body) else { return }
                            
                        case .failure(let error):
                            print("Authorisation failed: \(error.localizedDescription)")
                    }
                    }.signInWithAppleButtonStyle(.black)
                    .frame(width: .infinity, height: 55, alignment: .center)

                    
            }
           
            
            HStack(alignment: .center){
                Text("Don't have an account?")
                    .lineLimit(1)
                    .font(Font.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color("DarkBlue"))

                   
           
                
                NavigationLink(destination: SignUp(), isActive: $isLinkActive) {
                    Button(action: {
                        self.isLinkActive = true
                    }) {
                        Text("Sign up")
                            .font(Font.custom("Poppins-SemiBold", size: 15))
                            .foregroundColor(Color("PrimaryPink"))
                    }
                }


            }
            
            .padding()
            
         
            
            BottomPicture(ImgName: "cat", ShadowColor: "PrimaryPink" )
                .edgesIgnoringSafeArea(.bottom)
            
                
        
           
        }.padding()
         .navigationTitle("Login")
         .navigationBarTitleDisplayMode(.inline)
               
            
        }
  /*
    private func showAppleLoginView() {
        SignInWithAppleViewModel = SignInWithAppleViewModel()
        
        // 1. Instantiate the AuthorizationAppleIDProvider
        let provider = ASAuthorizationAppleIDProvider()
        // 2. Create a request with the help of provider - ASAuthorizationAppleIDRequest
        let request = provider.createRequest()
        // 3. Scope to contact information to be requested from the user during authentication.
        request.requestedScopes = [.fullName, .email]
        // 4. A controller that manages authorization requests created by a provider.
        let controller = ASAuthorizationController(authorizationRequests: [request])
        // 5. Set delegate to perform action
        controller.delegate = signInWithAppleViewModel
        // 6. Initiate the authorization flows.
        controller.performRequests()
    }*/
            
        
    
}

struct loginScreen_Previews: PreviewProvider {
    static var previews: some View {
        loginScreen()
    }
}



struct QuickSignInWithApple: UIViewRepresentable {
    typealias UIViewType = ASAuthorizationAppleIDButton
    
    func makeUIView(context: Context) -> UIViewType {
        return ASAuthorizationAppleIDButton()
        // or just use UIViewType() 😊 Not recommanded though.
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
