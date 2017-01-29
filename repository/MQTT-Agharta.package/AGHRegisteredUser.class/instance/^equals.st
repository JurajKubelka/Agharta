comparing
= anObject
	^ self class = anObject class and: [ 
		self nickname = anObject nickname and: [ 
			self privateId = anObject privateId and: [ 
				self publicId = anObject publicId ] ] ]