writing
writeOn: writeStream
	"Write a JSON representation of me on binaryStream"
	writeStream nextPutAll: self id asString