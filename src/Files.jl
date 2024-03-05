
# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    puzzleparse(filename::String) -> Dict{Int64, MyPuzzleRecordModel}

Parses the puzzle file and returns a dictionary of MyPuzzleRecordModel objects, where the `key` is the record number and the value is the `MyPuzzleRecordModel` object.

### Arguments
- `filename::String`: The path to the puzzle file to that we will parse.

### Returns
- A dictionary of MyPuzzleRecordModel objects, where the `key` is the record number and the value is the `MyPuzzleRecordModel` object.
"""
function puzzleparse(filename::String)::Dict{Int64, MyPuzzleRecordModel}
    
    # initialize -
    records = Dict{Int64, MyPuzzleRecordModel}()
    linecounter = 1;
    
    # main -
    open(filename, "r") do io
        for line ∈ eachline(io)
            
            # process the data lines -
            records[linecounter] = _build(MyPuzzleRecordModel, line);
            
            # update the line counter -
            linecounter += 1;
        end
    end

    # return the header and the records -
    return records;
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #