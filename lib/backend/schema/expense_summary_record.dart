import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseSummaryRecord extends FirestoreRecord {
  ExpenseSummaryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  bool hasLevel() => _level != null;

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
    _count = castToType<int>(snapshotData['count']);
    _department = snapshotData['department'] as String?;
    _level = castToType<int>(snapshotData['level']);
    _status = castToType<int>(snapshotData['status']);
    _updateDate = snapshotData['update_date'] as DateTime?;
    _updateDateLabel = snapshotData['update_date_label'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expense_summary');

  static Stream<ExpenseSummaryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpenseSummaryRecord.fromSnapshot(s));

  static Future<ExpenseSummaryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExpenseSummaryRecord.fromSnapshot(s));

  static ExpenseSummaryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpenseSummaryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpenseSummaryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpenseSummaryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpenseSummaryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpenseSummaryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExpenseSummaryRecordData({
  int? count,
  String? department,
  int? level,
  int? status,
  DateTime? updateDate,
  String? updateDateLabel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'count': count,
      'department': department,
      'level': level,
      'status': status,
      'update_date': updateDate,
      'update_date_label': updateDateLabel,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExpenseSummaryRecordDocumentEquality
    implements Equality<ExpenseSummaryRecord> {
  const ExpenseSummaryRecordDocumentEquality();

  @override
  bool equals(ExpenseSummaryRecord? e1, ExpenseSummaryRecord? e2) {
    return e1?.count == e2?.count &&
        e1?.department == e2?.department &&
        e1?.level == e2?.level &&
        e1?.status == e2?.status &&
        e1?.updateDate == e2?.updateDate &&
        e1?.updateDateLabel == e2?.updateDateLabel;
  }

  @override
  int hash(ExpenseSummaryRecord? e) => const ListEquality().hash([
        e?.count,
        e?.department,
        e?.level,
        e?.status,
        e?.updateDate,
        e?.updateDateLabel
      ]);

  @override
  bool isValidKey(Object? o) => o is ExpenseSummaryRecord;
}
