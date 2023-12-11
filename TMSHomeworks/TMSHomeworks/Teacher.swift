//
//  Teacher.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Teacher {
    private var id: Int
    private var firstName: String
    private var lastName: String
    private var subjectsTaught: [Subject]
    private var studentsTaught: [Student]
    
    init(id: Int, firstName: String, lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.subjectsTaught = []
        self.studentsTaught = []
    }
    
    // Метод для добавления предмета, который ведет учитель
    
    func addSubjectTaught(subjectName: Subject) {
        subjectsTaught.append(subjectName)
    }
    
    // Метод для установки оценки ученику по определенному предмету
    
    func setGrade(for: Student, subject: Subject) {
        
    }
    
    // Метод для получения информации об учителе и предметах, которые он ведет
    
    func teacherInfoPrint() {
        print("""
        
                (ID) (Имя) (Фамилия) (Предмет который ведет) (Студент) (Оценка которую поставил преподаватель)
        ID учителя: \(id)
        Имя учителя: \(firstName) \(lastName)
        Предмет, который ведет:
        Студент: , его оценка: 
        """)
    }
}
