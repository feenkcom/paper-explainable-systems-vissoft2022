Class {
	#name : #BaselineOfPaperExplainableSystemsVissoft2022,
	#superclass : #BaselineOf,
	#category : #BaselineOfPaperExplainableSystemsVissoft2022
}

{ #category : #loading }
BaselineOfPaperExplainableSystemsVissoft2022 class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'paper-explainable-systems-vissoft2022' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfPaperExplainableSystemsVissoft2022 >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'PaperExplainableSystemsVissoft2022'
		]
]
