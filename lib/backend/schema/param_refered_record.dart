import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParamReferedRecord extends FirestoreRecord {
  ParamReferedRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "time" field.
  int? _time;
  int get time => _time ?? 0;
  bool hasTime() => _time != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "variable" field.
  double? _variable;
  double get variable => _variable ?? 0.0;
  bool hasVariable() => _variable != null;

  // "create_by" field.
  DocumentReference? _createBy;
  DocumentReference? get createBy => _createBy;
  bool hasCreateBy() => _createBy != null;

  void _initializeFields() {
    _time = castToType<int>(snapshotData['time']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
    _variable = castToType<double>(snapshotData['variable']);
    _createBy = snapshotData['create_by'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('param_refered');

  static Stream<ParamReferedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParamReferedRecord.fromSnapshot(s));

  static Future<ParamReferedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParamReferedRecord.fromSnapshot(s));

  static ParamReferedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParamReferedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParamReferedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParamReferedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParamReferedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParamReferedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParamReferedRecordData({
  int? time,
  DateTime? dateTime,
  double? variable,
  DocumentReference? createBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'dateTime': dateTime,
      'variable': variable,
      'create_by': createBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParamReferedRecordDocumentEquality
    implements Equality<ParamReferedRecord> {
  const ParamReferedRecordDocumentEquality();

  @override
  bool equals(ParamReferedRecord? e1, ParamReferedRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.dateTime == e2?.dateTime &&
        e1?.variable == e2?.variable &&
        e1?.createBy == e2?.createBy;
  }

  @override
  int hash(ParamReferedRecord? e) => const ListEquality()
      .hash([e?.time, e?.dateTime, e?.variable, e?.createBy]);

  @override
  bool isValidKey(Object? o) => o is ParamReferedRecord;
}
