#
# ITIScodes.msg
#
# J2735 2016 message format.
#

# ITIScodes ::= INTEGER (0.. 65535)
# -- The defined list of ITIS codes is too long to list here
# -- Many smaller lists use a sub-set of these codes as defined elements
# -- Also enumerated values expressed as text constant are very common,
# -- and in many deployments the list codes are used as a shorthand for
# -- this text. Also the XML expressions commonly use a union of the
# -- code values and the textual expressions.
# -- Consult SAE J2540 for further details.

uint16 code