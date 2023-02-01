import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

class HttpConfig {
  Future<SecurityContext> get globalContext async {
    final sslCert = await rootBundle.load('certificates/certificates.pem');
    SecurityContext securityContext = SecurityContext(withTrustedRoots: true);
    securityContext.setTrustedCertificatesBytes(sslCert.buffer.asInt8List());

    return securityContext;
  }

  http.Client get client {
    HttpClient client = HttpClient();
    globalContext.then((value) {
      client = HttpClient(context: value);
    });
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) =>
            cert.pem == 'PEM' ? true : false;
    IOClient ioClient = IOClient(client);

    return ioClient;
  }
}
