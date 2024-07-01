function Item:onImbue(imbuement, firstCreation)
	if hasEventCallback(EVENT_CALLBACK_ONIMBUE) then
		if not EventCallback(EVENT_CALLBACK_ONIMBUE, self, imbuement, firstCreation) then
			return false
		end
	end
	return true
end

function Item:onRemoveImbue(imbueType, decayRemoved)
	if hasEventCallback(EVENT_CALLBACK_ONREMOVEIMBUE) then
		if not EventCallback(EVENT_CALLBACK_ONREMOVEIMBUE, self, imbueType, decayRemoved) then
			return false
		end
	end
end