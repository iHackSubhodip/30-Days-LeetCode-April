/*
 Question - Online Stock Span
 Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/536/week-3-may-15th-may-21st/3334/
 */

class StockSpanner {

    init() {
        
    }
    
    struct PriceSpan {
        let price: Int
        let span: Int
    }
    
    var stack = [PriceSpan]()
    
    func next(_ price: Int) -> Int {
        guard stack.count > 0 else {
            stack.append(PriceSpan(price: price, span: 1))
            return 1
        }
        
        var span = 1
        while stack.last != nil && stack.last!.price <= price {
            span += stack.last!.span
            stack.removeLast()
        }
        
        stack.append(PriceSpan(price: price, span: span))
        return span
    }
}
