part of openapi.api;


class DefaultApi {
  final ApiClient apiClient;

  DefaultApi(this.apiClient) : assert(apiClient != null);





    Future<ApiResponse>
    _echoEcho({Options options, int n, Message body }) async {
      Object postBody = body;

      // verify required params are set

      // create path and map variables
      final __path = '/echo/v1/echo';

      // query params
      final queryParams = <QueryParam>[];
      final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
      if(headerParams['Accept'] == null) {
        // we only want to accept this format as we can parse it
        headerParams['Accept'] = 'application/json';
      }

          if(n != null) {
        queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'n', n));
          }

      final authNames = <String>[];
      final opt = options ?? Options();

        final contentTypes = ['application/json'];

        if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
        headerParams['Content-Type'] = contentTypes[0];
        }
        if (postBody != null) {
        postBody = LocalApiClient.serialize(postBody);
        }

      opt.headers = headerParams;
      opt.method = 'POST';

      return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

      Future<Message> 
  _echoEcho_decode(ApiResponse response) async {
      if(response.body != null) {
              return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'Message') as Message;
      }

      return null;
   }

  /// 
  ///
  /// 
    Future<Message> 
  echoEcho({Options options, int n, Message body }) async {

    final response = await _echoEcho( options: options, n: n, body: body);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await _echoEcho_decode(response);
    }
  }


    Future<ApiResponse>
    _echoEchoApiKey({Options options, int n, Message body }) async {
      Object postBody = body;

      // verify required params are set

      // create path and map variables
      final __path = '/echo/v1/echo_api_key';

      // query params
      final queryParams = <QueryParam>[];
      final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
      if(headerParams['Accept'] == null) {
        // we only want to accept this format as we can parse it
        headerParams['Accept'] = 'application/json';
      }

          if(n != null) {
        queryParams.addAll(convertParametersForCollectionFormat(LocalApiClient.parameterToString, '', 'n', n));
          }

      final authNames = <String>['api_key'];
      final opt = options ?? Options();

        final contentTypes = ['application/json'];

        if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
        headerParams['Content-Type'] = contentTypes[0];
        }
        if (postBody != null) {
        postBody = LocalApiClient.serialize(postBody);
        }

      opt.headers = headerParams;
      opt.method = 'POST';

      return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

      Future<Message> 
  _echoEchoApiKey_decode(ApiResponse response) async {
      if(response.body != null) {
              return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'Message') as Message;
      }

      return null;
   }

  /// 
  ///
  /// 
    Future<Message> 
  echoEchoApiKey({Options options, int n, Message body }) async {

    final response = await _echoEchoApiKey( options: options, n: n, body: body);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await _echoEchoApiKey_decode(response);
    }
  }


    Future<ApiResponse>
    _echoEchoPathParameter(int n, {Options options, Message body }) async {
      Object postBody = body;

      // verify required params are set
          if(n == null) {
          throw ApiException(400, 'Missing required param: n');
          }

      // create path and map variables
      final __path = '/echo/v1/echo/{n}'.replaceAll('{' + 'n' + '}', n.toString());

      // query params
      final queryParams = <QueryParam>[];
      final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
      if(headerParams['Accept'] == null) {
        // we only want to accept this format as we can parse it
        headerParams['Accept'] = 'application/json';
      }


      final authNames = <String>[];
      final opt = options ?? Options();

        final contentTypes = ['application/json'];

        if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
        headerParams['Content-Type'] = contentTypes[0];
        }
        if (postBody != null) {
        postBody = LocalApiClient.serialize(postBody);
        }

      opt.headers = headerParams;
      opt.method = 'POST';

      return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

      Future<Message> 
  _echoEchoPathParameter_decode(ApiResponse response) async {
      if(response.body != null) {
              return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'Message') as Message;
      }

      return null;
   }

  /// 
  ///
  /// 
    Future<Message> 
  echoEchoPathParameter(int n, {Options options, Message body }) async {

    final response = await _echoEchoPathParameter(n,  options: options, body: body);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await _echoEchoPathParameter_decode(response);
    }
  }


    Future<ApiResponse>
    _echoGetUserEmail({Options options}) async {
      Object postBody;

      // verify required params are set

      // create path and map variables
      final __path = '/echo/v1/email';

      // query params
      final queryParams = <QueryParam>[];
      final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
      if(headerParams['Accept'] == null) {
        // we only want to accept this format as we can parse it
        headerParams['Accept'] = 'application/json';
      }


      final authNames = <String>['google_id_token-56d14e3b', 'google_id_token_https-56d14e3b'];
      final opt = options ?? Options();

        final contentTypes = [];

        if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
        headerParams['Content-Type'] = contentTypes[0];
        }
        if (postBody != null) {
        postBody = LocalApiClient.serialize(postBody);
        }

      opt.headers = headerParams;
      opt.method = 'GET';

      return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

      Future<Email> 
  _echoGetUserEmail_decode(ApiResponse response) async {
      if(response.body != null) {
              return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'Email') as Email;
      }

      return null;
   }

  /// 
  ///
  /// 
    Future<Email> 
  echoGetUserEmail({Options options}) async {

    final response = await _echoGetUserEmail( options: options, );

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await _echoGetUserEmail_decode(response);
    }
  }


    Future<ApiResponse>
    _echoGetUserEmailFirebase({Options options}) async {
      Object postBody;

      // verify required params are set

      // create path and map variables
      final __path = '/echo/v1/firebase_user';

      // query params
      final queryParams = <QueryParam>[];
      final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
      if(headerParams['Accept'] == null) {
        // we only want to accept this format as we can parse it
        headerParams['Accept'] = 'application/json';
      }


      final authNames = <String>['firebase-6cd30249'];
      final opt = options ?? Options();

        final contentTypes = [];

        if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
        headerParams['Content-Type'] = contentTypes[0];
        }
        if (postBody != null) {
        postBody = LocalApiClient.serialize(postBody);
        }

      opt.headers = headerParams;
      opt.method = 'GET';

      return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
    }

      Future<Email> 
  _echoGetUserEmailFirebase_decode(ApiResponse response) async {
      if(response.body != null) {
              return LocalApiClient.deserializeFromString(await decodeBodyBytes(response), 'Email') as Email;
      }

      return null;
   }

  /// 
  ///
  /// 
    Future<Email> 
  echoGetUserEmailFirebase({Options options}) async {

    final response = await _echoGetUserEmailFirebase( options: options, );

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    } else {
      return await _echoGetUserEmailFirebase_decode(response);
    }
  }

}
