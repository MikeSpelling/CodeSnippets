import UIKit

let data = try! JSONSerialization.data(withJSONObject: ["key": "value"])
if let json = (try? JSONSerialization.jsonObject(with: data)) as? [String: Any] {
    print(json)
}

private enum CodingKeys: String, CodingKey {
    case name = "name"
}
public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.name = try container.decode(String.self, forKey: .name)
}
public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(name, forKey: .name)
}
