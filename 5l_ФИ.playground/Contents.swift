import Cocoa

protocol fullNameOfObject {
    var fullName : String {get}
}
extension fullNameOfObject {
    var release : Int {return self as! Int}
}

class Book: fullNameOfObject {
    var writer : String
    var bookName : String
    
    var release: Int
    
    init(writer: String, bookName: String, release: Int) {
        self.writer = writer
        self.bookName = bookName
        self.release = release
    }
    
    var fullName: String {
        return ("'\(bookName)'" + " ") + writer
    }
    
}

let myFavoriteBook = Book(writer: "Theodore Dreiser", bookName: "Genius", release: 1915)
print(myFavoriteBook.fullName)

extension Book: CustomStringConvertible {
    var description : String {
        return "My favorite book is \(fullName), release: \(release)"
    }
}

print(myFavoriteBook.description)

class Car: fullNameOfObject {
    var brand: String
    var model: String
    var release: Int
    
    init(brand: String, model: String, release: Int) {
        self.brand = brand
        self.model = model
        self.release = release
    }
    
    var fullName: String {
        return (brand + " ") + model
    }
}

let myCar = Car(brand: "AUDI", model: "RS6", release: 2018)
print(myCar.fullName)

extension Car: CustomStringConvertible {
    var description : String {
        return "My car is \(fullName), release: \(release)"
    }
}

print(myCar.description)
