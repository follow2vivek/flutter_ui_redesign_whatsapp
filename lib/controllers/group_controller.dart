import 'package:whatsapp_redesign/models/models.dart';
import 'package:whatsapp_redesign/widgets/widgets.dart';

class GroupController {

  var groupList = [
    GroupListModel(
      widget: OnlineOfflineWidget(isOnline: true),
      name: 'Vivek Sharma',
      status: 'Available'
    ),
     GroupListModel(
      widget: OnlineOfflineWidget(isOnline: false),
      name: 'Riha Nob',
      status: 'Only for call'
    ),
    GroupListModel(
      widget: OnlineOfflineWidget(isOnline: false),
      name: 'Json Ttak',
      status: 'Hey there! I am using whatsapp'
    ),
    GroupListModel(
      widget: OnlineOfflineWidget(isOnline: true),
      name: 'Jim Zhuan',
      status: 'A bad attitude is plane tire if you'
    )
  ];
}