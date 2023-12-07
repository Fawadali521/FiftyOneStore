// ignore_for_file: file_names

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

class FilePickerService {
  File? selectedImage;

  Future<Uint8List?> pickImage() async {
    return await pickImageWithoutCompression();
  }

  Future<FilePickerResult?> selectPdf() async {
    // File? selectedPdf;
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: false,
    );
    if (result != null) {
      return result;
    } else {
      return null;
    }
  }

  pickImageWithoutCompression() async {
    print("enter select image");
    Uint8List? selectedImage;
    final filePicker = FilePicker.platform;
    print("image selected");
    FilePickerResult? result = await filePicker.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );
    print("image select in convert to");
    if (result != null) {
      print("return to Uint8List ");
      selectedImage = result.files.single.bytes;
      return selectedImage;
    } else {
      print("image is null");
      return null;
    }
  }

  selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      // allowedExtensions: ['pdf', 'doc', 'docx'],
      allowMultiple: false,
    );
    if (result != null) {
      return result;
    } else {
      print("Error in file extension");
      return null;
    }
  }
}
