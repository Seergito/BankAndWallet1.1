import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConceptosRecord extends FirestoreRecord {
  ConceptosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('conceptos')
          : FirebaseFirestore.instance.collectionGroup('conceptos');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('conceptos').doc();

  static Stream<ConceptosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConceptosRecord.fromSnapshot(s));

  static Future<ConceptosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConceptosRecord.fromSnapshot(s));

  static ConceptosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConceptosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConceptosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConceptosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConceptosRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createConceptosRecordData({
  String? nombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
    }.withoutNulls,
  );

  return firestoreData;
}
