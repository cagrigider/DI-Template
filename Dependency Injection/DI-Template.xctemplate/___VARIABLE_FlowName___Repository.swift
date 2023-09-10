//
//  ___VARIABLE_FlowName___Repository.swift
//

import Foundation

protocol ___VARIABLE_FlowName___RepositoryProtocol {
    func fetchData() async throws -> String
}

class ___VARIABLE_FlowName___Repository: ___VARIABLE_FlowName___RepositoryProtocol {
    let remoteDataSource: ___VARIABLE_FlowName___DataSourceProtocol
    let localDataSource: ___VARIABLE_FlowName___DataSourceProtocol

    init(remoteDataSource: ___VARIABLE_FlowName___DataSourceProtocol = ___VARIABLE_FlowName___RemoteDataSource(),
         localDataSource: ___VARIABLE_FlowName___DataSourceProtocol = ___VARIABLE_FlowName___LocalDataSource()) {
        self.remoteDataSource = remoteDataSource
        self.localDataSource = localDataSource
    }

    func fetchData() async throws -> String {
        try await remoteDataSource.fetchData()
    }
}
