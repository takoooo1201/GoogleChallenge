import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarRoomRecord extends FirestoreRecord {
  CarRoomRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "origin" field.
  String? _origin;
  String get origin => _origin ?? '';
  bool hasOrigin() => _origin != null;

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  bool hasDestination() => _destination != null;

  // "maxPassengers" field.
  int? _maxPassengers;
  int get maxPassengers => _maxPassengers ?? 0;
  bool hasMaxPassengers() => _maxPassengers != null;

  // "curPassengers" field.
  int? _curPassengers;
  int get curPassengers => _curPassengers ?? 0;
  bool hasCurPassengers() => _curPassengers != null;

  // "hour" field.
  String? _hour;
  String get hour => _hour ?? '';
  bool hasHour() => _hour != null;

  // "min" field.
  String? _min;
  String get min => _min ?? '';
  bool hasMin() => _min != null;

  // "man" field.
  bool? _man;
  bool get man => _man ?? false;
  bool hasMan() => _man != null;

  // "woman" field.
  bool? _woman;
  bool get woman => _woman ?? false;
  bool hasWoman() => _woman != null;

  // "midway" field.
  bool? _midway;
  bool get midway => _midway ?? false;
  bool hasMidway() => _midway != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "passengers" field.
  List<DocumentReference>? _passengers;
  List<DocumentReference> get passengers => _passengers ?? const [];
  bool hasPassengers() => _passengers != null;

  // "test" field.
  List<String>? _test;
  List<String> get test => _test ?? const [];
  bool hasTest() => _test != null;

  // "womanNum" field.
  int? _womanNum;
  int get womanNum => _womanNum ?? 0;
  bool hasWomanNum() => _womanNum != null;

  // "manNum" field.
  int? _manNum;
  int get manNum => _manNum ?? 0;
  bool hasManNum() => _manNum != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "originName" field.
  String? _originName;
  String get originName => _originName ?? '';
  bool hasOriginName() => _originName != null;

  // "destinName" field.
  String? _destinName;
  String get destinName => _destinName ?? '';
  bool hasDestinName() => _destinName != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _origin = snapshotData['origin'] as String?;
    _destination = snapshotData['destination'] as String?;
    _maxPassengers = castToType<int>(snapshotData['maxPassengers']);
    _curPassengers = castToType<int>(snapshotData['curPassengers']);
    _hour = snapshotData['hour'] as String?;
    _min = snapshotData['min'] as String?;
    _man = snapshotData['man'] as bool?;
    _woman = snapshotData['woman'] as bool?;
    _midway = snapshotData['midway'] as bool?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _passengers = getDataList(snapshotData['passengers']);
    _test = getDataList(snapshotData['test']);
    _womanNum = castToType<int>(snapshotData['womanNum']);
    _manNum = castToType<int>(snapshotData['manNum']);
    _date = snapshotData['date'] as String?;
    _originName = snapshotData['originName'] as String?;
    _destinName = snapshotData['destinName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carRoom');

  static Stream<CarRoomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarRoomRecord.fromSnapshot(s));

  static Future<CarRoomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarRoomRecord.fromSnapshot(s));

  static CarRoomRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarRoomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarRoomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarRoomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarRoomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarRoomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarRoomRecordData({
  String? name,
  String? origin,
  String? destination,
  int? maxPassengers,
  int? curPassengers,
  String? hour,
  String? min,
  bool? man,
  bool? woman,
  bool? midway,
  DocumentReference? owner,
  int? womanNum,
  int? manNum,
  String? date,
  String? originName,
  String? destinName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'origin': origin,
      'destination': destination,
      'maxPassengers': maxPassengers,
      'curPassengers': curPassengers,
      'hour': hour,
      'min': min,
      'man': man,
      'woman': woman,
      'midway': midway,
      'owner': owner,
      'womanNum': womanNum,
      'manNum': manNum,
      'date': date,
      'originName': originName,
      'destinName': destinName,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarRoomRecordDocumentEquality implements Equality<CarRoomRecord> {
  const CarRoomRecordDocumentEquality();

  @override
  bool equals(CarRoomRecord? e1, CarRoomRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.origin == e2?.origin &&
        e1?.destination == e2?.destination &&
        e1?.maxPassengers == e2?.maxPassengers &&
        e1?.curPassengers == e2?.curPassengers &&
        e1?.hour == e2?.hour &&
        e1?.min == e2?.min &&
        e1?.man == e2?.man &&
        e1?.woman == e2?.woman &&
        e1?.midway == e2?.midway &&
        e1?.owner == e2?.owner &&
        listEquality.equals(e1?.passengers, e2?.passengers) &&
        listEquality.equals(e1?.test, e2?.test) &&
        e1?.womanNum == e2?.womanNum &&
        e1?.manNum == e2?.manNum &&
        e1?.date == e2?.date &&
        e1?.originName == e2?.originName &&
        e1?.destinName == e2?.destinName;
  }

  @override
  int hash(CarRoomRecord? e) => const ListEquality().hash([
        e?.name,
        e?.origin,
        e?.destination,
        e?.maxPassengers,
        e?.curPassengers,
        e?.hour,
        e?.min,
        e?.man,
        e?.woman,
        e?.midway,
        e?.owner,
        e?.passengers,
        e?.test,
        e?.womanNum,
        e?.manNum,
        e?.date,
        e?.originName,
        e?.destinName
      ]);

  @override
  bool isValidKey(Object? o) => o is CarRoomRecord;
}
