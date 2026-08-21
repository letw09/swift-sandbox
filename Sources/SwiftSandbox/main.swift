// Questão extra: Cartas  19/08
let cards = [1, 2, 3, 4, 5]

func getCard(at index: Int, from stack: [Int]) -> Int {
    if index > stack.count {
        return stack[index]
    }else{
        return -1
    }
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  if index < stack.count {
      var copy = stack
      copy[index] = newCard
      return copy
  } else {
      print("Operação inválida")
      return stack
  }
}

func insertOnTop(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var copy = stack
    copy.append(newCard)
    return copy
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    var copy = stack
    if index < stack.count {
        copy.remove(at: index)
        return copy
    } else {
        print("Operação Inválida.")
        return stack
    }
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
    var copy = stack
    if index < stack.count {
        copy.insert(newCard, at: index)
        return copy
    } else {
        print("Operação Inválida.")
        return stack
    }
}
func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  var copy = stack
    if copy.count == size {
        return true
    } else {
        return false
    }
}
