as yet unclassified
noteArray

	| cA dA eA fA gA aA bA oArray |
	cA := #( 26.5 36 67 40 39 68.5 36 68 41 40 ).
	dA := #( 28 65 40 39 68 40 70 39 39 ).
	eA := #( 60 39 39 68 36 70 39 39 68 ).
	fA := #( 24 39 39 68 36 70 39 39 68 36 ).
	gA := #( 26 39 68 36 70 39 39 68 36 ).
	aA := #( 29 68 36 70 39 39 68 36 70 ).
	bA := #( 62 36 70 39 39 68 36 70 39 ).
	"oArray := {
		          cA.
		          dA.
		          eA.
		          fA.
		          gA.
		          aA.
		          bA }.
	noteArray := OrderedCollection new.
	oArray do: [ :t |
		| nArray |
		nArray := OrderedCollection new.
		nOctaves timesRepeat: [ t do: [ :e | nArray add: e ] ].
		noteArray add: nArray ].

	"noteArray := {
		             cA.
		             dA.
		             eA.
		             fA.
		             gA.
		             aA.
		             bA }.
	^ noteArray