part of 'json_cubit.dart';

abstract class JsonState extends Equatable {
  const JsonState();
}

class JsonInitial extends JsonState {
  @override
  List<Object> get props => [];
}
class JsonLoading extends JsonState {
  @override
  List<Object> get props => [];
}
class JsonLoaded extends JsonState {
  final List<Record> record;
  JsonLoaded(this.record);
  @override
  List<Object> get props => [];
}
class JsonError extends JsonState {
  @override
  List<Object> get props => [];
}
