support
numberOf :rule :count =
	[0]:c [OrderedCollection new]:xs
	([c+1]:c ?[c <= count] apply(rule):x [xs add: x])*
	?[c = (count + 1)] -> [xs]
