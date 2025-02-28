import 'package:dartz/dartz.dart';


import '../../../../core/error/failures.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/repositories/login_domain_repo.dart';
import '../data_sources/data_sources.dart';

class LoginDataRepo implements LoginDomainRepo {
  LoginDataSources loginDataSources;

  LoginDataRepo(this.loginDataSources);

  @override
  Future<Either<Failures, LoginEntity>> login(String email, String password) =>
      loginDataSources.login(email, password);
}
