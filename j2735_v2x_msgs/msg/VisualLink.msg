#
# VisualLink.msg
#
# J2735 2024 message format.
#

# VisualLink ::= SEQUENCE {
#    urlLink IA5String (SIZE(1..500)) OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_URL_LINK = 1

string url_link
