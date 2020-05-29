# openapi-echo-dart-client

To generate the Dart client

- Download the dart codegen plugin from https://search.maven.org/search?q=a:openapi-dart-generator
- Download OpenAPI CLI from https://search.maven.org/search?q=a:openapi-generator-cli
- Run
```sh
java -cp openapi-generator-cli-XXX.jar:openapi-dart-generator-XXX.jar org.openapitools.codegen.OpenAPIGenerator generate -i openapi.json -g dart2-api
```
