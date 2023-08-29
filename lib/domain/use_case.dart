abstract class UseCase<Input,OutPut> {
  Future<OutPut> execute(Input input);
}