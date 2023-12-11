import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SummaryDiabetesRecord extends FirestoreRecord {
  SummaryDiabetesRecord._(
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
      FirebaseFirestore.instance.collection('summary_diabetes');

  static Stream<SummaryDiabetesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SummaryDiabetesRecord.fromSnapshot(s));

  static Future<SummaryDiabetesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SummaryDiabetesRecord.fromSnapshot(s));

  static SummaryDiabetesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SummaryDiabetesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SummaryDiabetesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SummaryDiabetesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SummaryDiabetesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SummaryDiabetesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSummaryDiabetesRecordData({
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

class SummaryDiabetesRecordDocumentEquality
    implements Equality<SummaryDiabetesRecord> {
  const SummaryDiabetesRecordDocumentEquality();

  @override
  bool equals(SummaryDiabetesRecord? e1, SummaryDiabetesRecord? e2) {
    return e1?.department == e2?.department &&
        e1?.totalRisk == e2?.totalRisk &&
        e1?.count == e2?.count &&
        e1?.evaluated == e2?.evaluated &&
        e1?.status == e2?.status &&
        e1?.updateDate == e2?.updateDate &&
        e1?.updateDateLabel == e2?.updateDateLabel;
  }

  @override
  int hash(SummaryDiabetesRecord? e) => const ListEquality().hash([
        e?.department,
        e?.totalRisk,
        e?.count,
        e?.evaluated,
        e?.status,
        e?.updateDate,
        e?.updateDateLabel
      ]);

  @override
  bool isValidKey(Object? o) => o is SummaryDiabetesRecord;
}
