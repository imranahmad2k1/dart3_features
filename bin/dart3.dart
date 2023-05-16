void main() {}

sealed class Animal1 {} //just like abstract class, cant be initialized, switch case would require all cases for sealed class

final class Animal2 {} //can be initialized

base class Animal3 {} //can only be extended not implemented

interface class Animal4 {} //can only be implemented not extended, can also be constructed

//combine with abstract and it will become true interface like other languages
abstract interface class Animal5 {}

mixin class Animal6 {} //can be used as a class and a mixin
//in dart 2 you could use class Human5 with AnotherClass{} but can't with dart 3, you have to use mixin
//this is the breaking change