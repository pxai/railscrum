class LogSerializer < ActiveModel::Serializer
  attributes :id, :msg, :when
end