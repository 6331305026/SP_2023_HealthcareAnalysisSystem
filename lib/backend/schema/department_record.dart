import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepartmentRecord extends FirestoreRecord {
  DepartmentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _status = castToType<int>(snapshotData['status']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('department');

  static Stream<DepartmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DepartmentRecord.fromSnapshot(s));

  static Future<DepartmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DepartmentRecord.fromSnapshot(s));

  static DepartmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DepartmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DepartmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DepartmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DepartmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DepartmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDepartmentRecordData({
  String? name,
  int? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class DepartmentRecordDocumentEquality implements Equality<DepartmentRecord> {
  const DepartmentRecordDocumentEquality();

  @override
  bool equals(DepartmentRecord? e1, DepartmentRecord? e2) {
    return e1?.name == e2?.name && e1?.status == e2?.status;
  }

  @override
  int hash(DepartmentRecord? e) =>
      const ListEquality().hash([e?.name, e?.status]);

  @override
  bool isValidKey(Object? o) => o is DepartmentRecord;
}
