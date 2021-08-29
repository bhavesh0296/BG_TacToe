//
//  MoveCommand.swift
//  BG_TacToe
//
//  Created by bhavesh on 29/08/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import Foundation

public struct MoveCommand {

    public var gameboard: Gameboard

    public var gameboardView: GameboardView

    public var player: Player

    public var position: GameboardPosition

    public func execute(completion: (() -> Void)? = nil) {
        gameboard.setPlayer(player, at: position)
        gameboardView.placeMarkView(player.markViewPrototype.copy(),
                                    at: position,
                                    animated: true,
                                    completion: completion)
    }
}
