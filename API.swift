//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateLolWaterDayDataInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: String, userId: String, date: String, ozDrank: Int? = nil) {
    graphQLMap = ["id": id, "userId": userId, "date": date, "ozDrank": ozDrank]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
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

  public var date: String {
    get {
      return graphQLMap["date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var ozDrank: Int? {
    get {
      return graphQLMap["ozDrank"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ozDrank")
    }
  }
}

public struct UpdateLolWaterDayDataInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: String, userId: String, date: String? = nil, ozDrank: Int? = nil) {
    graphQLMap = ["id": id, "userId": userId, "date": date, "ozDrank": ozDrank]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
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

  public var date: String? {
    get {
      return graphQLMap["date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var ozDrank: Int? {
    get {
      return graphQLMap["ozDrank"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ozDrank")
    }
  }
}

public struct DeleteLolWaterDayDataInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: String, userId: String, date: String) {
    graphQLMap = ["id": id, "userId": userId, "date": date]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
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

  public var date: String {
    get {
      return graphQLMap["date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }
}

public struct TableLolWaterDayDataFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: TableIDFilterInput? = nil, userId: TableStringFilterInput? = nil, date: TableStringFilterInput? = nil, ozDrank: TableIntFilterInput? = nil) {
    graphQLMap = ["id": id, "userId": userId, "date": date, "ozDrank": ozDrank]
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

  public var date: TableStringFilterInput? {
    get {
      return graphQLMap["date"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var ozDrank: TableIntFilterInput? {
    get {
      return graphQLMap["ozDrank"] as! TableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ozDrank")
    }
  }
}

public struct TableIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
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

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
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

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
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

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
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

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableIntFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, contains: Int? = nil, notContains: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
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

  public var contains: Int? {
    get {
      return graphQLMap["contains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
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

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public final class CreateLolWaterDayDataMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateLolWaterDayData($input: CreateLolWaterDayDataInput!) {\n  createLolWaterDayData(input: $input) {\n    __typename\n    id\n    userId\n    date\n    ozDrank\n  }\n}"

  public var input: CreateLolWaterDayDataInput

  public init(input: CreateLolWaterDayDataInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createLolWaterDayData", arguments: ["input": GraphQLVariable("input")], type: .object(CreateLolWaterDayDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createLolWaterDayData: CreateLolWaterDayDatum? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createLolWaterDayData": createLolWaterDayData.flatMap { $0.snapshot }])
    }

    public var createLolWaterDayData: CreateLolWaterDayDatum? {
      get {
        return (snapshot["createLolWaterDayData"] as? Snapshot).flatMap { CreateLolWaterDayDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createLolWaterDayData")
      }
    }

    public struct CreateLolWaterDayDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["LolWaterDayData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ozDrank", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, userId: String, date: String, ozDrank: Int? = nil) {
        self.init(snapshot: ["__typename": "LolWaterDayData", "id": id, "userId": userId, "date": date, "ozDrank": ozDrank])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
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

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var ozDrank: Int? {
        get {
          return snapshot["ozDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ozDrank")
        }
      }
    }
  }
}

public final class UpdateLolWaterDayDataMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateLolWaterDayData($input: UpdateLolWaterDayDataInput!) {\n  updateLolWaterDayData(input: $input) {\n    __typename\n    id\n    userId\n    date\n    ozDrank\n  }\n}"

  public var input: UpdateLolWaterDayDataInput

  public init(input: UpdateLolWaterDayDataInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateLolWaterDayData", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateLolWaterDayDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateLolWaterDayData: UpdateLolWaterDayDatum? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateLolWaterDayData": updateLolWaterDayData.flatMap { $0.snapshot }])
    }

    public var updateLolWaterDayData: UpdateLolWaterDayDatum? {
      get {
        return (snapshot["updateLolWaterDayData"] as? Snapshot).flatMap { UpdateLolWaterDayDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateLolWaterDayData")
      }
    }

    public struct UpdateLolWaterDayDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["LolWaterDayData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ozDrank", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, userId: String, date: String, ozDrank: Int? = nil) {
        self.init(snapshot: ["__typename": "LolWaterDayData", "id": id, "userId": userId, "date": date, "ozDrank": ozDrank])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
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

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var ozDrank: Int? {
        get {
          return snapshot["ozDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ozDrank")
        }
      }
    }
  }
}

public final class DeleteLolWaterDayDataMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteLolWaterDayData($input: DeleteLolWaterDayDataInput!) {\n  deleteLolWaterDayData(input: $input) {\n    __typename\n    id\n    userId\n    date\n    ozDrank\n  }\n}"

  public var input: DeleteLolWaterDayDataInput

  public init(input: DeleteLolWaterDayDataInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteLolWaterDayData", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteLolWaterDayDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteLolWaterDayData: DeleteLolWaterDayDatum? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteLolWaterDayData": deleteLolWaterDayData.flatMap { $0.snapshot }])
    }

    public var deleteLolWaterDayData: DeleteLolWaterDayDatum? {
      get {
        return (snapshot["deleteLolWaterDayData"] as? Snapshot).flatMap { DeleteLolWaterDayDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteLolWaterDayData")
      }
    }

    public struct DeleteLolWaterDayDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["LolWaterDayData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ozDrank", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, userId: String, date: String, ozDrank: Int? = nil) {
        self.init(snapshot: ["__typename": "LolWaterDayData", "id": id, "userId": userId, "date": date, "ozDrank": ozDrank])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
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

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var ozDrank: Int? {
        get {
          return snapshot["ozDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ozDrank")
        }
      }
    }
  }
}

public final class GetLolWaterDayDataQuery: GraphQLQuery {
  public static let operationString =
    "query GetLolWaterDayData($id: String!) {\n  getLolWaterDayData(id: $id) {\n    __typename\n    id\n    userId\n    date\n    ozDrank\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getLolWaterDayData", arguments: ["id": GraphQLVariable("id")], type: .object(GetLolWaterDayDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getLolWaterDayData: GetLolWaterDayDatum? = nil) {
      self.init(snapshot: ["__typename": "Query", "getLolWaterDayData": getLolWaterDayData.flatMap { $0.snapshot }])
    }

    public var getLolWaterDayData: GetLolWaterDayDatum? {
      get {
        return (snapshot["getLolWaterDayData"] as? Snapshot).flatMap { GetLolWaterDayDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getLolWaterDayData")
      }
    }

    public struct GetLolWaterDayDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["LolWaterDayData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ozDrank", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, userId: String, date: String, ozDrank: Int? = nil) {
        self.init(snapshot: ["__typename": "LolWaterDayData", "id": id, "userId": userId, "date": date, "ozDrank": ozDrank])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
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

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var ozDrank: Int? {
        get {
          return snapshot["ozDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ozDrank")
        }
      }
    }
  }
}

public final class ListLolWaterDayDataQuery: GraphQLQuery {
  public static let operationString =
    "query ListLolWaterDayData($filter: TableLolWaterDayDataFilterInput, $limit: Int, $nextToken: String) {\n  listLolWaterDayData(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      userId\n      date\n      ozDrank\n    }\n    nextToken\n  }\n}"

  public var filter: TableLolWaterDayDataFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableLolWaterDayDataFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
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
      GraphQLField("listLolWaterDayData", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListLolWaterDayDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listLolWaterDayData: ListLolWaterDayDatum? = nil) {
      self.init(snapshot: ["__typename": "Query", "listLolWaterDayData": listLolWaterDayData.flatMap { $0.snapshot }])
    }

    public var listLolWaterDayData: ListLolWaterDayDatum? {
      get {
        return (snapshot["listLolWaterDayData"] as? Snapshot).flatMap { ListLolWaterDayDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listLolWaterDayData")
      }
    }

    public struct ListLolWaterDayDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["LolWaterDayDataConnection"]

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
        self.init(snapshot: ["__typename": "LolWaterDayDataConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
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
        public static let possibleTypes = ["LolWaterDayData"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("date", type: .nonNull(.scalar(String.self))),
          GraphQLField("ozDrank", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, userId: String, date: String, ozDrank: Int? = nil) {
          self.init(snapshot: ["__typename": "LolWaterDayData", "id": id, "userId": userId, "date": date, "ozDrank": ozDrank])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
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

        public var date: String {
          get {
            return snapshot["date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var ozDrank: Int? {
          get {
            return snapshot["ozDrank"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "ozDrank")
          }
        }
      }
    }
  }
}

public final class OnCreateLolWaterDayDataSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateLolWaterDayData($id: String, $userId: String, $date: String, $ozDrank: Int) {\n  onCreateLolWaterDayData(id: $id, userId: $userId, date: $date, ozDrank: $ozDrank) {\n    __typename\n    id\n    userId\n    date\n    ozDrank\n  }\n}"

  public var id: String?
  public var userId: String?
  public var date: String?
  public var ozDrank: Int?

  public init(id: String? = nil, userId: String? = nil, date: String? = nil, ozDrank: Int? = nil) {
    self.id = id
    self.userId = userId
    self.date = date
    self.ozDrank = ozDrank
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId, "date": date, "ozDrank": ozDrank]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateLolWaterDayData", arguments: ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId"), "date": GraphQLVariable("date"), "ozDrank": GraphQLVariable("ozDrank")], type: .object(OnCreateLolWaterDayDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateLolWaterDayData: OnCreateLolWaterDayDatum? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateLolWaterDayData": onCreateLolWaterDayData.flatMap { $0.snapshot }])
    }

    public var onCreateLolWaterDayData: OnCreateLolWaterDayDatum? {
      get {
        return (snapshot["onCreateLolWaterDayData"] as? Snapshot).flatMap { OnCreateLolWaterDayDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateLolWaterDayData")
      }
    }

    public struct OnCreateLolWaterDayDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["LolWaterDayData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ozDrank", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, userId: String, date: String, ozDrank: Int? = nil) {
        self.init(snapshot: ["__typename": "LolWaterDayData", "id": id, "userId": userId, "date": date, "ozDrank": ozDrank])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
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

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var ozDrank: Int? {
        get {
          return snapshot["ozDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ozDrank")
        }
      }
    }
  }
}

public final class OnUpdateLolWaterDayDataSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateLolWaterDayData($id: String, $userId: String, $date: String, $ozDrank: Int) {\n  onUpdateLolWaterDayData(id: $id, userId: $userId, date: $date, ozDrank: $ozDrank) {\n    __typename\n    id\n    userId\n    date\n    ozDrank\n  }\n}"

  public var id: String?
  public var userId: String?
  public var date: String?
  public var ozDrank: Int?

  public init(id: String? = nil, userId: String? = nil, date: String? = nil, ozDrank: Int? = nil) {
    self.id = id
    self.userId = userId
    self.date = date
    self.ozDrank = ozDrank
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId, "date": date, "ozDrank": ozDrank]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateLolWaterDayData", arguments: ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId"), "date": GraphQLVariable("date"), "ozDrank": GraphQLVariable("ozDrank")], type: .object(OnUpdateLolWaterDayDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateLolWaterDayData: OnUpdateLolWaterDayDatum? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateLolWaterDayData": onUpdateLolWaterDayData.flatMap { $0.snapshot }])
    }

    public var onUpdateLolWaterDayData: OnUpdateLolWaterDayDatum? {
      get {
        return (snapshot["onUpdateLolWaterDayData"] as? Snapshot).flatMap { OnUpdateLolWaterDayDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateLolWaterDayData")
      }
    }

    public struct OnUpdateLolWaterDayDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["LolWaterDayData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ozDrank", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, userId: String, date: String, ozDrank: Int? = nil) {
        self.init(snapshot: ["__typename": "LolWaterDayData", "id": id, "userId": userId, "date": date, "ozDrank": ozDrank])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
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

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var ozDrank: Int? {
        get {
          return snapshot["ozDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ozDrank")
        }
      }
    }
  }
}

public final class OnDeleteLolWaterDayDataSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteLolWaterDayData($id: String, $userId: String, $date: String, $ozDrank: Int) {\n  onDeleteLolWaterDayData(id: $id, userId: $userId, date: $date, ozDrank: $ozDrank) {\n    __typename\n    id\n    userId\n    date\n    ozDrank\n  }\n}"

  public var id: String?
  public var userId: String?
  public var date: String?
  public var ozDrank: Int?

  public init(id: String? = nil, userId: String? = nil, date: String? = nil, ozDrank: Int? = nil) {
    self.id = id
    self.userId = userId
    self.date = date
    self.ozDrank = ozDrank
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId, "date": date, "ozDrank": ozDrank]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteLolWaterDayData", arguments: ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId"), "date": GraphQLVariable("date"), "ozDrank": GraphQLVariable("ozDrank")], type: .object(OnDeleteLolWaterDayDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteLolWaterDayData: OnDeleteLolWaterDayDatum? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteLolWaterDayData": onDeleteLolWaterDayData.flatMap { $0.snapshot }])
    }

    public var onDeleteLolWaterDayData: OnDeleteLolWaterDayDatum? {
      get {
        return (snapshot["onDeleteLolWaterDayData"] as? Snapshot).flatMap { OnDeleteLolWaterDayDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteLolWaterDayData")
      }
    }

    public struct OnDeleteLolWaterDayDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["LolWaterDayData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ozDrank", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, userId: String, date: String, ozDrank: Int? = nil) {
        self.init(snapshot: ["__typename": "LolWaterDayData", "id": id, "userId": userId, "date": date, "ozDrank": ozDrank])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
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

      public var date: String {
        get {
          return snapshot["date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var ozDrank: Int? {
        get {
          return snapshot["ozDrank"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ozDrank")
        }
      }
    }
  }
}
