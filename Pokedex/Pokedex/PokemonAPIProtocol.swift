//
//  PokemonAPIProtocol.swift
//  Pokedex
//
//  Created by Diego Antonio García Padilla on 05/09/24.
//

import Foundation

protocol PokemonAPIProtocol {
    
    // https://pokeapi.co/api/v2/pokemon/limit=1279
    func getPokemonList(limit: Int) async -> Pokedex?
    
    // https://pokeapi.co/api/v2/pokemon/{number_pokemon}/
    func getPokemonInfo(numberPokemon:Int) async -> Perfil?
    
    
}
