PROTOC=protoc
PLUGIN=gogo

google_protbuf_replacement=Ma/a.proto=github.com/robfig/gogofast-repro/pb/a

$PROTOC --proto_path=./ --${PLUGIN}_out=. a/a.proto
$PROTOC --proto_path=./ --${PLUGIN}_out=. b/b.proto

rm -rf pb
mv github.com/robfig/gogofast-repro/pb .
