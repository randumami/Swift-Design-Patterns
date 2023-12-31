class Singleton {
  static let shared = Singleton()
  var myVariable : String?
  
  private init() {}

  func printSomeLine(){
    print("Some line")
  }
  
}

// called like this, anywhere...
Singleton.shared.printSomeLine()

// ... and outputs this:
//Some line
