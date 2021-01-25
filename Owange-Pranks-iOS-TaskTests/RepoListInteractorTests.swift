//
//  RepoListInteractorTests.swift
//  Owange-Pranks-iOS-TaskTests
//
//  Created by Mohamed El-Taweel on 1/25/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import XCTest
import Moya
import Unrealm
@testable import Owange_Pranks_iOS_Task


class RepoListInteractorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSearchInInteractor() throws{
        let remoteDataSourceWithMocking = MoyaProvider<ReprositoryListNetworkRouter>(stubClosure: MoyaProvider.immediatelyStub)
        let interactor = ReprositoryListInteractor(remoteDataSource: remoteDataSourceWithMocking, jsonTransformer: CodableTransformer(), localDataSource: try! Realm())
        interactor.getList(pageNumber: 1)
        let presenter = ReprositoryListPresenter(view: nil, navigationRouter: nil, interactor: interactor, transformer: ReprositoryListTransformer())
        interactor.presenter = presenter
        interactor.search(query: "Ax")
        XCTAssert(presenter.repos.count > 0)
    }

}
