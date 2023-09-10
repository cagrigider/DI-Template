//
//  ___VARIABLE_FlowName___UseCase.swift
//

import Foundation

protocol ___VARIABLE_FlowName___UseCaseProtocol {
    func fetchData() async throws -> String
}

class ___VARIABLE_FlowName___UseCase: ___VARIABLE_FlowName___UseCaseProtocol {
    let repository: ___VARIABLE_FlowName___RepositoryProtocol

    init(repository: ___VARIABLE_FlowName___RepositoryProtocol = ___VARIABLE_FlowName___Repository()) {
        self.repository = repository
    }

    func fetchData() async throws -> String {
        try await repository.fetchData()
    }
}

private struct ___VARIABLE_FlowName___UseCaseProviderKey: InjectionKey {
    static var currentValue: ___VARIABLE_FlowName___UseCaseProtocol = ___VARIABLE_FlowName___UseCase()
}
