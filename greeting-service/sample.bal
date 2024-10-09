import ballerina/http;
import ballerina/os;
import ballerina/io;

type Greeting record {
    string 'from;
    string to;
    string message;
};

service / on new http:Listener(8090) {
    resource function get .(string name) returns Greeting {
        io:println("CHOREO_TBOOKING_SERVICE_URL", os:getEnv("CHOREO_TBOOKING_SERVICE_URL"));
        io:println("CHOREO_TBOOKING_SERVICEURL", os:getEnv("CHOREO_TBOOKING_SERVICEURL"));
        Greeting greetingMessage = {"from" : "Choreo", "to" : name, "message" : "Welcome to Choreo!"};
        return greetingMessage;
    }
}
