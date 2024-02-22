import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as lib_img;
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wabu/features/authentication/presentation/widgets/button_component.dart';

class ButtonPhotoComponent extends StatefulWidget {
  final int typeFile;
  final String title;
  final bool disabled;
  final Function(String) inputHandler;
  final String initialPath;

  ButtonPhotoComponent({
    Key ? key,
    required this.title,
    this.typeFile = 0,
    required this.inputHandler,
    this.disabled = false,
    this.initialPath = '',
  }) : super(key: key);

  @override
  _ButtonPhotoComponentState createState() => _ButtonPhotoComponentState();
}

class _ButtonPhotoComponentState extends State<ButtonPhotoComponent> {
  final _picker = ImagePicker();
  String _path = '';

  @override
  void initState() {
    if (widget.initialPath != '' ) {
      _path = widget.initialPath;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonComponent(
          enabled: !this.widget.disabled,
          eventHandler: _showPicker,
        ),
        /*OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: AppConfig.cOrange001,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 2.0,
          ),
          child: Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: AppConfig.cWhite001,
            ),
          ),
          onPressed: this.widget.disabled ? null : _showPicker,
        ),*/
        _path != ''
            ? IconButton(
                icon: Icon(
                  widget.typeFile == 0 ? Icons.photo : Icons.videocam_rounded,
                  color: Color.fromARGB(255, 25, 118, 210),
                ),
                onPressed: () {
                  openFile();
                },
              )
            : SizedBox.shrink(),
      ],
    );
  }

  _showPicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    widget.typeFile == 0
                        ? Icons.photo_library
                        : Icons.video_library,
                  ),
                  title: Text('Galeria'),
                  onTap: () {
                    if (widget.typeFile == 0) {
                      _imgTake(false);
                    } else {
                      _videoTake(false);
                    }

                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(
                    widget.typeFile == 0
                        ? Icons.photo_camera
                        : Icons.videocam_rounded,
                  ),
                  title: Text('Camara'),
                  onTap: () {
                    if (widget.typeFile == 0) {
                      _imgTake(true);
                    } else {
                      _videoTake(true);
                    }

                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
    
  }

  _imgTake(bool isCamara) async {
    int imgHeight = 500;
    File ? _file;

    final pickedFile = await _picker.pickImage(
      source: isCamara ? ImageSource.camera : ImageSource.gallery,
    );

    // Get photo and delete before photo
    if (_path != '') {
      var removeFile = File(_path);

      if (await removeFile.exists()) {
        await removeFile.delete();
      }
    }

    if (pickedFile != null) {
      // Read take photo in byte
      var dataImage = await pickedFile.readAsBytes();

      // decode photo
      lib_img.Image? image = lib_img.decodeImage(dataImage);

      // Get size photo
      int captureImgHeight  = image!.height;
      int captureImgWidth = image.width;

      // Resize photo
      int resizeImgWidth = captureImgHeight == imgHeight
          ? captureImgWidth
          : ((((imgHeight * 100) / captureImgHeight) * captureImgWidth) / 100)
              .floor();

      // Resize the image
      lib_img.Image resizeImg = lib_img.copyResize(
        image,
        width: resizeImgWidth,
        height: imgHeight,
      );

      // Get new path photo as PNG
      String newPath = await _filePath();

      // Crate a new file without data.
      _file = await File(newPath).create(recursive: true);

      // Save data in new file.
      await _file.writeAsBytes(lib_img.encodePng(resizeImg));

      // Get photo
      var _localFile = File(pickedFile.path);

      // delete photo
      await _localFile.delete();


    }

    setState(() {
      _path = _file != null ? _file.path : '';

      widget.inputHandler(_path);
    });
  }

  _videoTake(bool isCamara) async {
    File ? _file;
    final pickedFile = await _picker.pickVideo(
      source: isCamara ? ImageSource.camera : ImageSource.gallery,
      maxDuration: Duration(minutes: 1),
    );

    if (_path != '') {
      var removeFile = File(_path);

      if (await removeFile.exists()) {
        await removeFile.delete();
      }
    }

    if (pickedFile != null) {
      // Get new path photo as MP4
      String newPath = await _filePath(preName: 'video');
      var _localFile = File(pickedFile.path);

      if (isCamara) {
        _file = await _localFile.rename(newPath);
      } else {
        _file = await _localFile.copy(newPath);

        await _localFile.delete();
      }
    }

    setState(() {
       _path = _file != null ? _file.path : '';

      this.widget.inputHandler(_path);
    });
  }

  Future<void> openFile() async {
    try {
      await OpenFile.open(_path);
    } catch (e) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Text('No se pudo abrir el archivo'),
          );
        },
      );
    }
  }

  Future<String> _filePath({
    String preName = 'foto',
  }) async {
    var directory = await getExternalStorageDirectory();
    String newDirectory = '${directory?.path}/Pictures/$preName';
    String ext = '.png';

    if (preName == 'video') {
      ext = '.mp4';
    }

    newDirectory += '_${_getDateFormatMille()}$ext';

    /*var fileName = (completePath.split('/').last);
    var listName = fileName.split('.');
    int listNameSize = listName.length - 1;

    var fileWithoutExt = listName.getRange(0, listNameSize).toList().join(".");
    var filePath = completePath.replaceAll("/$fileName", '');*/

    return newDirectory;
  }

  String _getDateFormatMille() {
    var date = DateTime.now();
    var formatDate = DateFormat("yyyyMMddhhmmss").format(date);

    return '$formatDate${date.millisecond}';
  }
}
