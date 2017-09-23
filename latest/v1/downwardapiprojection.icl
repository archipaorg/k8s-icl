/**Represents downward API info for projecting into a projected volume. Note that this is identical
 to a downwardAPI volume source without the default mode.*/
::orch "kubernetes" "DownwardAPIProjection" as DownwardAPIProjection @items {
     /**Items is a list of DownwardAPIVolume file*/
     items = null
}