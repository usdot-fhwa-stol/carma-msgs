#
# DataSourceInfo.msg
#
# J2735 2024 message format.
#

# DataSourceInfo ::= ENUMERATED { measured, derived, ... }

uint8 MEASURED = 0
uint8 DERIVED = 1

uint8 data_source_info
