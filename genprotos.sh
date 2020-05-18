PROTOC=protoc
PLUGIN=gogo

google_protbuf_replacement=\
Mgoogle/api/annotations.proto=github.com/gogo/googleapis/google/api,\
Mgoogle/protobuf/any.proto=github.com/gogo/protobuf/types,\
Mgoogle/protobuf/descriptor.proto=github.com/gogo/protobuf/protoc-gen-gogo/descriptor,\
Mgoogle/protobuf/duration.proto=github.com/gogo/protobuf/types,\
Mgoogle/protobuf/empty.proto=github.com/gogo/protobuf/types,\
Mgoogle/protobuf/struct.proto=github.com/gogo/protobuf/types,\
Mgoogle/protobuf/timestamp.proto=github.com/gogo/protobuf/types,\
Mgoogle/protobuf/wrappers.proto=github.com/gogo/protobuf/types,\
Mgoogle/protobuf/field_mask.proto=github.com/gogo/protobuf/types,\
Ma/a.proto=github.com/robfig/gogofast-repro/pb/a


$PROTOC --proto_path=./ --${PLUGIN}_out=$genbase:. a/a.proto
$PROTOC --proto_path=./ --${PLUGIN}_out=$genbase:. b/b.proto

rm -rf pb
mv github.com/robfig/gogofast-repro/pb .
