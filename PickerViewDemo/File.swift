//
//  File.swift
//  PickerViewDemo
//
//  Created by Dominik Huffield on 4/26/21.
//

import Foundation
import SQLite3

class DBHelper {
    var dB : OpaquePointer?
    var path: String = "myDb.sqlite"
    init() {
        self.dB = createDB()
        self.createTable()
    }
    
    func createDB() -> OpaquePointer? {
        let filePath = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathExtension(path)
        
        var dB : OpaquePointer? = nil
        
        if sqlite3_open(filePath.path, &dB) != SQLITE_OK {
            print("There were errors in creating DB")
            return nil
        } else {
            print("Database success: \(path)")
            return dB
        }
    }
    
    func createTable() {
        let query = "CREATE TABLE IF NOT EXISTS student(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, result TEXT, avg INTEGER, list TEXT;"
        var statement : OpaquePointer? = nil
        
        if sqlite3_prepare_v2(self.dB, query, -1, &statement, nil) == SQLITE_OK {
            if sqlite3_step(statement) == SQLITE_DONE {
                print("Table creation succcess")
            } else {
                print("Table creation fail")
            }
        } else {
            print("Preportion fail")
        }
    }
    
//    func insert(name : String, result: String, avg : Int, list : Student]) {
//        let query = "INSERT INTO grade (id, name, result, avg, list) VALUES (?, ?, ?, ?, ?)"
//
//        var statement : OpaquePointer? = nil
//
//        var isEmpty = false
//        if read(avg: avg).isEmpty {
//            isEmpty = true
//        }
//        if sqlite3_prepare_v2(dB, query, -1, &statement, nil) == SQLITE_OK {
//            if isEmpty {
//                sqlite3_bind_int(statement, 1, 1)
//            }
//            sqlite3_bind_int(statement, 1, 1)
//            sqlite3_bind_text(statement, 2, (name as NSString).utf8String, -1, nil)
//            sqlite3_bind_text(statement, 3, (name as NSString).utf8String, -1, nil)
//            sqlite3_bind_int(statement, 4, Int32(avg))
//
//            let data = try! JSONEncoder().encode(list)
//            let listString = String(data: data, encoding: .utf8)
//
//            sqlite3_bind_text(statement, 5, (listString! as NSString).utf8String, -1, nil)
//
//            if sqlite3_step(statement) == SQLITE_DONE {
//                print("Data inserted success")
//            } else {
//                print("Data is not inserted in table")
//            }
//        } else {
//            print("Query is not as per requirement")
//        }
//    }
//
//    func read(avg : Int) -> [DBGrade] {
//        var mainList = [DBGrade]()
//
//        let query = "SELECT * FROM grade;"
//        var statement : OpaquePointer? = nil
//        if sqlite3_prepare(dB, query, -1, &statement, nil) == SQLITE_OK{
//            while sqlite3_step(statement) == SQLITE_ROW {
//                let id = Int(sqlite3_column_int(statement, 0))
//                let name = String(describing: String(cString: sqlite3_column_text(statement, 1)))
//                let result = String(describing: String(cString: sqlite3_column_text(statement, 2)))
//                let avg = Int(sqlite3_column_text(statement, 3))
//                let list = String(describing: String(cString: sqlite3_column_text(statement, 4)))
//
//                let model = DBGrade()
//                model.id = id
//                model.name = name
//                result = model.result
//                model.avg = avg
//
//                let data = try! JSONDecoder().decode([DBGrade], from: list.data(using: .utf8))
//
//                model.list = data
//
//                mainList.append(model)
//            }
//        }
//        return mainList
//
        
//    }
}
