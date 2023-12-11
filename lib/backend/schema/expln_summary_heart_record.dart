import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExplnSummaryHeartRecord extends FirestoreRecord {
  ExplnSummaryHeartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  bool hasType() => _type != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  bool hasValue() => _value != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _type = castToType<int>(snapshotData['type']);
    _value = castToType<double>(snapshotData['value']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expln_summary_heart');

  static Stream<ExplnSummaryHeartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExplnSummaryHeartRecord.fromSnapshot(s));

  static Future<ExplnSummaryHeartRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ExplnSummaryHeartRecord.fromSnapshot(s));

  static ExplnSummaryHeartRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExplnSummaryHeartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExplnSummaryHeartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExplnSummaryHeartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExplnSummaryHeartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExplnSummaryHeartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExplnSummaryHeartRecordData({
  String? name,
  int? type,
  double? value,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'type': type,
      'value': value,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExplnSummaryHeartRecordDocumentEquality
    implements Equality<ExplnSummaryHeartRecord> {
  const ExplnSummaryHeartRecordDocumentEquality();

  @override
  bool equals(ExplnSummaryHeartRecord? e1, ExplnSummaryHeartRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.type == e2?.type &&
        e1?.value == e2?.value;
  }

  @override
  int hash(ExplnSummaryHeartRecord? e) =>
      const ListEquality().hash([e?.name, e?.type, e?.value]);

  @override
  bool isValidKey(Object? o) => o is ExplnSummaryHeartRecord;
}
