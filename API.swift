//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateWaterDayInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(cupsDrank: Int? = nil, date: String, id: GraphQLID, userId: String) {
    graphQLMap = ["cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId]
  }

  public var cupsDrank: Int? {
    get {
      return graphQLMap["cupsDrank"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cupsDrank")
    }
  }

  public var date: String {
    get {
      return graphQLMap["date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct DeleteWaterDayInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(date: String, userId: String) {
    graphQLMap = ["date": date, "userId": userId]
  }

  public var date: String {
    get {
      return graphQLMap["date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct UpdateWaterDayInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(cupsDrank: Int? = nil, date: String, id: GraphQLID? = nil, userId: String) {
    graphQLMap = ["cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId]
  }

  public var cupsDrank: Int? {
    get {
      return graphQLMap["cupsDrank"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cupsDrank")
    }
  }

  public var date: String {
    get {
      return graphQLMap["date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct TableWaterDayFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(cupsDrank: TableIntFilterInput? = nil, date: TableStringFilterInput? = nil, id: TableIDFilterInput? = nil, userId: TableStringFilterInput? = nil) {
    graphQLMap = ["cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId]
  }

  public var cupsDrank: TableIntFilterInput? {
    get {
      return graphQLMap["cupsDrank"] as! TableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cupsDrank")
    }
  }

  public var date: TableStringFilterInput? {
    get {
      return graphQLMap["date"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var id: TableIDFilterInput? {
    get {
      return graphQLMap["id"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: TableStringFilterInput? {
    get {
      return graphQLMap["userId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct TableIntFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(between: [Int?]? = nil, contains: Int? = nil, eq: Int? = nil, ge: Int? = nil, gt: Int? = nil, le: Int? = nil, lt: Int? = nil, ne: Int? = nil, notContains: Int? = nil) {
    graphQLMap = ["between": between, "contains": contains, "eq": eq, "ge": ge, "gt": gt, "le": le, "lt": lt, "ne": ne, "notContains": notContains]
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var contains: Int? {
    get {
      return graphQLMap["contains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var notContains: Int? {
    get {
      return graphQLMap["notContains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(beginsWith: String? = nil, between: [String?]? = nil, contains: String? = nil, eq: String? = nil, ge: String? = nil, gt: String? = nil, le: String? = nil, lt: String? = nil, ne: String? = nil, notContains: String? = nil) {
    graphQLMap = ["beginsWith": beginsWith, "between": between, "contains": contains, "eq": eq, "ge": ge, "gt": gt, "le": le, "lt": lt, "ne": ne, "notContains": notContains]
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }
}

public struct TableIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(beginsWith: GraphQLID? = nil, between: [GraphQLID?]? = nil, contains: GraphQLID? = nil, eq: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ne: GraphQLID? = nil, notContains: GraphQLID? = nil) {
    graphQLMap = ["beginsWith": beginsWith, "between": between, "contains": contains, "eq": eq, "ge": ge, "gt": gt, "le": le, "lt": lt, "ne": ne, "notContains": notContains]
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }
}

public final class CreateWaterDayMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateWaterDay($input: CreateWaterDayInput!) {\n  createWaterDay(input: $input) {\n    __typename\n    cupsDrank\n    date\n    id\n    userId\n  }\n}"

  public var input: CreateWaterDayInput

  public init(input: CreateWaterDayInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createWaterDay", arguments: ["input": GraphQLVariable("input")], type: .object(CreateWaterDay.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createWaterDay: CreateWaterDay? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createWaterDay": createWaterDay.flatMap { $0.snapshot }])
    }

    public var createWaterDay: CreateWaterDay? {
      get {
        return (snapshot["createWaterDay"] as? Snapshot).flatMap { CreateWaterDay(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createWaterDay")
      }
    }

    public struct CreateWaterDay: GraphQLSelectionSet {
      public static let possibleTypes = ["WaterDay"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("cupsDrank", type: .scalar(Int.self)),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(cupsDrank: Int? = nil, date: String, id: GraphQLID, userId: String) {
        self.init(snapshot: ["__typename": "WaterDay", "cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var cupsDrank: Int? {
        get {
          return snapshot["cupsDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cupsDrank")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }
    }
  }
}

public final class DeleteWaterDayMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteWaterDay($input: DeleteWaterDayInput!) {\n  deleteWaterDay(input: $input) {\n    __typename\n    cupsDrank\n    date\n    id\n    userId\n  }\n}"

  public var input: DeleteWaterDayInput

  public init(input: DeleteWaterDayInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteWaterDay", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteWaterDay.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteWaterDay: DeleteWaterDay? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteWaterDay": deleteWaterDay.flatMap { $0.snapshot }])
    }

    public var deleteWaterDay: DeleteWaterDay? {
      get {
        return (snapshot["deleteWaterDay"] as? Snapshot).flatMap { DeleteWaterDay(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteWaterDay")
      }
    }

    public struct DeleteWaterDay: GraphQLSelectionSet {
      public static let possibleTypes = ["WaterDay"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("cupsDrank", type: .scalar(Int.self)),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(cupsDrank: Int? = nil, date: String, id: GraphQLID, userId: String) {
        self.init(snapshot: ["__typename": "WaterDay", "cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var cupsDrank: Int? {
        get {
          return snapshot["cupsDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cupsDrank")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }
    }
  }
}

public final class UpdateWaterDayMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateWaterDay($input: UpdateWaterDayInput!) {\n  updateWaterDay(input: $input) {\n    __typename\n    cupsDrank\n    date\n    id\n    userId\n  }\n}"

  public var input: UpdateWaterDayInput

  public init(input: UpdateWaterDayInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateWaterDay", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateWaterDay.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateWaterDay: UpdateWaterDay? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateWaterDay": updateWaterDay.flatMap { $0.snapshot }])
    }

    public var updateWaterDay: UpdateWaterDay? {
      get {
        return (snapshot["updateWaterDay"] as? Snapshot).flatMap { UpdateWaterDay(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateWaterDay")
      }
    }

    public struct UpdateWaterDay: GraphQLSelectionSet {
      public static let possibleTypes = ["WaterDay"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("cupsDrank", type: .scalar(Int.self)),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(cupsDrank: Int? = nil, date: String, id: GraphQLID, userId: String) {
        self.init(snapshot: ["__typename": "WaterDay", "cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var cupsDrank: Int? {
        get {
          return snapshot["cupsDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cupsDrank")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }
    }
  }
}

public final class GetWaterDayQuery: GraphQLQuery {
  public static let operationString =
    "query GetWaterDay($date: AWSDate!, $userId: String!) {\n  getWaterDay(date: $date, userId: $userId) {\n    __typename\n    cupsDrank\n    date\n    id\n    userId\n  }\n}"

  public var date: String
  public var userId: String

  public init(date: String, userId: String) {
    self.date = date
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["date": date, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getWaterDay", arguments: ["date": GraphQLVariable("date"), "userId": GraphQLVariable("userId")], type: .object(GetWaterDay.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getWaterDay: GetWaterDay? = nil) {
      self.init(snapshot: ["__typename": "Query", "getWaterDay": getWaterDay.flatMap { $0.snapshot }])
    }

    public var getWaterDay: GetWaterDay? {
      get {
        return (snapshot["getWaterDay"] as? Snapshot).flatMap { GetWaterDay(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getWaterDay")
      }
    }

    public struct GetWaterDay: GraphQLSelectionSet {
      public static let possibleTypes = ["WaterDay"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("cupsDrank", type: .scalar(Int.self)),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(cupsDrank: Int? = nil, date: String, id: GraphQLID, userId: String) {
        self.init(snapshot: ["__typename": "WaterDay", "cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var cupsDrank: Int? {
        get {
          return snapshot["cupsDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cupsDrank")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }
    }
  }
}

public final class ListWaterDaysQuery: GraphQLQuery {
  public static let operationString =
    "query ListWaterDays($filter: TableWaterDayFilterInput, $limit: Int, $nextToken: String) {\n  listWaterDays(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      cupsDrank\n      date\n      id\n      userId\n    }\n    nextToken\n  }\n}"

  public var filter: TableWaterDayFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableWaterDayFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listWaterDays", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListWaterDay.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listWaterDays: ListWaterDay? = nil) {
      self.init(snapshot: ["__typename": "Query", "listWaterDays": listWaterDays.flatMap { $0.snapshot }])
    }

    public var listWaterDays: ListWaterDay? {
      get {
        return (snapshot["listWaterDays"] as? Snapshot).flatMap { ListWaterDay(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listWaterDays")
      }
    }

    public struct ListWaterDay: GraphQLSelectionSet {
      public static let possibleTypes = ["WaterDayConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "WaterDayConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["WaterDay"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("cupsDrank", type: .scalar(Int.self)),
          GraphQLField("date", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(cupsDrank: Int? = nil, date: String, id: GraphQLID, userId: String) {
          self.init(snapshot: ["__typename": "WaterDay", "cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var cupsDrank: Int? {
          get {
            return snapshot["cupsDrank"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "cupsDrank")
          }
        }

        public var date: String {
          get {
            return snapshot["date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: String {
          get {
            return snapshot["userId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }
      }
    }
  }
}

public final class OnCreateWaterDaySubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateWaterDay($cupsDrank: Int, $date: AWSDate, $id: ID, $userId: String) {\n  onCreateWaterDay(cupsDrank: $cupsDrank, date: $date, id: $id, userId: $userId) {\n    __typename\n    cupsDrank\n    date\n    id\n    userId\n  }\n}"

  public var cupsDrank: Int?
  public var date: String?
  public var id: GraphQLID?
  public var userId: String?

  public init(cupsDrank: Int? = nil, date: String? = nil, id: GraphQLID? = nil, userId: String? = nil) {
    self.cupsDrank = cupsDrank
    self.date = date
    self.id = id
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateWaterDay", arguments: ["cupsDrank": GraphQLVariable("cupsDrank"), "date": GraphQLVariable("date"), "id": GraphQLVariable("id"), "userId": GraphQLVariable("userId")], type: .object(OnCreateWaterDay.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateWaterDay: OnCreateWaterDay? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateWaterDay": onCreateWaterDay.flatMap { $0.snapshot }])
    }

    public var onCreateWaterDay: OnCreateWaterDay? {
      get {
        return (snapshot["onCreateWaterDay"] as? Snapshot).flatMap { OnCreateWaterDay(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateWaterDay")
      }
    }

    public struct OnCreateWaterDay: GraphQLSelectionSet {
      public static let possibleTypes = ["WaterDay"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("cupsDrank", type: .scalar(Int.self)),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(cupsDrank: Int? = nil, date: String, id: GraphQLID, userId: String) {
        self.init(snapshot: ["__typename": "WaterDay", "cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var cupsDrank: Int? {
        get {
          return snapshot["cupsDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cupsDrank")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }
    }
  }
}

public final class OnDeleteWaterDaySubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteWaterDay($cupsDrank: Int, $date: AWSDate, $id: ID, $userId: String) {\n  onDeleteWaterDay(cupsDrank: $cupsDrank, date: $date, id: $id, userId: $userId) {\n    __typename\n    cupsDrank\n    date\n    id\n    userId\n  }\n}"

  public var cupsDrank: Int?
  public var date: String?
  public var id: GraphQLID?
  public var userId: String?

  public init(cupsDrank: Int? = nil, date: String? = nil, id: GraphQLID? = nil, userId: String? = nil) {
    self.cupsDrank = cupsDrank
    self.date = date
    self.id = id
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteWaterDay", arguments: ["cupsDrank": GraphQLVariable("cupsDrank"), "date": GraphQLVariable("date"), "id": GraphQLVariable("id"), "userId": GraphQLVariable("userId")], type: .object(OnDeleteWaterDay.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteWaterDay: OnDeleteWaterDay? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteWaterDay": onDeleteWaterDay.flatMap { $0.snapshot }])
    }

    public var onDeleteWaterDay: OnDeleteWaterDay? {
      get {
        return (snapshot["onDeleteWaterDay"] as? Snapshot).flatMap { OnDeleteWaterDay(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteWaterDay")
      }
    }

    public struct OnDeleteWaterDay: GraphQLSelectionSet {
      public static let possibleTypes = ["WaterDay"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("cupsDrank", type: .scalar(Int.self)),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(cupsDrank: Int? = nil, date: String, id: GraphQLID, userId: String) {
        self.init(snapshot: ["__typename": "WaterDay", "cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var cupsDrank: Int? {
        get {
          return snapshot["cupsDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cupsDrank")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }
    }
  }
}

public final class OnUpdateWaterDaySubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateWaterDay($cupsDrank: Int, $date: AWSDate, $id: ID, $userId: String) {\n  onUpdateWaterDay(cupsDrank: $cupsDrank, date: $date, id: $id, userId: $userId) {\n    __typename\n    cupsDrank\n    date\n    id\n    userId\n  }\n}"

  public var cupsDrank: Int?
  public var date: String?
  public var id: GraphQLID?
  public var userId: String?

  public init(cupsDrank: Int? = nil, date: String? = nil, id: GraphQLID? = nil, userId: String? = nil) {
    self.cupsDrank = cupsDrank
    self.date = date
    self.id = id
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateWaterDay", arguments: ["cupsDrank": GraphQLVariable("cupsDrank"), "date": GraphQLVariable("date"), "id": GraphQLVariable("id"), "userId": GraphQLVariable("userId")], type: .object(OnUpdateWaterDay.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateWaterDay: OnUpdateWaterDay? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateWaterDay": onUpdateWaterDay.flatMap { $0.snapshot }])
    }

    public var onUpdateWaterDay: OnUpdateWaterDay? {
      get {
        return (snapshot["onUpdateWaterDay"] as? Snapshot).flatMap { OnUpdateWaterDay(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateWaterDay")
      }
    }

    public struct OnUpdateWaterDay: GraphQLSelectionSet {
      public static let possibleTypes = ["WaterDay"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("cupsDrank", type: .scalar(Int.self)),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(cupsDrank: Int? = nil, date: String, id: GraphQLID, userId: String) {
        self.init(snapshot: ["__typename": "WaterDay", "cupsDrank": cupsDrank, "date": date, "id": id, "userId": userId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var cupsDrank: Int? {
        get {
          return snapshot["cupsDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cupsDrank")
        }
      }

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }
    }
  }
}