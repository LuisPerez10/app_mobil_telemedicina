// import 'package:jitsi_meet/feature_flag/feature_flag.dart';
// import 'package:jitsi_meet/jitsi_meet.dart';
// import 'package:jitsi_meet/jitsi_meeting_listener.dart';
// import 'package:jitsi_meet/room_name_constraint.dart';
// import 'package:jitsi_meet/room_name_constraint_type.dart';
// import 'package:flutter/cupertino.dart';

//   _joinMeeting() async {
//     // String serverUrl =
//     //     serverText.text?.trim()?.isEmpty ?? "" ? null : serverText.text;

//     try {
//       // Enable or disable any feature flag here
//       // If feature flag are not provided, default values will be used
//       // Full list of feature flags (and defaults) available in the README
//       FeatureFlag featureFlag = FeatureFlag();
//       featureFlag.welcomePageEnabled = false;
//       // Here is an example, disabling features for each platform
//       if (Platform.isAndroid) {
//         // Disable ConnectionService usage on Android to avoid issues (see README)
//         featureFlag.callIntegrationEnabled = false;
//       } else if (Platform.isIOS) {
//         // Disable PIP on iOS as it looks weird
//         featureFlag.pipEnabled = false;
//       }

//       //uncomment to modify video resolution
//       //featureFlag.resolution = FeatureFlagVideoResolution.MD_RESOLUTION;

//       // Define meetings options here
//       var options = JitsiMeetingOptions()
//         ..room = "hola"
//         ..serverURL = ""
//         ..subject = "consulta"
//         ..userDisplayName = "pepito"
//         ..userEmail = "test@gmail.com"
//         ..audioOnly = isAudioOnly
//         ..audioMuted = isAudioMuted
//         ..videoMuted = isVideoMuted
//         ..featureFlag = featureFlag;

//       debugPrint("JitsiMeetingOptions: $options");
//       await JitsiMeet.joinMeeting(
//         options,
//         listener: JitsiMeetingListener(onConferenceWillJoin: ({message}) {
//           debugPrint("${options.room} will join with message: $message");
//         }, onConferenceJoined: ({message}) {
//           debugPrint("${options.room} joined with message: $message");
//         }, onConferenceTerminated: ({message}) {
//           debugPrint("${options.room} terminated with message: $message");
//         }, onPictureInPictureWillEnter: ({message}) {
//           debugPrint("${options.room} entered PIP mode with message: $message");
//         }, onPictureInPictureTerminated: ({message}) {
//           debugPrint("${options.room} exited PIP mode with message: $message");
//         }),
//         // by default, plugin default constraints are used
//         //roomNameConstraints: new Map(), // to disable all constraints
//         //roomNameConstraints: customContraints, // to use your own constraint(s)
//       );
//     } catch (error) {
//       debugPrint("error: $error");
//     }
//   }

//    static final Map<RoomNameConstraintType, RoomNameConstraint>
//       customContraints = {
//     RoomNameConstraintType.MAX_LENGTH: new RoomNameConstraint((value) {
//       return value.trim().length <= 50;
//     }, "Maximum room name length should be 30."),
//     RoomNameConstraintType.FORBIDDEN_CHARS: new RoomNameConstraint((value) {
//       return RegExp(r"[$€£]+", caseSensitive: false, multiLine: false)
//               .hasMatch(value) ==
//           false;
//     }, "Currencies characters aren't allowed in room names."),
//   };

//   void _onConferenceWillJoin({message}) {
//     debugPrint("_onConferenceWillJoin broadcasted with message: $message");
//   }

//   void _onConferenceJoined({message}) {
//     debugPrint("_onConferenceJoined broadcasted with message: $message");
//   }

//   void _onConferenceTerminated({message}) {
//     debugPrint("_onConferenceTerminated broadcasted with message: $message");
//   }

//   void _onPictureInPictureWillEnter({message}) {
//     debugPrint("_onPictureInPictureWillEnter broadcasted with message: $message");
//   }

//   void _onPictureInPictureTerminated({message}) {
//     debugPrint("_onPictureInPictureTerminated broadcasted with message: $message");
//   }

//   _onError(error) {
//     debugPrint("_onError broadcasted: $error");
//   }
