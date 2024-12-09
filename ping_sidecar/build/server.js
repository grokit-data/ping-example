"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const express_graphql_1 = require("express-graphql");
const graphql_1 = require("graphql");
const QueryRoot = new graphql_1.GraphQLObjectType({
    name: 'Query',
    fields: () => ({
        hello: {
            type: graphql_1.GraphQLString,
            resolve: () => "Hello world!"
        }
    })
});
const schema = new graphql_1.GraphQLSchema({ query: QueryRoot });
const app = (0, express_1.default)();
app.use('/api', (0, express_graphql_1.graphqlHTTP)({
    schema: schema,
    graphiql: true,
}));
app.listen(4000, () => {
    console.log('Server is running on http://localhost:4000/api');
});
