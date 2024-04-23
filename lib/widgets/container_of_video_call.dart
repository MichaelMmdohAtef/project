import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/model/video_call_model.dart';
import 'package:project/select_video_call_screen.dart';

class ContainerOfVideoCall extends StatefulWidget {
  VideoCallModel videoCallModel;
  int index;
  ContainerOfVideoCall(
      {super.key, required this.videoCallModel, required this.index});

  @override
  State<ContainerOfVideoCall> createState() => _ContainerOfVideoCallState();
}

class _ContainerOfVideoCallState extends State<ContainerOfVideoCall> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: widget.videoCallModel.checkBox!
              ? const Color(0xffADD8E6).withOpacity(0.3)
              : Colors.transparent,
          border: Border.all(
            color: const Color(0xffADD8E6).withOpacity(0.3),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ListTile(
                      contentPadding:
                          const EdgeInsetsDirectional.only(start: 7),
                      leading: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xffD4F1F4).withOpacity(0.6),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: const Icon(
                          Icons.video_call,
                          color: Color(0xff75E6DA),
                        ),
                      ),
                      title: Text(
                        widget.videoCallModel.title ?? "",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        widget.videoCallModel.supTitle ?? "",
                      ),
                      trailing: Text(
                        widget.videoCallModel.price ?? "",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Checkbox(
                        autofocus: true,
                        activeColor: const Color(0xff75E6DA),
                        shape: const CircleBorder(),
                        value: widget.videoCallModel.checkBox,
                        tristate: true,
                        onChanged: (value) {
                          setState(() {
                            widget.videoCallModel.checkBox = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
