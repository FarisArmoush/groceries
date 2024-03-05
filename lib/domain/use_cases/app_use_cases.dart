import 'package:flutter/widgets.dart';

@immutable
abstract class UseCase<Input, Output> {
  const UseCase();
  Output call(Input input);
}

@immutable
abstract class OutputUseCase<Output> {
  const OutputUseCase();
  Output call();
}

@immutable
abstract class StreamOutputUseCase<Output>
    extends OutputUseCase<Stream<Output>> {
  const StreamOutputUseCase();
}

@immutable
abstract class StreamUseCase<Input, Output>
    extends UseCase<Input, Stream<Output>> {
  const StreamUseCase();
}

@immutable
abstract class FutureUseCase<Input, Output>
    extends UseCase<Input, Future<Output>> {
  const FutureUseCase();
}

@immutable
abstract class FutureOutputUseCase<Output>
    extends OutputUseCase<Future<Output>> {
  const FutureOutputUseCase();
}

@immutable
abstract class FutureInputUseCase<Input> extends UseCase<Input, Future<void>> {
  const FutureInputUseCase();
}
