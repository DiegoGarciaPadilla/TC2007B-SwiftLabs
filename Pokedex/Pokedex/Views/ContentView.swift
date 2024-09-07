//
//  ContentView.swift
//  Pokedex
//
//  Created by Diego Antonio García Padilla on 03/09/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    
    @StateObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        List(contentViewModel.pokemonList) { pokemonBase in
            HStack() {
                WebImage(url: URL(string: pokemonBase.perfil?.sprites.front_default ?? ""))
                   .resizable()
                   .scaledToFit()
                   .frame(width: 48, height: 48, alignment: .center)
                Text(pokemonBase.pokemon.name)
            }
        }.onAppear {
            Task {
                await contentViewModel.getPokemonList()
            }
        }
    }
<<<<<<< HEAD
=======
    
    func getPokemonList() async {
        
        let pokemonRepository = PokemonRepository()
        
        let result = await pokemonRepository.getPokemonList(limit: 1279)
        
        var tempPokemonList = [PokemonBase]()
        
        for pokemon in result!.results {
            let numberPokemon = Int(pokemon.url.split(separator: "/")[5])!
            
            let infoPokemon = await pokemonRepository.getPokemonInfo(numberPokemon: numberPokemon)
            
            let tempPokemon = PokemonBase(id: numberPokemon, pokemon: pokemon, perfil: infoPokemon)
            
            tempPokemonList.append(tempPokemon)
        }
        pokemonList = tempPokemonList
    }
>>>>>>> origin/main
}

#Preview {
    ContentView()
}
