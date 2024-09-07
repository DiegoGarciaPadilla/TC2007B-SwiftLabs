//
//  PokemonListRequirement.swift
//  Pokedex
//
//  Created by Diego Antonio García Padilla on 07/09/24.
//

import Foundation

protocol PokemonListRequirementProtocol {
    func getPokemonList(limit: Int) async -> Pokedex?
}

class PokemonListRequirement: PokemonListRequirementProtocol {
    let dataRepository: PokemonRepository

    init(dataRepository: PokemonRepository = PokemonRepository.shared) {
        self.dataRepository = dataRepository
    }
    
    func getPokemonList(limit: Int) async -> Pokedex? {
        return await dataRepository.getPokemonList(limit: limit)
    }
}
