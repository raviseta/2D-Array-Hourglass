import UIKit

func hourglassSum(arr: [[Int]]) -> Int {
    var answer = Int.min
    
    for i in 0..<arr.count-2 {
        for j in 0..<arr[i].count-2 {
            var sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
            
            answer = max(answer, sum)
        }
    }
    
    return answer
}

let array = [[1,1,1,0,0,0],[0,1,0,0,0,0],[1,1,1,0,0,0],[0,0,2,4,4,0],[0,0,0,2,0,0],[0,0,1,2,4,0]]
print(hourglassSum(arr: array))
