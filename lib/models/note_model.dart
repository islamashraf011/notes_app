import 'package:hive/hive.dart';

part 'note_model.g.dart';

// this line means i give the file name and type of it (dart)
// and i will generate it with this name
// i used command (flutter packages pub run build_runner build) to generate code

// this step (extends Hive Object) optional put it is good to use it

@HiveType(typeId: 0) // this number unique for this class
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2) // this index unique for this fields can't repeat it
  final String date;
  @HiveField(3)
  final int color;
  //why i use int with color ?

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
