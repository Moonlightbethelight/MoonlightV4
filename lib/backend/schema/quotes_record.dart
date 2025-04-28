import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Quotes for different tracks
class QuotesRecord extends FirestoreRecord {
  QuotesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Quotetext" field.
  String? _quotetext;
  String get quotetext => _quotetext ?? '';
  bool hasQuotetext() => _quotetext != null;

  // "QuoteTheme" field.
  DocumentReference? _quoteTheme;
  DocumentReference? get quoteTheme => _quoteTheme;
  bool hasQuoteTheme() => _quoteTheme != null;

  // "QuoteUsed" field.
  bool? _quoteUsed;
  bool get quoteUsed => _quoteUsed ?? false;
  bool hasQuoteUsed() => _quoteUsed != null;

  // "QuoteDateAssigned" field.
  DateTime? _quoteDateAssigned;
  DateTime? get quoteDateAssigned => _quoteDateAssigned;
  bool hasQuoteDateAssigned() => _quoteDateAssigned != null;

  // "QuoteDateString" field.
  String? _quoteDateString;
  String get quoteDateString => _quoteDateString ?? '';
  bool hasQuoteDateString() => _quoteDateString != null;

  void _initializeFields() {
    _quotetext = snapshotData['Quotetext'] as String?;
    _quoteTheme = snapshotData['QuoteTheme'] as DocumentReference?;
    _quoteUsed = snapshotData['QuoteUsed'] as bool?;
    _quoteDateAssigned = snapshotData['QuoteDateAssigned'] as DateTime?;
    _quoteDateString = snapshotData['QuoteDateString'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Quotes');

  static Stream<QuotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuotesRecord.fromSnapshot(s));

  static Future<QuotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuotesRecord.fromSnapshot(s));

  static QuotesRecord fromSnapshot(DocumentSnapshot snapshot) => QuotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuotesRecordData({
  String? quotetext,
  DocumentReference? quoteTheme,
  bool? quoteUsed,
  DateTime? quoteDateAssigned,
  String? quoteDateString,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Quotetext': quotetext,
      'QuoteTheme': quoteTheme,
      'QuoteUsed': quoteUsed,
      'QuoteDateAssigned': quoteDateAssigned,
      'QuoteDateString': quoteDateString,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuotesRecordDocumentEquality implements Equality<QuotesRecord> {
  const QuotesRecordDocumentEquality();

  @override
  bool equals(QuotesRecord? e1, QuotesRecord? e2) {
    return e1?.quotetext == e2?.quotetext &&
        e1?.quoteTheme == e2?.quoteTheme &&
        e1?.quoteUsed == e2?.quoteUsed &&
        e1?.quoteDateAssigned == e2?.quoteDateAssigned &&
        e1?.quoteDateString == e2?.quoteDateString;
  }

  @override
  int hash(QuotesRecord? e) => const ListEquality().hash([
        e?.quotetext,
        e?.quoteTheme,
        e?.quoteUsed,
        e?.quoteDateAssigned,
        e?.quoteDateString
      ]);

  @override
  bool isValidKey(Object? o) => o is QuotesRecord;
}
