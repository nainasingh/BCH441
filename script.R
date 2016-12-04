
# 
# ==============================================================================
# FAM20A
# setwd("<your/project/directory>")

if (!require(XML, quietly =TRUE)) {
  install.packages("XML")
  library(XML)
}


# Fetch the yeast FAM20A page from Uniprot
queryURL <- "http://www.uniprot.org/uniprot/Q96MK3"
data <- readHTMLTable(queryURL, stringsAsFactors = FALSE)



# Obviously, we would like to get the actual sequence of these domains.
# The protein sequence is however not contained in a table and we have
# to pull it out of the HTML source.

# Let's capture it:

rawHTML <- htmlParse(queryURL)  # This returns an XML node-set
str(rawHTML)

# As we found in the source, the sequence is contained in a <pre>
# element, labelled with class="sequence"

# To extract it from the XML tree in the response object,
# we use the function getNodeSet().
# getNodeSet takes two (or more) parameters: an xml tree, and a "path"
# that describes what nodes should be considered. Paths are expressed
# in the xpath language (see: http://www.w3.org/TR/xpath/). Without
# getting too technical, we use the following notation for the path:
#    //               shorthand for /descendant-or-self::node()/
#    pre()            iterates over all pre nodes and returns a list
#    comment()[<...>] returns a subset of list items, selected by <...>
#    contains(X, Y)   is true if X contains the string in Y
# Once the node set is found, we use toString.XMLNode to convert the
# node into a string.

raw <- toString.XMLNode(
  getNodeSet(rawHTML, "//pre[@class='sequence']")
)


# to assemble the sequence, we need to split this along the
# <br/> elements

lines <- strsplit(raw, "<br/>")[[1]]


# the sequence is in the even lines ...
#lines[seq(2, length(lines), by=2)]
# ...and from there we can collapse it:
#seq <- paste(lines[seq(2, length(lines), by=2)], collapse="")
# ... and remove the remaining whitespace. gsub() is the base-R
# approach, but the package stringr has more flexible functions:


FAM20A <- data[names(data)== 'interaction-table']

# ===============================================================================
# FAM20C 


# Fetch the yeast FAM20A page from Uniprot
queryURL <- "http://www.uniprot.org/uniprot/Q8IXL6"
data <- readHTMLTable(queryURL, stringsAsFactors = FALSE)


# Obviously, we would like to get the actual sequence of these domains.
# The protein sequence is however not contained in a table and we have
# to pull it out of the HTML source.

# Let's capture it:

rawHTML <- htmlParse(queryURL)  # This returns an XML node-set
str(rawHTML)

# As we found in the source, the sequence is contained in a <pre>
# element, labelled with class="sequence"

# To extract it from the XML tree in the response object,
# we use the function getNodeSet().
# getNodeSet takes two (or more) parameters: an xml tree, and a "path"
# that describes what nodes should be considered. Paths are expressed
# in the xpath language (see: http://www.w3.org/TR/xpath/). Without
# getting too technical, we use the following notation for the path:
#    //               shorthand for /descendant-or-self::node()/
#    pre()            iterates over all pre nodes and returns a list
#    comment()[<...>] returns a subset of list items, selected by <...>
#    contains(X, Y)   is true if X contains the string in Y
# Once the node set is found, we use toString.XMLNode to convert the
# node into a string.

raw <- toString.XMLNode(
  getNodeSet(rawHTML, "//pre[@class='sequence']")
)


# to assemble the sequence, we need to split this along the
# <br/> elements

lines <- strsplit(raw, "<br/>")[[1]]


# the sequence is in the even lines ...
#lines[seq(2, length(lines), by=2)]
# ...and from there we can collapse it:
#seq <- paste(lines[seq(2, length(lines), by=2)], collapse="")
# ... and remove the remaining whitespace. gsub() is the base-R
# approach, but the package stringr has more flexible functions:


FAM20C <- data[names(data)== 'interaction-table']

#===============================================================================
#ADAMTS5 

# Fetch the yeast FAM20A page from Uniprot
queryURL <- "http://www.uniprot.org/uniprot/Q9UNA0"
data <- readHTMLTable(queryURL, stringsAsFactors = FALSE)


# Obviously, we would like to get the actual sequence of these domains.
# The protein sequence is however not contained in a table and we have
# to pull it out of the HTML source.

# Let's capture it:

rawHTML <- htmlParse(queryURL)  # This returns an XML node-set
str(rawHTML)

# As we found in the source, the sequence is contained in a <pre>
# element, labelled with class="sequence"

# To extract it from the XML tree in the response object,
# we use the function getNodeSet().
# getNodeSet takes two (or more) parameters: an xml tree, and a "path"
# that describes what nodes should be considered. Paths are expressed
# in the xpath language (see: http://www.w3.org/TR/xpath/). Without
# getting too technical, we use the following notation for the path:
#    //               shorthand for /descendant-or-self::node()/
#    pre()            iterates over all pre nodes and returns a list
#    comment()[<...>] returns a subset of list items, selected by <...>
#    contains(X, Y)   is true if X contains the string in Y
# Once the node set is found, we use toString.XMLNode to convert the
# node into a string.

raw <- toString.XMLNode(
  getNodeSet(rawHTML, "//pre[@class='sequence']")
)


# to assemble the sequence, we need to split this along the
# <br/> elements

lines <- strsplit(raw, "<br/>")[[1]]


# the sequence is in the even lines ...
#lines[seq(2, length(lines), by=2)]
# ...and from there we can collapse it:
#seq <- paste(lines[seq(2, length(lines), by=2)], collapse="")
# ... and remove the remaining whitespace. gsub() is the base-R
# approach, but the package stringr has more flexible functions:


ADAMTS5 <- data[names(data)== 'interaction-table']

#=====================================================================
#COL1A1 

# Fetch the yeast FAM20A page from Uniprot
queryURL <- "http://www.uniprot.org/uniprot/P02452"
data <- readHTMLTable(queryURL, stringsAsFactors = FALSE)


# Obviously, we would like to get the actual sequence of these domains.
# The protein sequence is however not contained in a table and we have
# to pull it out of the HTML source.

# Let's capture it:

rawHTML <- htmlParse(queryURL)  # This returns an XML node-set
str(rawHTML)

# As we found in the source, the sequence is contained in a <pre>
# element, labelled with class="sequence"

# To extract it from the XML tree in the response object,
# we use the function getNodeSet().
# getNodeSet takes two (or more) parameters: an xml tree, and a "path"
# that describes what nodes should be considered. Paths are expressed
# in the xpath language (see: http://www.w3.org/TR/xpath/). Without
# getting too technical, we use the following notation for the path:
#    //               shorthand for /descendant-or-self::node()/
#    pre()            iterates over all pre nodes and returns a list
#    comment()[<...>] returns a subset of list items, selected by <...>
#    contains(X, Y)   is true if X contains the string in Y
# Once the node set is found, we use toString.XMLNode to convert the
# node into a string.

raw <- toString.XMLNode(
  getNodeSet(rawHTML, "//pre[@class='sequence']")
)


# to assemble the sequence, we need to split this along the
# <br/> elements

lines <- strsplit(raw, "<br/>")[[1]]


# the sequence is in the even lines ...
#lines[seq(2, length(lines), by=2)]
# ...and from there we can collapse it:
#seq <- paste(lines[seq(2, length(lines), by=2)], collapse="")
# ... and remove the remaining whitespace. gsub() is the base-R
# approach, but the package stringr has more flexible functions:

COL1A1 <- data[names(data)== 'interaction-table']

primary <- rbind(FAM20A, ADAMTS5)
primary <- rbind(primary, COL1A1)
primary <- rbind(primary, FAM20C)
#==============================================================
# AMBN 


# Fetch the yeast FAM20A page from Uniprot
queryURL <- "http://www.uniprot.org/uniprot/Q9NP70"
data <- readHTMLTable(queryURL, stringsAsFactors = FALSE)


# Obviously, we would like to get the actual sequence of these domains.
# The protein sequence is however not contained in a table and we have
# to pull it out of the HTML source.

# Let's capture it:

rawHTML <- htmlParse(queryURL)  # This returns an XML node-set
str(rawHTML)

# As we found in the source, the sequence is contained in a <pre>
# element, labelled with class="sequence"

# To extract it from the XML tree in the response object,
# we use the function getNodeSet().
# getNodeSet takes two (or more) parameters: an xml tree, and a "path"
# that describes what nodes should be considered. Paths are expressed
# in the xpath language (see: http://www.w3.org/TR/xpath/). Without
# getting too technical, we use the following notation for the path:
#    //               shorthand for /descendant-or-self::node()/
#    pre()            iterates over all pre nodes and returns a list
#    comment()[<...>] returns a subset of list items, selected by <...>
#    contains(X, Y)   is true if X contains the string in Y
# Once the node set is found, we use toString.XMLNode to convert the
# node into a string.

raw <- toString.XMLNode(
  getNodeSet(rawHTML, "//pre[@class='sequence']")
)


# to assemble the sequence, we need to split this along the
# <br/> elements

lines <- strsplit(raw, "<br/>")[[1]]


# the sequence is in the even lines ...
#lines[seq(2, length(lines), by=2)]
# ...and from there we can collapse it:
#seq <- paste(lines[seq(2, length(lines), by=2)], collapse="")
# ... and remove the remaining whitespace. gsub() is the base-R
# approach, but the package stringr has more flexible functions:

AMBN <- data[names(data)== 'interaction-table']
primary <- rbind(primary, AMBN)

#==============================================================
  # AMTN 
  
  
  # Fetch the yeast FAM20A page from Uniprot
  queryURL <- "http://www.uniprot.org/uniprot/Q6UX39"
data <- readHTMLTable(queryURL, stringsAsFactors = FALSE)


# Obviously, we would like to get the actual sequence of these domains.
# The protein sequence is however not contained in a table and we have
# to pull it out of the HTML source.

# Let's capture it:

rawHTML <- htmlParse(queryURL)  # This returns an XML node-set
str(rawHTML)

# As we found in the source, the sequence is contained in a <pre>
# element, labelled with class="sequence"

# To extract it from the XML tree in the response object,
# we use the function getNodeSet().
# getNodeSet takes two (or more) parameters: an xml tree, and a "path"
# that describes what nodes should be considered. Paths are expressed
# in the xpath language (see: http://www.w3.org/TR/xpath/). Without
# getting too technical, we use the following notation for the path:
#    //               shorthand for /descendant-or-self::node()/
#    pre()            iterates over all pre nodes and returns a list
#    comment()[<...>] returns a subset of list items, selected by <...>
#    contains(X, Y)   is true if X contains the string in Y
# Once the node set is found, we use toString.XMLNode to convert the
# node into a string.

raw <- toString.XMLNode(
  getNodeSet(rawHTML, "//pre[@class='sequence']")
)


# to assemble the sequence, we need to split this along the
# <br/> elements

lines <- strsplit(raw, "<br/>")[[1]]


# the sequence is in the even lines ...
#lines[seq(2, length(lines), by=2)]
# ...and from there we can collapse it:
#seq <- paste(lines[seq(2, length(lines), by=2)], collapse="")
# ... and remove the remaining whitespace. gsub() is the base-R
# approach, but the package stringr has more flexible functions:

AMTN <- data[names(data)== 'interaction-table']
primary <- rbind(primary, AMTN)

#=================================================================================

# ENAM 


# Fetch the yeast FAM20A page from Uniprot
queryURL <- "http://www.uniprot.org/uniprot/Q9NRM1"
data <- readHTMLTable(queryURL, stringsAsFactors = FALSE)


# Obviously, we would like to get the actual sequence of these domains.
# The protein sequence is however not contained in a table and we have
# to pull it out of the HTML source.

# Let's capture it:

rawHTML <- htmlParse(queryURL)  # This returns an XML node-set
str(rawHTML)

# As we found in the source, the sequence is contained in a <pre>
# element, labelled with class="sequence"

# To extract it from the XML tree in the response object,
# we use the function getNodeSet().
# getNodeSet takes two (or more) parameters: an xml tree, and a "path"
# that describes what nodes should be considered. Paths are expressed
# in the xpath language (see: http://www.w3.org/TR/xpath/). Without
# getting too technical, we use the following notation for the path:
#    //               shorthand for /descendant-or-self::node()/
#    pre()            iterates over all pre nodes and returns a list
#    comment()[<...>] returns a subset of list items, selected by <...>
#    contains(X, Y)   is true if X contains the string in Y
# Once the node set is found, we use toString.XMLNode to convert the
# node into a string.

raw <- toString.XMLNode(
  getNodeSet(rawHTML, "//pre[@class='sequence']")
)


# to assemble the sequence, we need to split this along the
# <br/> elements

lines <- strsplit(raw, "<br/>")[[1]]


# the sequence is in the even lines ...
#lines[seq(2, length(lines), by=2)]
# ...and from there we can collapse it:
#seq <- paste(lines[seq(2, length(lines), by=2)], collapse="")
# ... and remove the remaining whitespace. gsub() is the base-R
# approach, but the package stringr has more flexible functions:

ENAM <- data[names(data)== 'interaction-table']
primary <- rbind(primary, ENAM)


#=================================================================================


# ACAN 


# Fetch the yeast FAM20A page from Uniprot
queryURL <- "http://www.uniprot.org/uniprot/P16112"
data <- readHTMLTable(queryURL, stringsAsFactors = FALSE)


# Obviously, we would like to get the actual sequence of these domains.
# The protein sequence is however not contained in a table and we have
# to pull it out of the HTML source.

# Let's capture it:

rawHTML <- htmlParse(queryURL)  # This returns an XML node-set
str(rawHTML)

# As we found in the source, the sequence is contained in a <pre>
# element, labelled with class="sequence"

# To extract it from the XML tree in the response object,
# we use the function getNodeSet().
# getNodeSet takes two (or more) parameters: an xml tree, and a "path"
# that describes what nodes should be considered. Paths are expressed
# in the xpath language (see: http://www.w3.org/TR/xpath/). Without
# getting too technical, we use the following notation for the path:
#    //               shorthand for /descendant-or-self::node()/
#    pre()            iterates over all pre nodes and returns a list
#    comment()[<...>] returns a subset of list items, selected by <...>
#    contains(X, Y)   is true if X contains the string in Y
# Once the node set is found, we use toString.XMLNode to convert the
# node into a string.

raw <- toString.XMLNode(
  getNodeSet(rawHTML, "//pre[@class='sequence']")
)


# to assemble the sequence, we need to split this along the
# <br/> elements

lines <- strsplit(raw, "<br/>")[[1]]


# the sequence is in the even lines ...
#lines[seq(2, length(lines), by=2)]
# ...and from there we can collapse it:
#seq <- paste(lines[seq(2, length(lines), by=2)], collapse="")
# ... and remove the remaining whitespace. gsub() is the base-R
# approach, but the package stringr has more flexible functions:

ACAN <- data[names(data)== 'interaction-table']
primary <- rbind(primary, ACAN)