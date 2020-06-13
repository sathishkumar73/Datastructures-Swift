// Let's implement Array datastructure using Hash Tables or Dictionary
class Array {
  var count: Int = 0
  var arrayContent: [Int: String] = [:]

  init(_ val: String...) {
    for i in val {
      arrayContent[count] = i
      count += 1
    }
  }

  func insert(_ index: Int, _ val: String) {
    var temp = arrayContent[index];
    arrayContent[index] = val

    for i in index+1...count {
      let temp1 = arrayContent[i]
      arrayContent[i] = temp
      temp = temp1
    }
    count += 1
  }

  func append(val: String) {
    arrayContent[count] = val
    count += 1
  }

  func pop() {
    count -= 1
    arrayContent[count] = nil
  }

  func delete(_ index: Int) {
    for i in index...count-2 {
      arrayContent[i] = arrayContent[i+1]
    }
    count -= 1
    arrayContent[count] = nil
    print(arrayContent)
  }




}

var array1 = Array("A", "B", "C", "D", "E")

array1.insert(2, "Z") // ["A", "B", "Z", "C", "D", "E"]

print(array1.arrayContent) // ["A", "B", "Z", "C", "D", "E"]

array1.delete(0) // ["B", "Z", "C", "D", "E"]

array1.pop() // ["B", "Z", "C", "D"]



