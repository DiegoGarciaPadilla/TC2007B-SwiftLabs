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

class PokemonRepository : PokemonAPIProtocol {
    
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
