//
//  LayoutViewConstraintTest.swift
//  LayoutAnchorTests
//
//  Created by Vinicius França on 23/04/2018.
//  Copyright © 2018 Vinicius França. All rights reserved.
//

import Quick
import Nimble
@testable import LayoutAnchor

class LayoutViewConstraintTest: QuickSpec {
    
    override func spec() {
        
        describe("LayoutViewConstraint") {
         
            context("When initialize", closure: {
                
                var layoutViewConstraint: LayoutViewConstraint!
                var contentSampleView: UIView!
                
                beforeEach {
                    contentSampleView = UIView()
                    layoutViewConstraint = LayoutViewConstraint(view: contentSampleView)
                }
                
                context("when call method left", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.left
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })

                    it("should return attribute left", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.left))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beFalse())
                    })
                    
                })
                
                context("when call method left safe area", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.safeArea.left
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute left", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.left))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beTrue())
                    })
                    
                })
                
                context("when call method right", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.right
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute right", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.right))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beFalse())
                    })
                    
                })
                
                context("when call method right safe area", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.safeArea.right
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute right", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.right))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beTrue())
                    })
                    
                })
                
                context("when call method bottom", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.bottom
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute bottom", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.bottom))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beFalse())
                    })
                    
                })
                
                context("when call method bottom safe area", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.safeArea.bottom
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute bottom", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.bottom))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beTrue())
                    })
                    
                })
                
                context("when call method top", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.top
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute top", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.top))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beFalse())
                    })
                    
                })
                
                context("when call method top safe area", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.safeArea.top
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute top", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.top))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beTrue())
                    })
                    
                })
                
                context("when call method width", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.width
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute width", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.width))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beFalse())
                    })
                    
                })
                
                context("when call method width safe area", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.safeArea.width
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute width", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.width))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beTrue())
                    })
                    
                })
                
                context("when call method height", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.height
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute height", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.height))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beFalse())
                    })
                    
                })
                
                context("when call method height safe area", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.safeArea.height
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute height", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.height))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beTrue())
                    })
                    
                })
                
                context("when call method centerX", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.centerX
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute centerX", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.centerX))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beFalse())
                    })
                    
                })
                
                context("when call method centerX safe area", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.safeArea.centerX
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute centerX", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.centerX))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beTrue())
                    })
                    
                })
                
                context("when call method centerY", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.centerY
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute centerY", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.centerY))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beFalse())
                    })
                    
                })
                
                context("when call method centerY safe area", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.safeArea.centerY
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute centerY", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.centerY))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beTrue())
                    })
                    
                })
                
                context("when call method leading", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.leading
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute leading", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.leading))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beFalse())
                    })
                    
                })
                
                context("when call method leading safe area", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.safeArea.leading
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute leading", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.leading))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beTrue())
                    })
                    
                })
                
                context("when call method trailing", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.trailing
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute trailing", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.trailing))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beFalse())
                    })
                    
                })
                
                context("when call method trailing safe area", closure: {
                    
                    var item: LayoutConstraintItemable!
                    
                    beforeEach {
                        item = layoutViewConstraint.safeArea.trailing
                    }
                    
                    it("should return view", closure: {
                        expect(item.view).to(equal(contentSampleView))
                    })
                    
                    it("should return attribute trailing", closure: {
                        expect(item.attribute).to(equal(LayoutAttribute.trailing))
                    })
                    
                    it("should return isSafeArea false", closure: {
                        expect(item.isSafeArea).to(beTrue())
                    })
                    
                })
            })
            
        }
        
    }
    
}
