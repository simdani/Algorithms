class CombinationIterator {
    private var characters: [String]
    
    private var indexes: [Int]
    private let maxLength: [Int]
    
    private var prevComb: String
    private var endComb: String
    
    
    init(_ characters: String, _ combinationLength: Int) {
        self.characters = characters.map{"\($0)"}
        self.indexes = Array(0..<combinationLength)
        self.prevComb = ""
        self.endComb = self.characters[(self.characters.count-combinationLength)..<characters.length].joined()
        self.maxLength = Array((characters.count-(combinationLength))...(characters.count-1))
    }
    
    func next() -> String {
        var comb = indexes.map{characters[$0]}.joined()
        var itr = indexes.count - 1
        while itr >= 0{
            if indexes[itr] < maxLength[itr] {        
                indexes[itr] += 1
                itr += 1
                for i in itr..<indexes.count{
                    indexes[i] = indexes[i - 1] + 1
                }
                break
            }
            itr -= 1
        }
        
        prevComb = comb
        return comb
    }
    
    func hasNext() -> Bool {
        return prevComb != endComb
    }
}
