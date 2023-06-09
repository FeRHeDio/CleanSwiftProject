//
//  CreateOrderInteractor.swift
//  CleanSwiftInitialProject
//
//  Created by Fernando Putallaz on 18/04/2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol CreateOrderBusinessLogic {
    func doSomething(request: CreateOrder.Something.Request)
}

protocol CreateOrderDataStore {
        //var name: String { get set }
}

class CreateOrderInteractor: CreateOrderBusinessLogic, CreateOrderDataStore {
    var presenter: CreateOrderPresentationLogic?
    var worker: CreateOrderWorker?
        //var name: String = ""
    
        // MARK: Do something
    
    func doSomething(request: CreateOrder.Something.Request) {
        worker = CreateOrderWorker()
        worker?.doSomeWork()
        
        let response = CreateOrder.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
