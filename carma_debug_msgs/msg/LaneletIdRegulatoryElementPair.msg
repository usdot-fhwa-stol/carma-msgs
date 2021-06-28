# LaneletIdRegulatoryElementPair.msg

# This is a debug message used to reflect the data type std::pair<lanelet::Id, lanelet::RegulatoryElementPtr>

# The id of the lanelet which the regulatory element will be applied to
uint64 lanelet_id

# The regulatory element to be added
RegulatoryElement element