//
//  AddressModifier.swift
//  AILRoussetBasket
//
//  Created by bastien giat on 13/03/2023.
//

import SwiftUI

struct AddressModifier: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var street = ""
    @State private var city = ""
    @State private var state = ""
    @State private var zip = ""
    @State private var phoneNumber = ""
    @State private var emailAddress = ""
    var body: some View {
        VStack(alignment: .center, spacing: 14) {
            Text("Modifier mon addresse de livraison")
                .font(.title)
                .fontWeight(.bold)
            
            Divider()
            
            HStack {
                TextField("Nom", text: $lastName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Prénom", text: $firstName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            TextField("Addresse (numéro et nom de rue)", text: $street)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                TextField("Code Postal", text: $zip)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Ville", text: $city)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            TextField("Numéro de téléphone", text: $firstName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Pays", text: $state)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                TextField("Numéro de téléphone", text: $phoneNumber)
                                .keyboardType(.phonePad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                            TextField("Addresse email", text: $emailAddress)
                                .keyboardType(.emailAddress)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Text("Continuer")
                .modifier(ActionButtonModifiers())
        }
        .padding(.horizontal)
    }
}

struct AddressModifier_Previews: PreviewProvider {
    static var previews: some View {
        AddressModifier()
    }
}
