import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1.Написать функцию, которая принимает опциональное число и, если оно есть, умножает его на 2
        
        func optionalNumber(a: Double?){
            guard var number = a else { return }
            if let unwrapped = a {
                number *= 2
                print(unwrapped)
            } else {
                print("It's not a number")
            }
        }
        optionalNumber(a: 86743)
        
        //2.Использовать force unwrap для извлечения значения из опциональной переменной. Затем добавьте условие, чтобы обработать случай, если значение равно nil.
        
        let number: Int? = 434345
        let unwrappedCaseOne = number!
        
        let unwrappedCaseTwo = number ?? 34343
        
        
        //3.Написать функцию, использующую оператор guard для проверки опционального значения. Если значение равно nil, выведите сообщение об ошибке, в противном случае выполните операцию с извлеченным значением. 3-4 примера
        
        func guardAnwrapping(something: String?){
            guard let unwrappedGuard = something else {
                print("error")
                return
            }
            print(unwrappedGuard)
        }
        guardAnwrapping(something: "test")
        
        //4.Напишите функцию, которая принимает строку и пытается преобразовать ее в целое число. Если преобразование возможно, верните число, если нет - nil
        
        func stringToInt(inboundData: String?) -> Int? {
            let base = inboundData ?? "error"
            let intFromString = Int(base) ?? nil
            guard let result = intFromString else {
                return nil
            }
            return result
        }
        print(stringToInt(inboundData: "87654"))
        
        //5.Создать перечисление Book. Напишите функцию, которая принимает Book и выводит описание книги
        
        enum Book: String {
            case title = "Small prince"
            case contents = "Chapter 1, Chapter 2 ... Chapter 10"
            case mainContent = "A lot of text"
            case bookEnd = "Thanks for reading"
            
            func bookdescription(bookInFunc: Book) {
                print(bookInFunc.rawValue)
            }
            
        }
        
        
        //6.Создайте перечисление Clothes. Напишите функцию, которая принимает Clothes в качестве параметра и выводит сообщение о выбранной одежде.
        
        enum Clothes: String {
            case pants
            case hat
            case throusers
            case shirt
            case shose
            func getClothes(clothes: Clothes){
                
            }
        }
        
        
        
    }
}




