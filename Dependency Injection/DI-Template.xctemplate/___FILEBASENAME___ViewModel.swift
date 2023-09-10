//
//  ___FILEBASENAME___ViewModel.swift
//

import SwiftUI

class ___FILEBASENAME___ViewModel: ObservableObject {
    private let useCase: ___VARIABLE_FlowName___UseCaseProtocol

    init(useCase: ___VARIABLE_FlowName___UseCaseProtocol = ___VARIABLE_FlowName___UseCase()) {
        self.useCase = useCase
    }

    func fetchData() async {
        do {
            let data = try await useCase.fetchData()
            print(data)
        } catch {
            return
        }
    }
}
