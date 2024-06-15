import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParametrosFisiologicosRecord extends FirestoreRecord {
  ParametrosFisiologicosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "temp1" field.
  double? _temp1;
  double get temp1 => _temp1 ?? 0.0;
  bool hasTemp1() => _temp1 != null;

  // "temp2" field.
  double? _temp2;
  double get temp2 => _temp2 ?? 0.0;
  bool hasTemp2() => _temp2 != null;

  // "frec_cardiaca" field.
  double? _frecCardiaca;
  double get frecCardiaca => _frecCardiaca ?? 0.0;
  bool hasFrecCardiaca() => _frecCardiaca != null;

  // "frec_respiratoria" field.
  double? _frecRespiratoria;
  double get frecRespiratoria => _frecRespiratoria ?? 0.0;
  bool hasFrecRespiratoria() => _frecRespiratoria != null;

  // "presionD" field.
  double? _presionD;
  double get presionD => _presionD ?? 0.0;
  bool hasPresionD() => _presionD != null;

  // "presionS" field.
  double? _presionS;
  double get presionS => _presionS ?? 0.0;
  bool hasPresionS() => _presionS != null;

  // "SpO2" field.
  int? _spO2;
  int get spO2 => _spO2 ?? 0;
  bool hasSpO2() => _spO2 != null;

  // "time" field.
  int? _time;
  int get time => _time ?? 0;
  bool hasTime() => _time != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  void _initializeFields() {
    _temp1 = castToType<double>(snapshotData['temp1']);
    _temp2 = castToType<double>(snapshotData['temp2']);
    _frecCardiaca = castToType<double>(snapshotData['frec_cardiaca']);
    _frecRespiratoria = castToType<double>(snapshotData['frec_respiratoria']);
    _presionD = castToType<double>(snapshotData['presionD']);
    _presionS = castToType<double>(snapshotData['presionS']);
    _spO2 = castToType<int>(snapshotData['SpO2']);
    _time = castToType<int>(snapshotData['time']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parametros_fisiologicos');

  static Stream<ParametrosFisiologicosRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ParametrosFisiologicosRecord.fromSnapshot(s));

  static Future<ParametrosFisiologicosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ParametrosFisiologicosRecord.fromSnapshot(s));

  static ParametrosFisiologicosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParametrosFisiologicosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParametrosFisiologicosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParametrosFisiologicosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParametrosFisiologicosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParametrosFisiologicosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParametrosFisiologicosRecordData({
  double? temp1,
  double? temp2,
  double? frecCardiaca,
  double? frecRespiratoria,
  double? presionD,
  double? presionS,
  int? spO2,
  int? time,
  DateTime? dateTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'temp1': temp1,
      'temp2': temp2,
      'frec_cardiaca': frecCardiaca,
      'frec_respiratoria': frecRespiratoria,
      'presionD': presionD,
      'presionS': presionS,
      'SpO2': spO2,
      'time': time,
      'dateTime': dateTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParametrosFisiologicosRecordDocumentEquality
    implements Equality<ParametrosFisiologicosRecord> {
  const ParametrosFisiologicosRecordDocumentEquality();

  @override
  bool equals(
      ParametrosFisiologicosRecord? e1, ParametrosFisiologicosRecord? e2) {
    return e1?.temp1 == e2?.temp1 &&
        e1?.temp2 == e2?.temp2 &&
        e1?.frecCardiaca == e2?.frecCardiaca &&
        e1?.frecRespiratoria == e2?.frecRespiratoria &&
        e1?.presionD == e2?.presionD &&
        e1?.presionS == e2?.presionS &&
        e1?.spO2 == e2?.spO2 &&
        e1?.time == e2?.time &&
        e1?.dateTime == e2?.dateTime;
  }

  @override
  int hash(ParametrosFisiologicosRecord? e) => const ListEquality().hash([
        e?.temp1,
        e?.temp2,
        e?.frecCardiaca,
        e?.frecRespiratoria,
        e?.presionD,
        e?.presionS,
        e?.spO2,
        e?.time,
        e?.dateTime
      ]);

  @override
  bool isValidKey(Object? o) => o is ParametrosFisiologicosRecord;
}
