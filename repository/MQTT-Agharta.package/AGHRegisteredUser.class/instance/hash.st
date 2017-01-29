comparing
hash
	^ ((self class hash bitXor: self nickname hash)
		bitXor: self privateId hash)
			bitXor: self publicId hash