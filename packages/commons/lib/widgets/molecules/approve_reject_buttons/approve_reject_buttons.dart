import 'package:commons/widgets/atoms/icon/icon_w_title.dart';
import 'package:flutter/material.dart';

class ApproveRejectButtons extends StatelessWidget {
  final VoidCallback onApprove;
  final VoidCallback onReject;

  const ApproveRejectButtons({
    Key? key,
    required this.onApprove,
    required this.onReject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButtonWTitle(
          onPressed: onApprove,
          title: 'Validate',
          icon: Icons.check_circle,
          iconSize: 60.0,
        ),
        IconButtonWTitle(
          onPressed: onReject,
          title: 'Reject',
          icon: Icons.cancel_outlined,
          iconSize: 60.0,
        ),
      ],
    );
  }
}
