part of 'index1.dart';

 @freezed
 class GetTutor with _$GetTutor implements AppAction {
   const factory GetTutor(String uid) = GetTutorStart;

   const factory GetTutor.successful(AppUser user) = GetTutorSuccessful;

   @Implements<ErrorAction>()
   const factory GetTutor.error(Object error, StackTrace stackTrace) = GetTutorError;
 }
