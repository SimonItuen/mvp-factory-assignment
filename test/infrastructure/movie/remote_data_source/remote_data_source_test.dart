import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/infrastructure/movie/core/constants.dart';
import 'package:moviz/infrastructure/movie/core/exceptions.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/i_network_info.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/remote_data_source.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/responses.dart';

import '../../../core/fixtures/fixture_reader.dart';
import 'remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client, INetworkInfo])
void main() {
  late MockClient mockClient;
  late RemoteDataSource remoteDataSource;
  late MockINetworkInfo ockNetworkInfo;

  const String tExpression = 'test';
  setUp(() {
    mockClient = MockClient();
    ockNetworkInfo = MockINetworkInfo();
    remoteDataSource = RemoteDataSource(mockClient, ockNetworkInfo);
  });

  group('searchExpression', () {
    test(
        '''should perform a GET request on a URL with application/json header''',
        () async {
      // arrange
      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response((fixture('movie.json')), 200));
      when(ockNetworkInfo.isConnected).thenAnswer((_) async => true);
      // act
      await remoteDataSource.searchMovie(tExpression);
      // assert
      verify(mockClient.get(
          Uri.parse(
              '${Constant.baseUrl}/API/AdvancedSearch/${Constant.apiKey}?title=$tExpression&count=10'),
          headers: {
            'Content-Type': 'application/json' //by default it is text plain
          }));
    });

    test('''should return MovieResponse when response code is 200 (success) ''',
        () async {
      // arrange
      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response((fixture('movie.json')), 200));
      when(ockNetworkInfo.isConnected).thenAnswer((_) async => true);
      // act
      var result = await remoteDataSource.searchMovie(tExpression);
      // assert
      expect(result, isA<MovieResponse>());
    });

    test(
        '''should throw client exception when response code is 400 (Client Error) ''',
        () async {
      // arrange
      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Client Error', 400));
      when(ockNetworkInfo.isConnected).thenAnswer((_) async => true);
      // act
      var call = remoteDataSource.searchMovie;
      // assert
      expect(() => call(tExpression),
          throwsA(const TypeMatcher<ClientException>()));
    });

    test(
        '''should throw server exception when response code is 500 (Server Error) ''',
        () async {
      // arrange
      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Server Error', 500));
      when(ockNetworkInfo.isConnected).thenAnswer((_) async => true);
      // act
      var call = remoteDataSource.searchMovie;
      // assert
      expect(() => call(tExpression),
          throwsA(const TypeMatcher<ServerException>()));
    });
  });
}
