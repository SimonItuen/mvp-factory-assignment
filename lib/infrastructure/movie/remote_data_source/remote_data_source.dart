import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/infrastructure/movie/core/constants.dart';
import 'package:moviz/infrastructure/movie/core/exceptions.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/i_network_info.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/i_remote_data_source.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/responses.dart';

@LazySingleton(as: IRemoteDataSource)
class RemoteDataSource implements IRemoteDataSource {
  final http.Client _client;
  final INetworkInfo _networkInfo;

  RemoteDataSource(this._client, this._networkInfo);

  @override
  Future<MovieResponse> searchMovie(String expression) async {
    if (! await _networkInfo.isConnected) {
      throw Exception();
    }else {
      final response = await _client.get(
        Uri.parse(
            '${Constant.baseUrl}/API/AdvancedSearch/${Constant.apiKey}?title=$expression&count=10'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        return MovieResponse.fromJson(json.decode(response.body));
      } else {
        if (response.statusCode.toString().startsWith('4')) {
          throw ClientException();
        } else if (response.statusCode.toString().startsWith('5')) {
          throw ServerException(response.statusCode);
        } else {
          throw Exception();
        }
      }
    }
  }
}
