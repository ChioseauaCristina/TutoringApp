part of 'index1.dart';

 const String _kLoginTutorPendingId = 'LoginTutor';

 @freezed
 class LoginTutor with _$LoginTutor implements AppAction {
   @Implements<ActionStart>()
   const factory LoginTutor.start({
   required String email,
   required String password,
   required ActionResult onResult,
     @Default(_kLoginTutorPendingId) String pendingId,
   }) = LoginTutorStart;

   @Implements<ActionDone>()
   const factory LoginTutor.successful(
       AppUser user, [
     @Default(_kLoginTutorPendingId) String pendingId,
   ]) = LoginTutorSuccessful;

   @Implements<ActionDone>()
   @Implements<ErrorAction>()
   const factory LoginTutor.error(
     Object error, StackTrace stackTrace, [
     @Default(_kLoginTutorPendingId) String pendingId,
   ]) = LoginTutorError;

   static String get pendingKey => _kLoginTutorPendingId;
 }
