import 'package:ishuriryacu/core/Models/Announcement.dart';
import 'package:ishuriryacu/core/enums/ViewState.dart';
import 'package:ishuriryacu/core/services/AnnouncementServices.dart';
import 'package:ishuriryacu/core/viewmodel/BaseModel.dart';
import 'package:ishuriryacu/locator.dart';

class CreateAnnouncementModel extends BaseModel {
  AnnouncementServices announcementServices = locator<AnnouncementServices>();

  getUserData() async {
    setState(ViewState.Busy);
    await announcementServices.init();
    setState(ViewState.Idle);
  }

  Future postAnnouncement(Announcement announcement) async {
    setState(ViewState.Busy);
    await announcementServices.postAnnouncement(announcement);
    setState(ViewState.Idle);
  }

  // @override
  // void dispose() {
  //   if (state == ViewState.Idle && state2 == ViewState.Idle) {
  //     super.dispose();
  //   }
  // }
}
