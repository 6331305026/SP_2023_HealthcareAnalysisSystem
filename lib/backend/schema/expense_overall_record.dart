import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseOverallRecord extends FirestoreRecord {
  ExpenseOverallRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "level1" field.
  int? _level1;
  int get level1 => _level1 ?? 0;
  bool hasLevel1() => _level1 != null;

  // "level2" field.
  int? _level2;
  int get level2 => _level2 ?? 0;
  bool hasLevel2() => _level2 != null;

  // "level3" field.
  int? _level3;
  int get level3 => _level3 ?? 0;
  bool hasLevel3() => _level3 != null;

  // "level4" field.
  int? _level4;
  int get level4 => _level4 ?? 0;
  bool hasLevel4() => _level4 != null;

  // "update_date" field.
  DateTime? _updateDate;
  DateTime? get updateDate => _updateDate;
  bool hasUpdateDate() => _updateDate != null;

  void _initializeFields() {
    _department = snapshotData['department'] as String?;
    _level1 = castToType<int>(snapshotData['level1']);
    _level2 = castToType<int>(snapshotData['level2']);
    _level3 = castToType<int>(snapshotData['level3']);
    _level4 = castToType<int>(snapshotData['level4']);
    _updateDate = snapshotData['update_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expense_overall');

  static Stream<ExpenseOverallRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpenseOverallRecord.fromSnapshot(s));

  static Future<ExpenseOverallRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExpenseOverallRecord.fromSnapshot(s));

  static ExpenseOverallRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpenseOverallRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpenseOverallRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpenseOverallRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpenseOverallRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpenseOverallRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExpenseOverallRecordData({
  String? department,
  int? level1,
  int? level2,
  int? level3,
  int? level4,
  DateTime? updateDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'department': department,
      'level1': level1,
      'level2': level2,
      'level3': level3,
      'level4': level4,
      'update_date': updateDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExpenseOverallRecordDocumentEquality
    implements Equality<ExpenseOverallRecord> {
  const ExpenseOverallRecordDocumentEquality();

  @override
  bool equals(ExpenseOverallRecord? e1, ExpenseOverallRecord? e2) {
    return e1?.department == e2?.department &&
        e1?.level1 == e2?.level1 &&
        e1?.level2 == e2?.level2 &&
        e1?.level3 == e2?.level3 &&
        e1?.level4 == e2?.level4 &&
        e1?.updateDate == e2?.updateDate;
  }

  @override
  int hash(ExpenseOverallRecord? e) => const ListEquality().hash([
        e?.department,
        e?.level1,
        e?.level2,
        e?.level3,
        e?.level4,
        e?.updateDate
      ]);

  @override
  bool isValidKey(Object? o) => o is ExpenseOverallRecord;
}
