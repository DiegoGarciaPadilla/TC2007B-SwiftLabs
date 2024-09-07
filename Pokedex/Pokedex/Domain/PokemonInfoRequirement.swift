//
//  PokemonInfoRequirement.swift
//  Pokedex
//
//  Created by Diego Antonio García Padilla on 07/09/24.
//

import Foundation

protocol PokemonInfoRequirementProtocol {
    func getPokemonInfo(numberPokemon: Int) async -> Perfil?
}

class PokemonInfoRequirement : PokemonInfoRequirementProtocol {
    let dataRepository: PokemonRepository
    
    init(dataRepository: PokemonRepository = PokemonRepository.shared) {
        self.dataRepository = dataRepository
    }
    
    func getPokemonInfo(numberPokemon: Int) async -> Perfil? {
        return await dataRepository.getPokemonInfo(numberPokemon: numberPokemon)
    }
    
}
