import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonRecord extends FirestoreRecord {
  PersonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "employee_id" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  bool hasEmployeeId() => _employeeId != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "ct_email" field.
  String? _ctEmail;
  String get ctEmail => _ctEmail ?? '';
  bool hasCtEmail() => _ctEmail != null;

  // "health_ref" field.
  DocumentReference? _healthRef;
  DocumentReference? get healthRef => _healthRef;
  bool hasHealthRef() => _healthRef != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _firstname = snapshotData['firstname'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _employeeId = snapshotData['employee_id'] as String?;
    _department = snapshotData['department'] as String?;
    _position = snapshotData['position'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _ctEmail = snapshotData['ct_email'] as String?;
    _healthRef = snapshotData['health_ref'] as DocumentReference?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('person');

  static Stream<PersonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PersonRecord.fromSnapshot(s));

  static Future<PersonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PersonRecord.fromSnapshot(s));

  static PersonRecord fromSnapshot(DocumentSnapshot snapshot) => PersonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PersonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PersonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PersonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PersonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPersonRecordData({
  String? firstname,
  String? lastname,
  String? employeeId,
  String? department,
  String? position,
  String? photoUrl,
  String? displayName,
  String? phoneNumber,
  String? ctEmail,
  DocumentReference? healthRef,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'firstname': firstname,
      'lastname': lastname,
      'employee_id': employeeId,
      'department': department,
      'position': position,
      'photo_url': photoUrl,
      'display_name': displayName,
      'phone_number': phoneNumber,
      'ct_email': ctEmail,
      'health_ref': healthRef,
      'user_ref': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class PersonRecordDocumentEquality implements Equality<PersonRecord> {
  const PersonRecordDocumentEquality();

  @override
  bool equals(PersonRecord? e1, PersonRecord? e2) {
    return e1?.firstname == e2?.firstname &&
        e1?.lastname == e2?.lastname &&
        e1?.employeeId == e2?.employeeId &&
        e1?.department == e2?.department &&
        e1?.position == e2?.position &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.ctEmail == e2?.ctEmail &&
        e1?.healthRef == e2?.healthRef &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(PersonRecord? e) => const ListEquality().hash([
        e?.firstname,
        e?.lastname,
        e?.employeeId,
        e?.department,
        e?.position,
        e?.photoUrl,
        e?.displayName,
        e?.phoneNumber,
        e?.ctEmail,
        e?.healthRef,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is PersonRecord;
}
