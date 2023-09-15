// ignore_for_file: one_member_abstracts
part of '../use_cases.dart';

abstract class UseCase<Input, Output> {
  Output call(Input input);
}

abstract class OutputUseCase<Output> {
  Output call();
}

abstract class StreamOutputUseCase<Output>
    extends OutputUseCase<Stream<Output>> {}

abstract class StreamUseCase<Input, Output>
    extends UseCase<Input, Stream<Output>> {}

abstract class FutureUseCase<Input, Output>
    extends UseCase<Input, Future<Output>> {}

abstract class FutureOutputUseCase<Output>
    extends OutputUseCase<Future<Output>> {}
