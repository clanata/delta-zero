// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol Flights_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == Flights.SchemaMetadata {}

protocol Flights_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == Flights.SchemaMetadata {}

protocol Flights_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == Flights.SchemaMetadata {}

protocol Flights_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == Flights.SchemaMetadata {}

extension Flights {
  typealias ID = String

  typealias SelectionSet = Flights_SelectionSet

  typealias InlineFragment = Flights_InlineFragment

  typealias MutableSelectionSet = Flights_MutableSelectionSet

  typealias MutableInlineFragment = Flights_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Query": return Flights.Objects.Query
      case "Flight": return Flights.Objects.Flight
      case "Metric": return Flights.Objects.Metric
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}