import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpO22Record extends FirestoreRecord {
  SpO22Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "time" field.
  int? _time;
  int get time => _time ?? 0;
  bool hasTime() => _time != null;

  // "spo2" field.
  int? _spo2;
  int get spo2 => _spo2 ?? 0;
  bool hasSpo2() => _spo2 != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  void _initializeFields() {
    _time = castToType<int>(snapshotData['time']);
    _spo2 = castToType<int>(snapshotData['spo2']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SpO22');

  static Stream<SpO22Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpO22Record.fromSnapshot(s));

  static Future<SpO22Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpO22Record.fromSnapshot(s));

  static SpO22Record fromSnapshot(DocumentSnapshot snapshot) => SpO22Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpO22Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpO22Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpO22Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpO22Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpO22RecordData({
  int? time,
  int? spo2,
  DateTime? dateTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'spo2': spo2,
      'dateTime': dateTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpO22RecordDocumentEquality implements Equality<SpO22Record> {
  const SpO22RecordDocumentEquality();

  @override
  bool equals(SpO22Record? e1, SpO22Record? e2) {
    return e1?.time == e2?.time &&
        e1?.spo2 == e2?.spo2 &&
        e1?.dateTime == e2?.dateTime;
  }

  @override
  int hash(SpO22Record? e) =>
      const ListEquality().hash([e?.time, e?.spo2, e?.dateTime]);

  @override
  bool isValidKey(Object? o) => o is SpO22Record;
}
