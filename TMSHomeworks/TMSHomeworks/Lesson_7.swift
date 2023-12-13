

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let studentOne = Student(id: 1, name: "Alice", lastName: "Simpson", age: 20)
        let studentTwo = Student(id: 2, name: "Bob", lastName: "Maguire", age: 21)
        let mathTeacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
        let litTeacher = Teacher(id: 2, firstName: "Gloria", lastName: "Jeans")
        
        studentOne.assignTeacher(teacherAssigned: mathTeacher)
        studentTwo.assignTeacher(teacherAssigned: litTeacher)
        
        //Реализуйте методы в классе Student для добавления предметов, установки оценок и получения информации о студенте.
        
        studentOne.addSubjectAndGrade(subjectName: "Math", grade: "A")
        studentTwo.addSubjectAndGrade(subjectName: "Literature", grade: "B+")
        
        studentOne.assignTeacher(teacherAssigned: mathTeacher)
        studentTwo.assignTeacher(teacherAssigned: litTeacher)
        
        studentOne.studentInfo()
        studentTwo.studentInfo()
        
        
        //Реализуйте методы в классе Teacher с указанием предметов, установки оценок и получения информации о студенте которому ставишь оценку.
        
        mathTeacher.addSubjectTaught(subjectName: "Math")
        litTeacher.addSubjectTaught(subjectName: "Literature")
        
        mathTeacher.setGrade(studentName: studentOne, subjectName: "Math", grade: "A")
        litTeacher.setGrade(studentName: studentTwo, subjectName: "Literature", grade: "A")
        

        //Создайте функции для изменения возраста и имени студента, используя соответствующие методы доступа.
        
        studentOne.addAge(ageSet: 20)
        studentTwo.addAge(ageSet: 19)
        studentOne.studentName(nameSet: "John")
        studentTwo.studentName(nameSet: "Lili")

        
        studentOne.studentInfo()
        studentTwo.studentInfo()
        
        mathTeacher.teacherInfoPrint()
        litTeacher.teacherInfoPrint()
        
    }
}

