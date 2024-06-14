Class {
	#name : 'MfPerformanceNbStepsElement',
	#superclass : 'ToElement',
	#instVars : [
		'label',
		'nbSteps',
		'text'
	],
	#category : 'Mooflod-MfPerformanceNbSteps',
	#package : 'Mooflod',
	#tag : 'MfPerformanceNbSteps'
}

{ #category : 'as yet unclassified' }
MfPerformanceNbStepsElement class >> exampleNbSteps [

	<script> 
	| s space |
	space := BlSpace new.
	space root layout: BlFlowLayout horizontal.
	space toTheme: MfMooflodTheme new.
	s := self new.
	s addSteps: 189.
	s transformDo: [ :c | c translateBy: 200 @ 150 ].

	space root addChild: s.
	space show.
	^ s
]

{ #category : 'adding' }
MfPerformanceNbStepsElement >> addSteps: aNbOfSteps [

nbSteps := aNbOfSteps .
self initializeStepsLabel 
]

{ #category : 'initialization' }
MfPerformanceNbStepsElement >> initialize [

	super initialize.
	self geometry: (BlRoundedRectangleGeometry cornerRadius: 18).
	self size: 350 @ 160.
	self background: Color black.
	self padding: (BlInsets all: 30)
]

{ #category : 'initialization' }
MfPerformanceNbStepsElement >> initializeStepsLabel [

	text := BlTextElement new.
	text text:
		('Performance elapsed number of steps' asRopedText attributes:
			 { (BlTextForegroundAttribute paint: Color green) }).
	text text fontSize: 19.
	text constraintsDo: [ :c |
		c frame horizontal alignCenter.
		c frame vertical alignTop ].



	label := BlTextElement new.
	label text: (nbSteps asString asRopedText attributes:
			 { (BlTextForegroundAttribute paint: Color green) }).
	label text fontSize: 22.
	label constraintsDo: [ :c |
		c frame horizontal alignCenter.
		c frame vertical alignCenter ].
	self addChild: label.
	self addChild: text
]

{ #category : 'accessing' }
MfPerformanceNbStepsElement >> label [ 

^label
]

{ #category : 'accessing' }
MfPerformanceNbStepsElement >> nbSteps [

^nbSteps
]

{ #category : 'accessing' }
MfPerformanceNbStepsElement >> text [
^text
]