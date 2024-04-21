Extension { #name : #GtHome }

{ #category : #'*PaperExplainableSystemsVissoft2022' }
GtHome >> explainableSystemsSection [
	<gtHomeSection>
	<gtExample>
	<noTest>
	^ VISSOFTHomeSection new
		priority: 10;
		yourself
]

{ #category : #'*PaperExplainableSystemsVissoft2022' }
GtHome >> moldableExceptionsSection [
	<gtHomeSection>
	<gtExample>
	<noTest>
	^ MEHomeSection new
		priority: 10;
		yourself
]
