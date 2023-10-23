// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension Flights {
  class GetFlightsQuery: GraphQLQuery {
    static let operationName: String = "GetFlights"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GetFlights { flights { __typename flightNumber origin destination departure arrival metrics { __typename label value status } } }"#
      ))

    public init() {}

    struct Data: Flights.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { Flights.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("flights", [Flight].self),
      ] }

      var flights: [Flight] { __data["flights"] }

      /// Flight
      ///
      /// Parent Type: `Flight`
      struct Flight: Flights.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { Flights.Objects.Flight }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("flightNumber", String.self),
          .field("origin", String.self),
          .field("destination", String.self),
          .field("departure", String.self),
          .field("arrival", String.self),
          .field("metrics", [Metric?].self),
        ] }

        var flightNumber: String { __data["flightNumber"] }
        var origin: String { __data["origin"] }
        var destination: String { __data["destination"] }
        var departure: String { __data["departure"] }
        var arrival: String { __data["arrival"] }
        var metrics: [Metric?] { __data["metrics"] }

        /// Flight.Metric
        ///
        /// Parent Type: `Metric`
        struct Metric: Flights.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { Flights.Objects.Metric }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("label", String.self),
            .field("value", String.self),
            .field("status", Int.self),
          ] }

          var label: String { __data["label"] }
          var value: String { __data["value"] }
          var status: Int { __data["status"] }
        }
      }
    }
  }

}
