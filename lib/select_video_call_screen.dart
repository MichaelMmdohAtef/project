import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/model/video_call_model.dart';
import 'package:project/widgets/container_of_video_call.dart';
import 'package:project/widgets/search_family_member.dart';
import 'package:project/widgets/title_of_screen.dart';

List<VideoCallModel> videoCall = [
  VideoCallModel(
      title: "Video Call",
      supTitle: "Video Call With a Doctor For 30 Min",
      price: "\$ 30",
      checkBox: true),
  VideoCallModel(
    title: "Video Call",
    supTitle: "Video Call With a Doctor For 30 Min",
    price: "\$ 30",
  ),
  VideoCallModel(
    title: "Video Call",
    supTitle: "Video Call With a Doctor For 30 Min",
    price: "\$ 30",
  ),
  VideoCallModel(
    title: "Video Call",
    supTitle: "Video Call With a Doctor For 30 Min",
    price: "\$ 30",
  ),
];

class SelectVideoCall extends StatelessWidget {
  const SelectVideoCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.topEnd,
                colors: [
              const Color(0xffADD8E6).withOpacity(0.3),
              const Color(0xffffffff),
            ])),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.015,
              ),
              const TitleOfScreen(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              const SearchFamilyMember(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(start: 15),
                child: Text(
                  "Select Service",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.015,
              ),
              SizedBox(
                height: 450,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ContainerOfVideoCall(
                          videoCallModel: videoCall[index],
                          index: index,
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.015,
                        ),
                    itemCount: videoCall.length),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Color(0xff75E6DA),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child:
                        MaterialButton(child: Text("Next"), onPressed: () {}),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
