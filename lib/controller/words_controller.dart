import 'package:aqueduct/aqueduct.dart';
import 'package:dart_serve/dart_serve.dart';

class WordsController extends ResourceController {
  final _words = [
    {'word': 'horse'},
    {'word': 'cow'},
    {'word': 'camel'},
    {'word': 'sheep'},
    {'word': 'goat'},
  ];

  @Operation.get()
  Future<Response> getAllWords() async {
    return Response.ok(_words);
  }

  @Operation.get('id')
  Future<Response> getWordByID(@Bind.path('id') int id) async {
   // int id = int.parse(request.path.variables['id']);
    return Response.ok(_words[id]);
  }
}
