//
//  LayoutConstraintMakerSupportableTest.swift
//  LayoutAnchorTests
//
//  Created by Vinicius França on 10/05/2018.
//  Copyright © 2018 Vinicius França. All rights reserved.
//

import Quick
import Nimble
@testable import LayoutAnchor

class LayoutConstraintMakerSupportableTest: QuickSpec {
    
    override func spec() {
        
        describe("LayoutConstraintMakerSupportable") {
            
            context("when initialize constraint", closure: {
                
                var constant: LayoutConstraint!
                var supportable: LayoutConstraintMakerSupportable!
                
                beforeEach {
                    constant = LayoutConstraint()
                    supportable = LayoutConstraintMakerSupportable(constant: constant)
                }
                
                context("when call priority required method", closure: {
                    
                    beforeEach {
                        supportable.priority(.required)
                    }
                    
                    it("should return LayoutPriority required (999)", closure: {
                        expect(constant.priority).to(equal(LayoutPriority(rawValue: 999)))
                    })
                    
                })
                
                context("when call priority high method", closure: {
                    
                    beforeEach {
                        supportable.priority(.high)
                    }
                    
                    it("should return LayoutPriority required (999)", closure: {
                        expect(constant.priority).to(equal(LayoutPriority(rawValue: 750)))
                    })
                    
                })
                
                context("when call priority low method", closure: {
                    
                    beforeEach {
                        supportable.priority(.low)
                    }
                    
                    it("should return LayoutPriority required (999)", closure: {
                        expect(constant.priority).to(equal(LayoutPriority(rawValue: 250)))
                    })
                    
                })
                
                context("when call reference method", closure: {
                    
                    var reference: LayoutConstraint?
                    
                    beforeEach {
                        supportable.reference(&reference)
                    }
                    
                    it("should is not nil reference var", closure: {
                        expect(reference).toNot(beNil())
                    })
                    
                    it("should return equal constant init", closure: {
                        expect(reference).to(equal(constant))
                    })
                    
                })
                
                
            })
            
        }
        
    }
    
}
