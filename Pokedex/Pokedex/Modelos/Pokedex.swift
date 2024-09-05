//
//  Pokedex.swift
//  Pokedex
//
//  Created by Diego Antonio García Padilla on 04/09/24.
//

import Foundation

struct Pokedex {
    var count: Int
    var results: [Pokemon]
}

struct Pokemon {
    var name: String
    var url: String
}

struct Perfil {
    var sprites: Sprite
}

struct Sprite {
    var front_default: String
    var back_default: String
}

struct PokemonBase {
    var pokemon: Pokemon
    var perfil: Perfil
}
