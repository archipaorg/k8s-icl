/**ID Range provides a min/max of an allowed range of IDs.*/
::orch "kubernetes" "IDRange" as IDRange @max, @min {
     /**Max is the end of the range, inclusive.*/
     max = null,
     /**Min is the start of the range, inclusive.*/
     min = null
}