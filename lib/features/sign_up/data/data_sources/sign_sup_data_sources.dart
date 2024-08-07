import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/user_data.dart';
import '../models/SignUpModel.dart';

abstract class SignUpDataSources {
  Future<Either<Failures, SignUpModel>> signUp(UserData userData);
}
