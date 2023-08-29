abstract class StreamUseCase<Input,OutPut> {
  Stream<OutPut> execute(Input input);
}