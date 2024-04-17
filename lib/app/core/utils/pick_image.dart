import 'package:image_motor_search_app/app/core/inject_dependecies.dart';
import 'package:image_picker/image_picker.dart';

Future<XFile?> pickImage() async {
  final ImagePicker picker = getit();
  final pickedFile =
      await picker.pickImage(source: ImageSource.camera, imageQuality: 100);

  if (pickedFile != null) {
    return pickedFile;
  }
  return null;
}

// Funtion to receive image and return as bytes
Future<List<int>?> imageToBytes(XFile image) async {
  final bytes = await image.readAsBytes();
  return bytes;
}
