part of 'index1.dart';

@freezed
class CreateTutor with _$CreateTutor implements AppAction {
  const factory CreateTutor({
    required String email,
    required String password,
    required String username,
    required ActionResult onResult,
}) = CreateTutorStart;

  const factory CreateTutor.successful(AppUser user) = CreateTutorSuccessful;

  @Implements<ErrorAction>()
  const factory CreateTutor.error(Object error, StackTrace stackTrace) = CreateTutorError;
}
