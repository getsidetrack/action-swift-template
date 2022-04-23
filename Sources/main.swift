import Foundation

let name = CommandLine.arguments[1...].joined(separator: " ")
print("Hello " + name)

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "E d MMM yyyy HH:mm:ss zzz"

let date = dateFormatter.string(from: Date())

print("::set-output name=time::" + date)
