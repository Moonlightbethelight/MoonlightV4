import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Tracks for improvement
class ThemesRecord extends FirestoreRecord {
  ThemesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TrackName" field.
  String? _trackName;
  String get trackName => _trackName ?? '';
  bool hasTrackName() => _trackName != null;

  void _initializeFields() {
    _trackName = snapshotData['TrackName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Themes');

  static Stream<ThemesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ThemesRecord.fromSnapshot(s));

  static Future<ThemesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ThemesRecord.fromSnapshot(s));

  static ThemesRecord fromSnapshot(DocumentSnapshot snapshot) => ThemesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ThemesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ThemesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ThemesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ThemesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createThemesRecordData({
  String? trackName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TrackName': trackName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ThemesRecordDocumentEquality implements Equality<ThemesRecord> {
  const ThemesRecordDocumentEquality();

  @override
  bool equals(ThemesRecord? e1, ThemesRecord? e2) {
    return e1?.trackName == e2?.trackName;
  }

  @override
  int hash(ThemesRecord? e) => const ListEquality().hash([e?.trackName]);

  @override
  bool isValidKey(Object? o) => o is ThemesRecord;
}
