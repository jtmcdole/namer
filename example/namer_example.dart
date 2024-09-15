import 'package:namer/namer.dart' as namer;

void main() {
  print('animal: ${namer.animal()}'); // truthful manatee
  print(
      'noun: ${namer.generic(verbs: 1, adjectives: 2)}'); // approbating false greedy owner
}
