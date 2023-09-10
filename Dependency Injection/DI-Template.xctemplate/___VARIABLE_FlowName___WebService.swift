//
//  ___VARIABLE_FlowName___WebService.swift
//

import Foundation

protocol ___VARIABLE_FlowName___ServiceProtocol {
    func fetchData() async throws -> String
}

class ___VARIABLE_FlowName___Service: ___VARIABLE_FlowName___ServiceProtocol {
    func fetchData() async throws -> String {
        return ""
    }
}

private struct ___VARIABLE_FlowName___ServiceProviderKey: InjectionKey {
    static var currentValue: ___VARIABLE_FlowName___ServiceProtocol = ___VARIABLE_FlowName___Service()
}

extension InjectedValues {
    var ___VARIABLE_FlowName___Service: ___VARIABLE_FlowName___ServiceProtocol {
        get { Self[___VARIABLE_FlowName___ServiceProviderKey.self] }
        set { Self[___VARIABLE_FlowName___ServiceProviderKey.self] = newValue }
    }
}
