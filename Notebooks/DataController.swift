//
//  DataController.swift
//  Notebooks
//
//  Created by Ricardo Hernandez on 28/1/21.
//

import Foundation
import CoreData

class DataController: NSObject {
    let persistentContainer: NSPersistentContainer
    
    init( modelName: String, completionHandler: (@escaping () -> ())) {
        self.persistentContainer = NSPersistentContainer(name: modelName)
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error{
                fatalError("Couldn`t load Coredata Stack \(error.localizedDescription)")
            
            }
            completionHandler()
        }
    }
}
