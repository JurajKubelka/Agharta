announcing
deliver: aMQTTPacket
	| contents |
	contents := AGHMQTTJSONReader new fromByteArray: aMQTTPacket contents.
	contents accept: self