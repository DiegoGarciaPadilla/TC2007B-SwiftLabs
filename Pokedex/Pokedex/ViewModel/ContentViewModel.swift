//
//  ContentViewModel.swift
//  Pokedex
//
//  Created by Diego Antonio García Padilla on 07/09/24.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var pokemonList = [PokemonBase]()
    
    func getPokemonList() async {
        let pokemonRepository = PokemonRepository()
        
        let result = await pokemonRepository.getPokemonList(limit: 1279)
        
        for pokemon in result!.results {
            let numberPokemon = Int(pokemon.url.split(separator: "/")[5])!
            
            let infoPokemon = await pokemonRepository.getPokemonInfo(numberPokemon: numberPokemon)
            
            let tempPokemon = PokemonBase(id: numberPokemon, pokemon: pokemon, perfil: infoPokemon)
            
            self.pokemonList.append(tempPokemon)
        }
    }
    
    
}
