/**A label selector requirement is a selector that contains values, a key, and an operator
 that relates the key and values.*/
::orch "kubernetes" "LabelSelectorRequirement" as LabelSelectorRequirement @operator, @values, @key {
     /**operator represents a key's relationship to a set of values. Valid operators ard In, NotIn,
      Exists and DoesNotExist.*/
     operator = null,
     /**values is an array of string values. If the operator is In or NotIn, the values array must
      be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty.
      This array is replaced during a strategic merge patch.*/
     values = null,
     /**key is the label key that the selector applies to.*/
     key = null
}