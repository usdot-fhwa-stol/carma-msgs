#
# ClassificationConfidence.msg
#
# J3224 2020 message format.
#

# ClassificationConfidence ::= INTEGER (0..101)

uint8 classification_confidence

uint8 MIN_CLASSIFICATION_CONFIDENCE = 0
uint8 MAX_CLASSIFICATION_CONFIDENCE = 101