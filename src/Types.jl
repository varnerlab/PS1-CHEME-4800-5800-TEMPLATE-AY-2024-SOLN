"""
    MyPuzzleRecordModel

A model for the puzzle records. The constructor takes a single argument, the record, and initializes the fields of the model.

### Fields
- `record::String`: The original record.
- `characters::Array{Char, 1}`: The characters of the record.
- `len::Int64`: The length of the record.
"""
mutable struct MyPuzzleRecordModel

    # data -
    record::String
    characters::Array{Char, 1}
    len::Int64

    # constructor -
    MyPuzzleRecordModel(record::String) = new(record, collect(record), length(record));
end