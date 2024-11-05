
abstract class FirebaseResult<T>{

  FirebaseResult();
   factory FirebaseResult.success(T type) = Success<T>;
   factory FirebaseResult.failure(T exception) = Failure<T>;

}

// class success
class Success<T> extends FirebaseResult<T>{
  final T result;

  Success(this.result);

}

// class failure
class Failure<T> extends FirebaseResult<T>{
  final T exception;

  Failure(this.exception);
}