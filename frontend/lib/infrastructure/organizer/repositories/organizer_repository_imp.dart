import 'package:dartz/dartz.dart';
import 'package:frontend/domain/organizer/organizer.dart';
import 'package:frontend/domain/organizer/organizer_repository/organizer_repositories.dart';  
import 'package:frontend/infrastructure/organizer/data_sources/organizer_data_sources.dart'; 
class OrganizerRepositoryImp implements OrganizerRepository{
  final OrganizerDataSource organizerDataSource;  
  OrganizerRepositoryImp({
    required this.organizerDataSource,
  });
  @override
  Future<Either<OrganizerFailure, OrganizerModel>> getOrganizerData(String id) async {
    return await organizerDataSource.getOrganizerData(id);
  }
  @override
  Future<Either<OrganizerFailure, List<OrganizerModel>>> getAllOrganizers(OrganizerModel allOrganizer) async {
    return await organizerDataSource.getAllOrganizers(allOrganizer);
  }
  @override
  Future<Either<OrganizerFailure, OrganizerUpdateModel>> updateOrganizer(OrganizerUpdateModel newOrganizer) async {
    return await organizerDataSource.updateOrganizer(newOrganizer);
  }
  @override
  Future<Either<OrganizerFailure, Unit>> deleteOrganizer(String id) async {
    return await organizerDataSource.deleteOrganizer(id);
  }
}