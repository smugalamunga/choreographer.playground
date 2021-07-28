init:
	mkdir -p pb/cpp
	mkdir -p pb/java
	mkdir -p pb/dart

generate:
	protoc --go_out=${GOPATH}/src \
	--go-grpc_out=${GOPATH}/src \
	--services_out=${GOPATH}/src \
	--dart_out=grpc:pb/dart \
	--plugin=protoc-gen-grpc=${GOPATH}/bin/grpc_cpp_plugin \
	--plugin=protoc-gen-grpc-java=${GOPATH}/bin/protoc-gen-grpc-java \
	--grpc_out=pb/cpp \
	--java_out=pb/java \
	--grpc-java_out=pb/java \
	-I=. \
	-I=${GOPATH}/src/github.com/envoyproxy/protoc-gen-validate \
	--validate_out="lang=go:${GOPATH}/src" \
	proto/*.proto

clean:
	rm -rf pb/*
	rm -rf cmd
	rm -rf pkg/services/choreographer*

clean-certificates:
        rm certificates/*.pem
        rm certificates/*.srl

generate-certificates:
        openssl req -x509 -newkey rsa:4096 -days 365 -nodes -keyout certificates/ca-key.pem -out certificates/ca-cert.pem -subj "/C=US/ST=CA/L=Woodland/O=smugalamunga.com/OU=aoto/CN=*.smugalamunga.com/emailAddress=jkurisu@gmail.com"
        openssl req -newkey rsa:4096 -nodes -keyout certificates/server-key.pem -out certificates/server-req.pem -subj "/C=US/ST=CA/L=Woodland/O=smugalamunga.com/OU=aoto/CN=*.aotosystems.com/emailAddress=jkurisu@gmail.com"
        openssl x509 -req -in certificates/server-req.pem -days 60 -CA certificates/ca-cert.pem -CAkey certificates/ca-key.pem -CAcreateserial -out certificates/server-cert.pem -extfile certificates/server-ext.conf
        openssl verify -CAfile certificates/ca-cert.pem certificates/server-cert.pem

