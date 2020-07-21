module PBCore
  module Vocab
    class << self
      def asset_types
        [ "Album", "Animation", "Clip", "Collection", "Compilation", "Episode",
          "Miniseries", "Program", "Promo", "Raw Footage", "Segment", "Series",
          "Season", "Subseries" ]
      end

      def date_types
        [ "accepted", "available", "available end", "available start",
          "broadcast", "captured", "created", "copyright", "deletion",
          "digitized", "distributed", "dubbed", "edited", "encoded",
          "encrypted", "event", "ingested", "issued", "licensed", "mastered",
          "migrated", "mixed", "modified", "normalized", "performed", "podcast",
          "published", "released", "restored", "revised", "transferred",
          "valid", "validated", "webcast" ]
      end
    end
  end
end
