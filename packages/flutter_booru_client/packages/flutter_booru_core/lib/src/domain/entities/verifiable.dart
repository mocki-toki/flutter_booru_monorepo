abstract class Verifiable<Type, Result> {
  const Verifiable(this.value);

  final Type value;

  Result validate();

  @override
  String toString() => '$value';
}
