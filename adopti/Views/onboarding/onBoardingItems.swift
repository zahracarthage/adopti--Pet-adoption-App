//
//  onBoardingItems.swift
//  adopti
//
//  Created by Zahra chouchane on 24/12/2022.
//

import Foundation

struct onBoarding: Hashable, Equatable {
    
    let id = UUID()
    let image: String
    let title: String
    let subtitle: String
    
}

let onBoardingData :[onBoarding] = [
   onBoarding(image: "onboarding1", title: "Find your next best friend", subtitle: "We will help you to find your next best friend"),
   onBoarding(image: "onboarding2", title: "Life is better with a pet", subtitle: "We will help you to find your next best friend"),
   onBoarding(image: "onboarding3", title: "Saving a life will change yours", subtitle: "We will help you to find your next best friend")
]
