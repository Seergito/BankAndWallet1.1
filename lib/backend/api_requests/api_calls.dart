import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Supabase Group Code

class SupabaseGroup {
  static String baseUrl = 'https://neogklzhunfgujmglsxy.supabase.co/auth/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lb2drbHpodW5mZ3VqbWdsc3h5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4MjY5NzA0NiwiZXhwIjoxOTk4MjczMDQ2fQ.vp-SLI3pI-R8utVX1dx9Vu7TGLDlSN8rif-Yp_SuBWg',
    'Authorization':
        'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lb2drbHpodW5mZ3VqbWdsc3h5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4MjY5NzA0NiwiZXhwIjoxOTk4MjczMDQ2fQ.vp-SLI3pI-R8utVX1dx9Vu7TGLDlSN8rif-Yp_SuBWg',
  };
  static SignUpCall signUpCall = SignUpCall();
  static LoginCall loginCall = LoginCall();
  static LogoutCall logoutCall = LogoutCall();
  static RecoverPasswordCall recoverPasswordCall = RecoverPasswordCall();
}

class SignUpCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? phone = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "Phone": "${phone}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SignUp',
      apiUrl: '${SupabaseGroup.baseUrl}signup',
      callType: ApiCallType.POST,
      headers: {
        ...SupabaseGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idSesion(dynamic response) => getJsonField(
        response,
        r'''$.identities[:].id''',
      );
  dynamic idEmail(dynamic response) => getJsonField(
        response,
        r'''$.identities[:].identity_data''',
      );
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${SupabaseGroup.baseUrl}token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        ...SupabaseGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic userWalletId(dynamic response) => getJsonField(
        response,
        r'''$.access_token''',
      );
  dynamic userWalletemail(dynamic response) => getJsonField(
        response,
        r'''$.user.email''',
      );
}

class LogoutCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'logout',
      apiUrl: '${SupabaseGroup.baseUrl}logout?token',
      callType: ApiCallType.POST,
      headers: {
        ...SupabaseGroup.headers,
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RecoverPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) {
    final body = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'recoverPassword',
      apiUrl: '${SupabaseGroup.baseUrl}recover',
      callType: ApiCallType.POST,
      headers: {
        ...SupabaseGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Supabase Group Code

/// Start Wallets Group Code

class WalletsGroup {
  static String baseUrl = 'https://neogklzhunfgujmglsxy.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lb2drbHpodW5mZ3VqbWdsc3h5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4MjY5NzA0NiwiZXhwIjoxOTk4MjczMDQ2fQ.vp-SLI3pI-R8utVX1dx9Vu7TGLDlSN8rif-Yp_SuBWg',
    'Authorization':
        'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lb2drbHpodW5mZ3VqbWdsc3h5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4MjY5NzA0NiwiZXhwIjoxOTk4MjczMDQ2fQ.vp-SLI3pI-R8utVX1dx9Vu7TGLDlSN8rif-Yp_SuBWg',
  };
  static GetWalletsCall getWalletsCall = GetWalletsCall();
  static CreateWalletCall createWalletCall = CreateWalletCall();
  static GetWalletCall getWalletCall = GetWalletCall();
  static UpdateWalletCall updateWalletCall = UpdateWalletCall();
  static CreateTransactionCall createTransactionCall = CreateTransactionCall();
  static GetTransactionCall getTransactionCall = GetTransactionCall();
  static GetCardCall getCardCall = GetCardCall();
  static GetTransactionFilterByDateCall getTransactionFilterByDateCall =
      GetTransactionFilterByDateCall();
}

class GetWalletsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getWallets',
      apiUrl: '${WalletsGroup.baseUrl}Wallets?select=*',
      callType: ApiCallType.GET,
      headers: {
        ...WalletsGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic cantidad(dynamic response) => getJsonField(
        response,
        r'''$[:].amount''',
        true,
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$[:].Idemail''',
        true,
      );
  dynamic fecha(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      );
}

class CreateWalletCall {
  Future<ApiCallResponse> call({
    String? iban = '',
    String? exp = '',
    double? amount = 0,
    String? idmail = '',
    String? service = '',
    String? titular = '',
    String? phone = '',
  }) {
    final body = '''
[
  {
    "iban": "${iban}",
    "exp": "${exp}",
    "amount": ${amount},
    "Idemail": "${idmail}",
    "service": "${service}",
    "titular": "${titular}",
    "phone": "${phone}"
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'createWallet',
      apiUrl: '${WalletsGroup.baseUrl}/Wallets',
      callType: ApiCallType.POST,
      headers: {
        ...WalletsGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetWalletCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getWallet',
      apiUrl: '${WalletsGroup.baseUrl}Wallets?Idemail=eq.${email}&select=*',
      callType: ApiCallType.GET,
      headers: {
        ...WalletsGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic walletId(dynamic response) => getJsonField(
        response,
        r'''$[:].walletId''',
      );
  dynamic iban(dynamic response) => getJsonField(
        response,
        r'''$[:].iban''',
      );
  dynamic exp(dynamic response) => getJsonField(
        response,
        r'''$[:].exp''',
      );
  dynamic amount(dynamic response) => getJsonField(
        response,
        r'''$[:].amount''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$[:].Idemail''',
      );
}

class UpdateWalletCall {
  Future<ApiCallResponse> call({
    String? walletId = '',
    double? amount,
  }) {
    final body = '''
{
  "walletId": "${walletId}",
  "amount": "${amount}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateWallet',
      apiUrl: '${WalletsGroup.baseUrl}Wallets?walletId=eq.${walletId}',
      callType: ApiCallType.PUT,
      headers: {
        ...WalletsGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateTransactionCall {
  Future<ApiCallResponse> call({
    double? amount,
    String? concepto = 'Otros',
    bool? tipo,
    String? contacto = '',
    String? walletId = '',
    String? telefono = '',
    String? titular = '',
  }) {
    final body = '''
{
  "amount": ${amount},
  "concepto": "${concepto}",
  "tipo": ${tipo},
  "contacto": "${contacto}",
  "walletId": "${walletId}",
  "telefono": "${telefono}",
  "titular": "${titular}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createTransaction',
      apiUrl: '${WalletsGroup.baseUrl}Transacciones',
      callType: ApiCallType.POST,
      headers: {
        ...WalletsGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetTransactionCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getTransaction',
      apiUrl: '${WalletsGroup.baseUrl}Transacciones?walletId=eq.${id}&select=*',
      callType: ApiCallType.GET,
      headers: {
        ...WalletsGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic tipo(dynamic response) => getJsonField(
        response,
        r'''$[:].tipo''',
        true,
      );
  dynamic concepto(dynamic response) => getJsonField(
        response,
        r'''$[:].concepto''',
        true,
      );
  dynamic contacto(dynamic response) => getJsonField(
        response,
        r'''$[:].contacto''',
        true,
      );
  dynamic cantidad(dynamic response) => getJsonField(
        response,
        r'''$[:].amount''',
        true,
      );
  dynamic creacion(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].walletId''',
        true,
      );
}

class GetCardCall {
  Future<ApiCallResponse> call({
    String? walletId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getCard',
      apiUrl: '${WalletsGroup.baseUrl}Wallets?walletId=eq.${walletId}&select=*',
      callType: ApiCallType.GET,
      headers: {
        ...WalletsGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic cardCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
      );
  dynamic cardIban(dynamic response) => getJsonField(
        response,
        r'''$[:].iban''',
      );
  dynamic cardExp(dynamic response) => getJsonField(
        response,
        r'''$[:].exp''',
      );
  dynamic cardAmount(dynamic response) => getJsonField(
        response,
        r'''$[:].amount''',
      );
  dynamic cardIdmail(dynamic response) => getJsonField(
        response,
        r'''$[:].Idemail''',
      );
  dynamic cardWalletId(dynamic response) => getJsonField(
        response,
        r'''$[:].walletId''',
      );
}

class GetTransactionFilterByDateCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? startDate = '',
    String? endDate = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getTransactionFilterByDate',
      apiUrl:
          '${WalletsGroup.baseUrl}Transacciones?walletId=eq.${id}&select=*&filter=created_at ge ${startDate} and created_at lt ${endDate}',
      callType: ApiCallType.GET,
      headers: {
        ...WalletsGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Wallets Group Code

class PostContactCall {
  static Future<ApiCallResponse> call({
    String? nombre = '',
    String? email = '',
    String? telefono = '',
    String? walletId = '',
  }) {
    final body = '''
[
  {
    "nombreContacto": "${nombre}",
    "email": "${email}",
    "telefono": "${telefono}"
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'postContact',
      apiUrl: 'https://neogklzhunfgujmglsxy.supabase.co/rest/v1/contactos',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lb2drbHpodW5mZ3VqbWdsc3h5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4MjY5NzA0NiwiZXhwIjoxOTk4MjczMDQ2fQ.vp-SLI3pI-R8utVX1dx9Vu7TGLDlSN8rif-Yp_SuBWg',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lb2drbHpodW5mZ3VqbWdsc3h5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4MjY5NzA0NiwiZXhwIjoxOTk4MjczMDQ2fQ.vp-SLI3pI-R8utVX1dx9Vu7TGLDlSN8rif-Yp_SuBWg',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetContactsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getContacts',
      apiUrl:
          'https://neogklzhunfgujmglsxy.supabase.co/rest/v1/contactos?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lb2drbHpodW5mZ3VqbWdsc3h5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4MjY5NzA0NiwiZXhwIjoxOTk4MjczMDQ2fQ.vp-SLI3pI-R8utVX1dx9Vu7TGLDlSN8rif-Yp_SuBWg',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lb2drbHpodW5mZ3VqbWdsc3h5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4MjY5NzA0NiwiZXhwIjoxOTk4MjczMDQ2fQ.vp-SLI3pI-R8utVX1dx9Vu7TGLDlSN8rif-Yp_SuBWg',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic created(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
      );
  static dynamic nombre(dynamic response) => getJsonField(
        response,
        r'''$[:].nombreContacto''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$[:].email''',
      );
  static dynamic telefono(dynamic response) => getJsonField(
        response,
        r'''$[:].telefono''',
      );
  static dynamic idNum(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
