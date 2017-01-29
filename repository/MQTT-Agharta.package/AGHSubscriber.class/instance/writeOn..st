writing
writeOn: writeStream
	"Write a JSON representation of me on binaryStream"
	writeStream 
		nextPutAll: '{"type": "Subscriber",';
		nextPutAll: '"nickname": "';
		nextPutAll: self nickname asString;
		nextPutAll: '", "privateId": "'.
	self privateId writeOn: writeStream.
	writeStream nextPutAll: '", "publicId": "'.
	self publicId writeOn: writeStream.
	writeStream nextPutAll: '"}'