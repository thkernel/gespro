module UnitiesHelper
    def unity_to_name(id)
        Unity.find(id).name if id
    end
end
