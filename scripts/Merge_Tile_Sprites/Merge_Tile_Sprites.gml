function mergeTileSprites() 
{
	
	if (place_meeting(x, y + 1, object_index) && 
	    place_meeting(x, y - 1, object_index)) {
		return {sprite: 1, rotation: 0};
	} else if (place_meeting(x + 1, y, object_index) && 
	           place_meeting(x - 1, y, object_index)) {
		return {sprite: 1, rotation: 90};
	}

	else if (place_meeting(x + 1, y, object_index) && 
	         place_meeting(x, y + 1, object_index)) {
		return {sprite: 2, rotation: 0};
	} else if (place_meeting(x + 1, y, object_index) && 
	           place_meeting(x, y - 1, object_index)) {
		return {sprite: 2, rotation: 90};
	} else if (place_meeting(x - 1, y, object_index) && 
	           place_meeting(x, y - 1, object_index)) {
		return {sprite: 2, rotation: 180};
	} else if (place_meeting(x - 1, y, object_index) && 
	           place_meeting(x, y + 1, object_index)) {
		return {sprite: 2, rotation: 270};
	}

	else if (place_meeting(x, y + 1, object_index)) {
		return {sprite: 3, rotation: 0};
	} else if (place_meeting(x + 1, y, object_index)) {
		return {sprite: 3, rotation: 90};
	} else if (place_meeting(x, y - 1, object_index)) {
		return {sprite: 3, rotation: 180};
	} else if (place_meeting(x - 1, y, object_index)) {
		return {sprite: 3, rotation: 270};
	}
	
	else {
		return {sprite: 0, rotation: 0};
	}
}