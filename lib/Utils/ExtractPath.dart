import 'package:path/path.dart' as path;

String extractFileName(String filePath) {
  return path.basename(filePath);
}
