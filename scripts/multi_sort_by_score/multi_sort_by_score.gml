// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///									multi_sort_by_score(_arr)
/// @param _arr {array}				the array to sort


function multi_sort_by_score(_arr) {

	// Simple bubble sort for demonstration
	for (var _i = 0; _i < array_length(_arr); _i++)
	{
	    for (var _j = 0; _j < array_length(_arr) - _i - 1; _j++)
	    {
	        if (_arr[_j].value < _arr[_j + 1].value)
	        {
	            // Swap
	            var _temp = _arr[_j];
	            _arr[_j] = _arr[_j + 1];
	            _arr[_j + 1] = _temp;
	        }
	    }
	}

	return _arr;
}