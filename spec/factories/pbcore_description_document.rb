require 'pbcore'

FactoryBot.define do
  factory :pbcore_description_document, class: PBCore::DescriptionDocument, parent: :pbcore_element do
    skip_create

    trait :full_aapb do
      # NOTE: Additional identifiers may be added with :other_identifiers.
      # See transient attribute below.

      identifiers do
        [
          build(:pbcore_identifier, :aapb),
          build(:pbcore_identifier, :sony_ci_video),
        ]
      end
      audience_levels   { build_list(:pbcore_audience_level, rand(1..3)) }
      audience_ratings  { build_list(:pbcore_audience_rating, rand(1..3)) }
      asset_types       { build_list(:pbcore_asset_type, rand(1..3)) }
      
      annotations do
        [
          build(:pbcore_annotation, type: 'organization', value: 'American Archive of Public Broadcasting'),
          build(:pbcore_annotation, type: 'organization', value: 'bark bark'),
          build(:pbcore_annotation, type: 'organization', value: 'meow meow'),
        ]
      end

      subjects          { build_list(:pbcore_subject, rand(1..3)) }

      titles do
        [
          build_list(:pbcore_title, rand(1..3)),
          build_list(:pbcore_title, rand(1..3), type: 'Series'),
          build_list(:pbcore_title, rand(1..3), type: 'Program'),
          build_list(:pbcore_title, rand(1..3), type: 'Episode'),
          build_list(:pbcore_title, rand(1..3), type: 'Segment'),
          build_list(:pbcore_title, rand(1..3), type: 'Promo'),
          build_list(:pbcore_title, rand(1..3), type: 'Clip'),
          build_list(:pbcore_title, rand(1..3), type: 'Raw Footage'),
          build(:pbcore_title, type: 'Episode Number', value: rand(1..500)),
        ].flatten
      end

      descriptions do
        [
          build_list(:pbcore_description, rand(1..3)),
          build_list(:pbcore_description, rand(1..3), type: 'Program'),
          build_list(:pbcore_description, rand(1..3), type: 'Episode'),
          build_list(:pbcore_description, rand(1..3), type: 'Segment'),
          build_list(:pbcore_description, rand(1..3), type: 'Promo'),
          build_list(:pbcore_description, rand(1..3), type: 'Clip'),
          build_list(:pbcore_description, rand(1..3), type: 'Raw Footage'),
        ].flatten
      end

      genres do
        [
          build_list(:pbcore_genre, rand(1..3)),
          build_list(:pbcore_genre, rand(1..3), :topic)
        ].flatten
      end

      coverages do
        [
          build(:pbcore_coverage, :spatial),
          build(:pbcore_coverage, :temporal)
        ]
      end

      rights_summaries do
        [
          build(:pbcore_rights_summary, :summary),
          build(:pbcore_rights_summary, :link)
        ]
      end

      contributors do
        [
          build(:pbcore_contributor, :with_portrayal, :with_affiliation)
        ]
      end

      asset_dates do
        [
          build(:pbcore_asset_date),
          build(:pbcore_asset_date, type: "Broadcast"),
          build(:pbcore_asset_date, type: "Copyright"),
          build(:pbcore_asset_date, type: "Created")
        ]
      end

      # instantiations do
      #   [
      #     build(:pbcore_instantiation, :digital, :aapb_holding, :moving_image),
      #   ]
      # end

      transient do
        other_identifiers { [:nola_code, :eidr, :local] }

        access_level_protected false
        access_level_public false
        access_level_private false
        outside_url false
        external_reference_url false
        kqed_org false
        wgbh_org false
        iowa_org false

        audio false
        moving_image false

        has_transcript false
      end

      after(:build) do |pbcore_description_document, evaluator|
        # Add identifiers
        Array(evaluator.other_identifiers).each do |identifier_trait|
          pbcore_description_document.identifiers << build(:pbcore_identifier, identifier_trait)
        end

        # need this pattern to arbitrarily add annotations, traits will override each other
        pbcore_description_document.annotations << build(:pbcore_annotation, :on_location) if evaluator.access_level_protected
        pbcore_description_document.annotations << build(:pbcore_annotation, :online_reading_room) if evaluator.access_level_public
        pbcore_description_document.annotations << build(:pbcore_annotation, :private) if evaluator.access_level_private

        pbcore_description_document.annotations << build(:pbcore_annotation, :outside_url) if evaluator.outside_url 
        pbcore_description_document.annotations << build(:pbcore_annotation, :external_reference_url) if evaluator.external_reference_url 

        pbcore_description_document.instantiations << build(:pbcore_instantiation, :kqed_org) if evaluator.kqed_org 
        pbcore_description_document.instantiations << build(:pbcore_instantiation, :wgbh_org) if evaluator.wgbh_org 
        pbcore_description_document.instantiations << build(:pbcore_instantiation, :iowa_org) if evaluator.iowa_org 

        pbcore_description_document.instantiations << build(:pbcore_instantiation, :moving_image) if evaluator.moving_image
        pbcore_description_document.instantiations << build(:pbcore_instantiation, :audio) if evaluator.audio

        pbcore_description_document.annotations << build(:pbcore_annotation, :has_transcript_url) if evaluator.has_transcript
        pbcore_description_document.annotations << build(:pbcore_annotation, :has_transcript_status) if evaluator.has_transcript 
      end
    end

    trait :only_episode_num_titles do
      titles do
        build_list(:pbcore_title, rand(1..6), type: 'Episode Number', value: rand(1..500))
      end
    end

    trait :not_digitized do
      identifiers do
        # overwrite default identifiers, no ci ID
        [
          build(:pbcore_identifier, :aapb)
        ]
      end
    end

    trait :in_special_collection do
      identifiers do
        # overwrite default identfiers, has guid thats in special colleciton 
        [
          build(:pbcore_identifier, :collection_aapb),
          build(:pbcore_identifier, :sony_ci_video),
        ]
      end
    end


    # ITS THE NEWWWW
    # trait :access_level_protected do
    #   annotations { [build(:pbcore_annotation, :on_location)] }
    # end 

    # trait :access_level_public do
    #   annotations { [build(:pbcore_annotation, :online_reading_room)] }
    # end 

    # trait :outside_url do
    #   annotations { [ build(:pbcore_annotation, :outside_url) ] }
    # end

    # trait :clean_16_9 do
    #   identifiers { [build(:pbcore_identifier, :sony_ci_video)] }
    #   instantiations { [build(:pbcore_instantiation, :sixteen_nine)] }
    # end

    # trait :clean_alternative_title do
    #   titles { [build(:pbcore_title, :alternative_title)] }
    # end

    # trait :clean_multiple_orgs do
    #   instantiations { build_list(:pbcore_instantiation, :organization) }
    # end



    initialize_with { new(attributes) }
  end
end
