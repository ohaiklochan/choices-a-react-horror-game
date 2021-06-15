class ChoiceSerializer < ActiveModel::Serializer
    attributes :id, :prompt, :choiceA, :choiceB, :turn, :path
end