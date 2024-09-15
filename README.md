# Namer

Naming things can be hard. Randomly naming a lot of things is all this
package helps with.

## Features

* It generates Strings that are sometimes hilarious
* You can tweak the number of adjectives and verbs

## Usage

```dart
import 'package:namer/namer.dart' as namer;

void main() {
  // truthful manatee
  print('animal: ${namer.animal()}');
  // approbating false greedy owner
  print('noun: ${namer.generic(verbs: 1, adjectives: 2)}');
}
```
