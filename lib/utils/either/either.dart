library either;

typedef Lazy<T> = T Function();

/// Represents a value of one of two possible types.
/// Instances of [Either] are either an instance of [_Left] or [_Right].

/// [_Left] is used for "failure".
/// [_Right] is used for "success".
abstract class Either<L, R> {
  const Either();

  /// Represents the left side of [Either] class which by convention is a "Failure".
  bool get isLeft => this is _Left<L, R>;

  /// Represents the right side of [Either] class which by convention is a "Success"
  bool get isRight => this is _Right<L, R>;

  /// Get [_Left] value, may throw an exception when the value is [_Right]
  L get left => fold<L>(
        (value) => value,
        (right) => throw Exception(
            'Illegal use. You should check isLeft before calling'),
      );

  /// Get [_Right] value, may throw an exception when the value is [_Left]
  R get right => fold<R>(
        (left) => throw Exception(
            'Illegal use. You should check is_Right before calling'),
        (value) => value,
      );

  /// Transform values of [_Left] and [_Right]
  Either<TL, TR> either<TL, TR>(
    TL Function(L left) fnL,
    TR Function(R right) fnR,
  );

  /// Transform value of [_Right] when transformation may be finished with an error
  Either<L, TR> then<TR>(
    Either<L, TR> Function(R right) fnR,
  );

  /// Transform value of [_Right] when transformation may be finished with an error
  Future<Either<L, TR>> thenAsync<TR>(
    Future<Either<L, TR>> Function(R right) fnR,
  );

  /// Transform value of [_Left] when transformation may be finished with an [_Right]
  Either<TL, R> thenLeft<TL>(
    Either<TL, R> Function(L left) fnL,
  );

  /// Transform value of [_Left] when transformation may be finished with an [_Right]
  Future<Either<TL, R>> thenLeftAsync<TL>(
    Future<Either<TL, R>> Function(L left) fnL,
  );

  /// Transform value of [_Right]
  Either<L, TR> map<TR>(
    TR Function(R right) fnR,
  );

  /// Transform value of [_Left]
  Either<TL, R> mapLeft<TL>(
    TL Function(L left) fnL,
  );

  /// Transform value of [_Right]
  Future<Either<L, TR>> mapAsync<TR>(
    Future<TR> Function(R right) fnR,
  );

  /// Transform value of [_Left]
  Future<Either<TL, R>> mapLeftAsync<TL>(
    Future<TL> Function(L left) fnL,
  );

  /// Fold [_Left] and [_Right] into the value of one type
  T fold<T>(T Function(L left) fnL, T Function(R right) fnR);

  /// Swap [_Left] and [_Right]
  Either<R, L> swap() => fold(
        (left) => _Right(left),
        (right) => _Left(right),
      );

  /// Constructs a new [Either] from a function that might throw
  static Either<L, R> tryCatch<L, R, Err extends Object>(
      L Function(Err err) onError, R Function() fnR) {
    try {
      return _Right(
        fnR(),
      );
    } on Err catch (e) {
      return _Left(
        onError(e),
      );
    }
  }

  /// If the condition is satify then return [rightValue] in [_Right] else [leftValue] in [_Left]
  static Either<L, R> cond<L, R>(bool test, L leftValue, R rightValue) =>
      test ? _Right(rightValue) : _Left(leftValue);

  /// If the condition is satify then return [rightValue] in [_Right] else [leftValue] in [_Left]
  static Either<L, R> condLazy<L, R>(
          bool test, Lazy<L> leftValue, Lazy<R> rightValue) =>
      test ? _Right(rightValue()) : _Left(leftValue());
}

/// [_Left] Used for "failure"
class _Left<L, R> extends Either<L, R> {
  final L value;

  const _Left(this.value);

  @override
  Either<TL, TR> either<TL, TR>(
      TL Function(L left) fnL, TR Function(R right) fnR) {
    return _Left<TL, TR>(fnL(value));
  }

  @override
  Either<L, TR> then<TR>(Either<L, TR> Function(R right) fnR) {
    return _Left<L, TR>(value);
  }

  @override
  Future<Either<L, TR>> thenAsync<TR>(
      Future<Either<L, TR>> Function(R right) fnR) {
    return Future.value(_Left<L, TR>(value));
  }

  @override
  Either<TL, R> thenLeft<TL>(Either<TL, R> Function(L left) fnL) {
    return fnL(value);
  }

  @override
  Future<Either<TL, R>> thenLeftAsync<TL>(
      Future<Either<TL, R>> Function(L left) fnL) {
    return fnL(value);
  }

  @override
  Either<L, TR> map<TR>(TR Function(R right) fnR) {
    return _Left<L, TR>(value);
  }

  @override
  Either<TL, R> mapLeft<TL>(TL Function(L left) fnL) {
    return _Left<TL, R>(fnL(value));
  }

  @override
  Future<Either<L, TR>> mapAsync<TR>(Future<TR> Function(R right) fnR) {
    return Future.value(_Left<L, TR>(value));
  }

  @override
  Future<Either<TL, R>> mapLeftAsync<TL>(Future<TL> Function(L left) fnL) {
    return fnL(value).then((value) => _Left<TL, R>(value));
  }

  @override
  T fold<T>(T Function(L left) fnL, T Function(R right) fnR) {
    return fnL(value);
  }
}

/// [_Right] Used for "success"
class _Right<L, R> extends Either<L, R> {
  final R value;

  const _Right(this.value);

  @override
  Either<TL, TR> either<TL, TR>(
      TL Function(L left) fnL, TR Function(R right) fnR) {
    return _Right<TL, TR>(fnR(value));
  }

  @override
  Either<L, TR> then<TR>(Either<L, TR> Function(R right) fnR) {
    return fnR(value);
  }

  @override
  Future<Either<L, TR>> thenAsync<TR>(
      Future<Either<L, TR>> Function(R right) fnR) {
    return fnR(value);
  }

  @override
  Either<TL, R> thenLeft<TL>(Either<TL, R> Function(L left) fnL) {
    return _Right<TL, R>(value);
  }

  @override
  Future<Either<TL, R>> thenLeftAsync<TL>(
      Future<Either<TL, R>> Function(L left) fnL) {
    return Future.value(_Right<TL, R>(value));
  }

  @override
  Either<L, TR> map<TR>(TR Function(R right) fnR) {
    return _Right<L, TR>(fnR(value));
  }

  @override
  Either<TL, R> mapLeft<TL>(TL Function(L left) fnL) {
    return _Right<TL, R>(value);
  }

  @override
  Future<Either<L, TR>> mapAsync<TR>(Future<TR> Function(R right) fnR) {
    return fnR(value).then((value) => _Right<L, TR>(value));
  }

  @override
  Future<Either<TL, R>> mapLeftAsync<TL>(Future<TL> Function(L left) fnL) {
    return Future.value(_Right<TL, R>(value));
  }

  @override
  T fold<T>(T Function(L left) fnL, T Function(R right) fnR) {
    return fnR(value);
  }
}

/// instances [left] of [_Left] and [right] of [_Right] to use it globaly
Either<L, R> left<L, R>(L l) => _Left(l);
Either<L, R> right<L, R>(R r) => _Right(r);
