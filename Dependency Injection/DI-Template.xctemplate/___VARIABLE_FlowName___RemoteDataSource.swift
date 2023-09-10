//
//  ___VARIABLE_FlowName___RemoteDataSource.swift
//

import Foundation

class ___VARIABLE_FlowName___RemoteDataSource: ___VARIABLE_FlowName___DataSourceProtocol {
    @Injected(\.___VARIABLE_FlowName___Service) private var ___VARIABLE_FlowName___Service: ___VARIABLE_FlowName___ServiceProtocol

    func fetchData() async throws -> String {
        try await ___VARIABLE_FlowName___Service.fetchData()
    }
}
