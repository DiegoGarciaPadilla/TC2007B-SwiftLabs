//
//  ContentViewModel.swift
//  Pokedex
//
//  Created by Diego Antonio García Padilla on 07/09/24.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var pokemonList = [PokemonBase]()
    
    var pokemonListRequirement: PokemonListRequirementProtocol
    var pokemonInfoRequirement: PokemonInfoRequirementProtocol

    init(pokemonListRequirement: PokemonListRequirementProtocol = PokemonListRequirement(),
            pokemonInfoRequirement: PokemonInfoRequirementProtocol = PokemonInfoRequirement()) {
        self.pokemonListRequirement = pokemonListRequirement
        self.pokemonInfoRequirement = pokemonInfoRequirement
    }
    
    @MainActor
    func getPokemonList() async {
        let result = await pokemonListRequirement.getPokemonList(limit: 1279)
        
        for pokemon in result!.results {
            
            let numberPokemon = Int(pokemon.url.split(separator: "/")[5])!
            let infoPokemon = await pokemonInfoRequirement.getPokemonInfo(numberPokemon: numberPokemon)
            let tempPokemon = PokemonBase(id: numberPokemon, pokemon: pokemon, perfil: infoPokemon)
            
            self.pokemonList.append(tempPokemon)
        }
    }
    
    
}
