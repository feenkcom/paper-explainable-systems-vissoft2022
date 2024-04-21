Class {
	#name : #VISSOFTHomeSection,
	#superclass : #GtHomeMultiCardSection,
	#category : #'PaperExplainableSystemsVissoft2022-Section'
}

{ #category : #card }
VISSOFTHomeSection >> explainableSystemsHomeCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'VISSOFT Invited talk';
		description: 'VISSOFT paper and talk';
		databaseName: 'feenkcom/paper-explainable-systems-vissoft2022/lepiter';
		pageName: 'VISSOFT 2022 ToC';
		priority: 10;
		assertInvariant;
		yourself
]

{ #category : #initialialize }
VISSOFTHomeSection >> sectionTitle [
	^ 'VISSOFT 2022'
]
