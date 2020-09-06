//
//  ModeSettingsViewModal.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 5/9/20.
//

import Foundation
import SwiftUI

class ModeSettingsViewModal: ObservableObject {
    
    @Published var isDarkModeEnabled: Bool = UserDefaults.standard.bool(forKey: "isDarkModeEnabled") {
        didSet {
            UserDefaults.standard.set(self.isDarkModeEnabled, forKey: "isDarkModeEnabled")
        }
    }
    
}
