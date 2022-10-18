# Rails Take-Home Assessment

This is the starter-code for our rails take-home assessment. This project includes the following data models:

| Model         | Description                                            |
| ------------- | ------------------------------------------------------ |
| `User`        | Users using the platform                               |
| `NatureCode`  | Categories describing the nature of a 911 call         |
| `Chatroom`    | Chatrooms where users can send messages back and forth |
| `ChatMessage` | Chat messages sent into chatrooms                      |

This project has also been set up with GraphQL.

- All requests will go through the `POST /graphql` route

- You can test the graphql operations by visiting `/graphiql`. You can use tools like [GraphiQL](https://github.com/graphql/graphiql)
  or [Postman](https://www.postman.com/), or `cURL`

User authentication is handled by passing the user's email in the `X-Email` request header.

## Assignment

For this take-home assignment, you'll be asked to do the following:

### Part 1 | Implement GraphQL Operations

Create the following GraphQL operations:

#### `Chatroom` Mutations

- `createChatroom($label: String!, $natureCodeId: ID)`

  - Creates a new `Chatroom` with a label and optionally a `NatureCode`

- `updateChatroom($id: ID!, $label: String, $natureCodeId: ID)`

  - Updates an existing `Chatroom`'s label and/or `NatureCode`

- `resolveChatroom($id: ID!)`
  - Sets an existing `Chatroom`'s `resolved` flag to `true`

#### `ChatMessage` Mutations

- `createChatMessage($chatroomId: ID!, message: String!, $authorId: ID!)`
  - Creates a `ChatMessage` in an existing `Chatroom` with a `message` and a `User` as the `author`

#### `ChatMessage` Queries

- `chatMessages($search: String, $authorId: ID)`
  - Searches for `ChatMessage`s where the `message` contains the value of `$search`, and where the author matches the given `$authorId`

### Part 2 | Create Audit Trail

#### Audit Trail Data Model

Create a model, or a set of models, that represent an audit trail. These new models should allow us to:

- Include timestamps for actions performed

- See all GraphQL queries performed, including the `User` and the query variables

- See all GraphQL mutations performed, including the `User` and the mutation variables

It is up to _you_ to decide how those models are created and how the audit trail will be populated.

#### Audit Trail Queries

- `auditTrail($userId: ID)`
  - Returns all actions tracked through the audit trail, optionally filtered by the given `$userId`
