import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }.onAppear {
            test()
        }
    }
}

func test(){
    
    // Hello, World!
    
    print("Hello, World!")
    
    // Mutable
    
    var num = 10
    var age:Int = 21
    
    // Inmutable
    
    let message = "Hello, World!"
    let greet:String = "Greetings!"
    
    // Testing data types
    
    // print("I am" + age + " years old") 👎
    print("I am " + String(age) + " years old")
    
    // Multiline string
    
    var longMessage = """
    This is my first Swift Playground!
    DiegoGarciaPadilla.
    """
    
    // Math
    
    var a = 3
    var b = 4

    print("Suma: ")
    print(a + b)

    print("Resta: ")
    print(a - b)

    print("Multiplicación: ")
    print(a * b)

    print("División: ")
    print(a / b)

    print("El módulo (resto): ")
    print(a % b)
    
    var c = 8.5
    var d = 3

    print("Suma: ")
    var resultado = Int(c) + d

    print(resultado)
    
    // Concatenation
    
    let greeting = "My name is"
    let name = "Diego"
    
    print("\(greeting) \(name)")
    
    var introduction = "El resultado de"
    var plus = "más"
    var firstNumber = 2
    var secondNumber = 5

    print("\(introduction) \(firstNumber) \(plus) \(secondNumber) es: \(firstNumber + secondNumber)")
    
    // Functions
    
    func showMyName(){
        print("Me llamo Diego")
    }
    func showMyLastName(){
        print("Mi apellido es García")
    }
    func showMyAge(){
        print("Tengo 21 años")
    }

    showMyName()
    showMyLastName()
    showMyAge()
    
    // Functions with parameters

    func showMyInformation(_ name: String, _ lastName: String, _ age: Int){
        print("Me llamo \(name) \(lastName) y tengo \(age) años.")
    }
    
    showMyInformation("Alex", "Fernández", 31)
        
    func add(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber + secondNumber
    }
    
    var result = add(firstNumber: 2, secondNumber: 8)
    print(result)
    
    // If statment
    
    result = add(firstNumber: 3, secondNumber: 7)

    if(result > 5){
        print("El resultado es mayor que 5")
    }

    if(name == ("Alex")){
      print("Se llama Alex")
    }else{
      print("No se llama Alex")
    }
    
    let animal = "cat"
    
    if(animal == "dog"){
        print("Es un perro")
    }else if(animal == "cat"){
        print("Es un gato")
    }else if(animal == "bird"){
        print("Es un pájaro")
    }else{
        print("Es otro animal")
    }
    
    // Optionals
    
    var optionalString : String?
    print(optionalString) // nil
    
    var optionalInt : Int? = 10
    print(optionalInt)
    
    // Switch

    func getMonth(_ month : Int){
        switch month {
            case 1:
                print("Enero")
            case 2:
                print("Febrero")
            case 3:
                print("Marzo")
            case 4:
                print("Abril")
            case 5:
                print("Mayo")
            case 6:
                print("Junio")
            case 7:
                print("Julio")
            case 8:
                print("Agosto")
            case 9:
                print("Septiembre")
            case 10:
                 print("Octubre")
            case 11:
                 print("Noviembre")
            case 12:
                 print("Diciembre")
            default:
                print("No corresponde a ningún mes del año")
        }
    }
    
    getMonth(2)
    
    func getTrimester(month : Int){
        switch month {
            case 1,2,3:
                print("Primer trimestre del año")
            case 4,5,6:
                print("segundo trimestre del año")
            case 7,8,9:
                print("tercer trimestre del año")
            case 10,11,12:
                print("cuarto trimestre del año")
            default:
                print("month")
        }
    }
    
    getTrimester(month: 2)
    
    func getSemester(month : Int){
        switch month {
        case 1...6:
            print("Primer semestre")
        case 7...12:
            print("Segundo semestre")
        default:
            print("default")
        }
    }
    
    getSemester(month: 7)
    
    // Arrays
    
    var weekDays = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"]

    print(weekDays[0])
    print(weekDays[1])
    print(weekDays[2])
    print(weekDays[3])
    print(weekDays[4])
    print(weekDays[5])
    print(weekDays[6])
    
    // Dict
    
    let interestingNumbers = [
        "Prime": [2, 3, 5, 7, 11, 13],
        "Fibonacci": [1, 1, 2, 3, 5, 8],
        "Square": [1, 4, 9, 16, 25],
    ]

    var largest = 0
    
    for (_, numbers) in interestingNumbers {
        for number in numbers {
            if number > largest {
                largest = number
            }
        }
    }
    print(largest)
    
    // Tuples
    
    let http404Error = (404, "Not Found")
    
    print("The status code is \(http404Error.0)")
    // Prints "The status code is 404"
    print("The status message is \(http404Error.1)")
    // Prints "The status message is Not Found”
    
    let http200Status = (statusCode: 200, description: "OK")

    print("The status code is \(http200Status.statusCode)")
    // Prints "The status code is 200"
    print("The status message is \(http200Status.description)")
    // Prints "The status message is OK
    
}
