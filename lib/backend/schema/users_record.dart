import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// User database
class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "UserAccessLevel" field.
  String? _userAccessLevel;
  String get userAccessLevel => _userAccessLevel ?? '';
  bool hasUserAccessLevel() => _userAccessLevel != null;

  // "UserTodayQuote" field.
  DocumentReference? _userTodayQuote;
  DocumentReference? get userTodayQuote => _userTodayQuote;
  bool hasUserTodayQuote() => _userTodayQuote != null;

  // "UserDeviseToken" field.
  String? _userDeviseToken;
  String get userDeviseToken => _userDeviseToken ?? '';
  bool hasUserDeviseToken() => _userDeviseToken != null;

  // "UserTrack" field.
  DocumentReference? _userTrack;
  DocumentReference? get userTrack => _userTrack;
  bool hasUserTrack() => _userTrack != null;

  // "IsPremium" field.
  bool? _isPremium;
  bool get isPremium => _isPremium ?? false;
  bool hasIsPremium() => _isPremium != null;

  // "Notiftime" field.
  String? _notiftime;
  String get notiftime => _notiftime ?? '';
  bool hasNotiftime() => _notiftime != null;

  // "oneSignalId" field.
  String? _oneSignalId;
  String get oneSignalId => _oneSignalId ?? '';
  bool hasOneSignalId() => _oneSignalId != null;

  // "UserTemplatePreference" field.
  String? _userTemplatePreference;
  String get userTemplatePreference => _userTemplatePreference ?? '';
  bool hasUserTemplatePreference() => _userTemplatePreference != null;

  // "UserTemplateText" field.
  Color? _userTemplateText;
  Color? get userTemplateText => _userTemplateText;
  bool hasUserTemplateText() => _userTemplateText != null;

  // "UserTemplateTextSize" field.
  int? _userTemplateTextSize;
  int get userTemplateTextSize => _userTemplateTextSize ?? 0;
  bool hasUserTemplateTextSize() => _userTemplateTextSize != null;

  // "fcmToken" field.
  String? _fcmToken;
  String get fcmToken => _fcmToken ?? '';
  bool hasFcmToken() => _fcmToken != null;

  // "TimeZone" field.
  String? _timeZone;
  String get timeZone => _timeZone ?? '';
  bool hasTimeZone() => _timeZone != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userAccessLevel = snapshotData['UserAccessLevel'] as String?;
    _userTodayQuote = snapshotData['UserTodayQuote'] as DocumentReference?;
    _userDeviseToken = snapshotData['UserDeviseToken'] as String?;
    _userTrack = snapshotData['UserTrack'] as DocumentReference?;
    _isPremium = snapshotData['IsPremium'] as bool?;
    _notiftime = snapshotData['Notiftime'] as String?;
    _oneSignalId = snapshotData['oneSignalId'] as String?;
    _userTemplatePreference = snapshotData['UserTemplatePreference'] as String?;
    _userTemplateText = getSchemaColor(snapshotData['UserTemplateText']);
    _userTemplateTextSize =
        castToType<int>(snapshotData['UserTemplateTextSize']);
    _fcmToken = snapshotData['fcmToken'] as String?;
    _timeZone = snapshotData['TimeZone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? userAccessLevel,
  DocumentReference? userTodayQuote,
  String? userDeviseToken,
  DocumentReference? userTrack,
  bool? isPremium,
  String? notiftime,
  String? oneSignalId,
  String? userTemplatePreference,
  Color? userTemplateText,
  int? userTemplateTextSize,
  String? fcmToken,
  String? timeZone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'UserAccessLevel': userAccessLevel,
      'UserTodayQuote': userTodayQuote,
      'UserDeviseToken': userDeviseToken,
      'UserTrack': userTrack,
      'IsPremium': isPremium,
      'Notiftime': notiftime,
      'oneSignalId': oneSignalId,
      'UserTemplatePreference': userTemplatePreference,
      'UserTemplateText': userTemplateText,
      'UserTemplateTextSize': userTemplateTextSize,
      'fcmToken': fcmToken,
      'TimeZone': timeZone,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userAccessLevel == e2?.userAccessLevel &&
        e1?.userTodayQuote == e2?.userTodayQuote &&
        e1?.userDeviseToken == e2?.userDeviseToken &&
        e1?.userTrack == e2?.userTrack &&
        e1?.isPremium == e2?.isPremium &&
        e1?.notiftime == e2?.notiftime &&
        e1?.oneSignalId == e2?.oneSignalId &&
        e1?.userTemplatePreference == e2?.userTemplatePreference &&
        e1?.userTemplateText == e2?.userTemplateText &&
        e1?.userTemplateTextSize == e2?.userTemplateTextSize &&
        e1?.fcmToken == e2?.fcmToken &&
        e1?.timeZone == e2?.timeZone;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.userAccessLevel,
        e?.userTodayQuote,
        e?.userDeviseToken,
        e?.userTrack,
        e?.isPremium,
        e?.notiftime,
        e?.oneSignalId,
        e?.userTemplatePreference,
        e?.userTemplateText,
        e?.userTemplateTextSize,
        e?.fcmToken,
        e?.timeZone
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
