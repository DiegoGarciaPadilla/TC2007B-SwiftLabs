//
//  PokemonRepository.swift
//  Pokedex
//
//  Created by Diego Antonio García Padilla on 05/09/24.
//

import Foundation

struct Api {
    static let base = "https://pokeapi.co/api/v2/"
    
    struct routes {
        static let pokemon = "/pokemon"
    }
}

protocol PokemonAPIProtocol {
    
    // https://pokeapi.co/api/v2/pokemon/limit=1279
    func getPokemonList(limit: Int) async -> Pokedex?
    
    // https://pokeapi.co/api/v2/pokemon/{number_pokemon}/
    func getPokemonInfo(numberPokemon:Int) async -> Perfil?
    
    
}

class PokemonRepository : PokemonAPIProtocol {
    
    static let shared = PokemonRepository()
    
    let nService : NetworkAPIService
    
    init(nService: NetworkAPIService = NetworkAPIService.shared) {
        self.nService = nService
    }
    
    func getPokemonList(limit: Int) async -> Pokedex? {
        return await nService.getPokedex(url: URL(string:"\(Api.base)\(Api.routes.pokemon)")!, limit: limit)
    }
        
    func getPokemonInfo(numberPokemon: Int) async -> Perfil? {
        return await nService.getPokemonInfo(url: URL(string:"\(Api.base)\(Api.routes.pokemon)/\(numberPokemon)")!)
    }
    
}
