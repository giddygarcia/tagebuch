class Entry < ApplicationRecord
	validates :date, presence: true
	validates :quote, presence: true
	validates :entry, presence: true
	VALID_TAG_REGEX = /(?:^|\s)(?:(?:#\d+?)|(#\w+?))\s/i
	validates :tags, format: { with: VALID_TAG_REGEX }
	has_one_attached :image
end
