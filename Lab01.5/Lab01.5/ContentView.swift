//
//  ContentView.swift
//  Lab01.5
//
//  Created by Diego Antonio García Padilla on 01/09/24.
//

import SwiftUI

// Nombre de la vista
struct ContentView: View {
    
    // Variables
    @State var value = ""
    @State var toggleValue = false
    @State var pickerValue = ""
    
    // El body de la vista (donde van los componentes gráficos)
    var body: some View {
        
        ScrollView {
            // Contenedor vertical
            VStack {
                Text("Personal Info")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                // Espacio
                Spacer().frame(height:50)
                
                ZStack {
                    // Info del usuario
                    GroupBox {
                        Spacer().frame(height: 80)
                        
                        // Nombre
                        Text("Edward Franklin")
                            .font(.title)
                            .frame(width: .infinity)
                        
                        // Ocupacion
                        Text("iOS Developer")
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .frame(width: .infinity)
                        
                        // Estado (en linea)
                        HStack(spacing: 0) {
                            // Para poner la imagen al frente es necesario un ZStack
                            
                            // Agrupar elementos
                            Group {
                                // Circulo
                                Circle()
                                    .fill(.green)
                                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                    .frame(height: 10)
                                
                                // Texto de online
                                Text("Online")
                                    .foregroundColor(.green)
                            }.padding([.top, .bottom], 8)
                                .padding([.leading, .trailing], 16)
                        }.overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.green, lineWidth: 3)
                        ).padding(.top, 20)
                    }.clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 1)
                    ).zIndex(0.0)
                    
                    // Imagen del usuario
                    Image("profile")
                        // Propiedad necesaria para cambiar el tamaño de la imagen
                        .resizable()
                        // En analogía con css es el aspect-fit de las imágenes
                        .scaledToFill()
                        // Definimos un tamaño predefinido
                        .frame(width: .infinity, height: 100)
                        // Forzamos a que tenga la forma de un circulo
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(.top, -150)
                        .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                }
                
                // Espacio
                Spacer().frame(height: 24)
                
                HStack(spacing: 64) {
                    // Mensaje
                    Button {
                        print("Message")
                    } label: {
                        Image(systemName: "message.fill")
                            .resizable()
                            // Color para el icono
                            .tint(.red)
                            .frame(width:24, height: 24)
                            .padding(16)
                            // Colores RGB
                            .background(Color(UIColor(red: 1, green: 0, blue: 0, alpha: 0.2)))
                            .clipShape(Circle())
                            // Borde del botón
                            .overlay(
                                Circle()
                                    .stroke(Color.red, lineWidth: 1)
                            )
                    }
                    
                    // Llamada
                    Button {
                        print("Call")
                    } label: {
                        Image(systemName: "phone.fill")
                            .resizable()
                            // Color para el icono
                            .tint(.green)
                            .frame(width:24, height: 24)
                            .padding(16)
                            // Colores RGB
                            .background(Color(UIColor(red: 0, green: 1, blue: 0, alpha: 0.2)))
                            .clipShape(Circle())
                            // Borde del botón
                            .overlay(
                                Circle()
                                    .stroke(Color.green, lineWidth: 1)
                            )
                    }
                    
                    // Videollamada
                    
                    Button {
                        print("Video")
                    } label: {
                        Image(systemName: "video.fill")
                            .resizable()
                            // Color para el icono
                            .tint(.blue)
                            .frame(width:24, height: 24)
                            .padding(16)
                            // Colores RGB
                            .background(Color(UIColor(red: 0, green: 0, blue: 1, alpha: 0.2)))
                            .clipShape(Circle())
                            // Borde del botón
                            .overlay(
                                Circle()
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                    }
                }
                
                Spacer().frame(height: 26)
                
                Button {
                    print("Info")
                } label: {
                    Text("Info")
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        .foregroundColor(.gray)
                        .background(Color(UIColor.systemGray6))
                        .overlay(
                            Capsule()
                                .stroke(Color(UIColor.systemGray))
                        )
                    
                }.clipShape(Capsule())
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                
                Spacer().frame(height: 26)
                
                Form(content: {
                    Section(header: Text("First Name")) {
                        TextField("First", text: $value)
                    }

                    Section(header: Text("Last Name")) {
                        TextField("Last", text: $value)
                    }
                }).frame(height: 200)
                
                Spacer().frame(height: 26)
                
                Button {
                    print("Notifications")
                } label: {
                    Text("Notifications")
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        .foregroundColor(.gray)
                        .background(Color(UIColor.systemGray6))
                        .overlay(
                            Capsule()
                                .stroke(Color(UIColor.systemGray))
                        )
                    
                }.clipShape(Capsule())
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                
                VStack(spacing: 20) {
                    Spacer().frame(height: 30)

                    // Componente de switch y toggle
                    Toggle(isOn: $toggleValue) {
                        // Texto del componente
                        Text("In-app notifications")
                    }

                    // Línea divisora entre los toggle
                    Divider()

                    Toggle(isOn: $toggleValue) {
                        Text("Call")
                    }

                    // Línea divisora entre los toggle
                    Divider()

                    Toggle(isOn: $toggleValue) {
                        Text("Screen Share")
                    }
                }
                
                Spacer().frame(height: 26)
                
                Button {
                    print("Language")
                } label: {
                    Text("Language")
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        .foregroundColor(.gray)
                        .background(Color(UIColor.systemGray6))
                        .overlay(
                            Capsule()
                                .stroke(Color(UIColor.systemGray))
                        )
                    
                }.clipShape(Capsule())
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                
                Picker(selection: $pickerValue) {
                    /* Aqui van cada una de las opciones del picker con su tag respectivo, este es el valor que se va a guardar en tu picker value */
                    Text("Spanish").tag(0)
                    Text("English").tag(1)
                    Text("Italian").tag(2)
                } label: {
                    Text("English")
                }
                
                Spacer().frame(height: 50)
                
                Button {
                    print("Log out")
                } label: {
                    Text("Log out")
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        .foregroundColor(.purple)
                        .overlay(
                            Rectangle()
                                .stroke(Color(UIColor.purple))
                        )
                }.clipShape(Rectangle())
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                
            }.padding()
            
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
