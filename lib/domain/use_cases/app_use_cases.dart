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

abstract class FutureInputUseCase<Input> extends UseCase<Input, Future<void>> {}