import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/infrastructure/api_service/api_service.dart';

final apiProvider = Provider((ref) => ApiService());
