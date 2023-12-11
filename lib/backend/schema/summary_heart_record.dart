import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SummaryHeartRecord extends FirestoreRecord {
  SummaryHeartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "total_risk" field.
  double? _totalRisk;
  double get totalRisk => _totalRisk ?? 0.0;
  bool hasTotalRisk() => _totalRisk != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  // "evaluated" field.
  int? _evaluated;
  int get evaluated => _evaluated ?? 0;
  bool hasEvaluated() => _evaluated != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "update_date" field.
  DateTime? _updateDate;
  DateTime? get updateDate => _updateDate;
  bool hasUpdateDate() => _updateDate != null;

  // "update_date_label" field.
  String? _updateDateLabel;
  String get updateDateLabel => _updateDateLabel ?? '';
  bool hasUpdateDateLabel() => _updateDateLabel != null;

  void _initializeFields() {
    _department = snapshotData['department'] as String?;
    _totalRisk = castToType<double>(snapshotData['total_risk']);
    _count = castToType<int>(snapshotData['count']);
    _evaluated = castToType<int>(snapshotData['evaluated']);
    _status = castToType<int>(snapshotData['status']);
    _updateDate = snapshotData['update_date'] as DateTime?;
    _updateDateLabel = snapshotData['update_date_label'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('summary_heart');

  static Stream<SummaryHeartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SummaryHeartRecord.fromSnapshot(s));

  static Future<SummaryHeartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SummaryHeartRecord.fromSnapshot(s));

  static SummaryHeartRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SummaryHeartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SummaryHeartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SummaryHeartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SummaryHeartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SummaryHeartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSummaryHeartRecordData({
  String? department,
  double? totalRisk,
  int? count,
  int? evaluated,
  int? status,
  DateTime? updateDate,
  String? updateDateLabel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'department': department,
      'total_risk': totalRisk,
      'count': count,
      'evaluated': evaluated,
      'status': status,
      'update_date': updateDate,
      'update_date_label': updateDateLabel,
    }.withoutNulls,
  );

  return firestoreData;
}

class SummaryHeartRecordDocumentEquality
    implements Equality<SummaryHeartRecord> {
  const SummaryHeartRecordDocumentEquality();

  @override
  bool equals(SummaryHeartRecord? e1, SummaryHeartRecord? e2) {
    return e1?.department == e2?.department &&
        e1?.totalRisk == e2?.totalRisk &&
        e1?.count == e2?.count &&
        e1?.evaluated == e2?.evaluated &&
        e1?.status == e2?.status &&
        e1?.updateDate == e2?.updateDate &&
        e1?.updateDateLabel == e2?.updateDateLabel;
  }

  @override
  int hash(SummaryHeartRecord? e) => const ListEquality().hash([
        e?.department,
        e?.totalRisk,
        e?.count,
        e?.evaluated,
        e?.status,
        e?.updateDate,
        e?.updateDateLabel
      ]);

  @override
  bool isValidKey(Object? o) => o is SummaryHeartRecord;
}
