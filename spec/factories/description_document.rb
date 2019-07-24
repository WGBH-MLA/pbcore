require 'pbcore'

FactoryBot.define do
  factory :pbcore_description_document, class: PBCore::DescriptionDocument, parent: :pbcore_element do
    skip_create

    # NOTE: Additional identifiers may be added with :other_identifiers.
    # See transient attribute below.

    identifiers       { build_list(:pbcore_identifier, rand(1..3)) }
    titles            { build_list(:pbcore_title, rand(1..3)) }
    descriptions      { build_list(:pbcore_description, rand(1..3)) }
    asset_dates       { build_list(:pbcore_asset_date, rand(1..3)) }
    asset_types       { build_list(:pbcore_asset_type, rand(1..3)) }
    subjects          { build_list(:pbcore_subject, rand(1..3)) }
    genres            { build_list(:pbcore_genre, rand(1..3)) }
    relations         { build_list(:pbcore_relation, rand(1..3)) }
    coverages         { build_list(:pbcore_coverage, rand(1..3)) }
    audience_levels   { build_list(:pbcore_audience_level, rand(1..3)) }
    audience_ratings  { build_list(:pbcore_audience_rating, rand(1..3)) }
    contributors      { build_list(:pbcore_contributor, rand(1..3)) }
    creators          { build_list(:pbcore_creator, rand(1..3)) }
    publishers        { build_list(:pbcore_publisher, rand(1..3)) }
    rights_summaries  { build_list(:pbcore_rights_summary, rand(1..3)) }
    annotations       { build_list(:pbcore_annotation, rand(1..3)) }
    extensions        { build_list(:pbcore_extension, rand(1..3)) }
    instantiations    { build_list(:pbcore_instantiation, rand(1..3)) }

    # audience_levels   { build_list(:pbcore_audience_level, rand(1..3)) }
    # audience_ratings  { build_list(:pbcore_audience_rating, rand(1..3)) }
    # asset_types       { build_list(:pbcore_asset_type, rand(1..3)) }
    #
    # annotations do
    #   [
    #     build(:pbcore_annotation, type: 'organization', value: 'American Archive of Public Broadcasting'),
    #     build(:pbcore_annotation, type: 'organization', value: 'bark bark'),
    #     build(:pbcore_annotation, type: 'organization', value: 'meow meow'),
    #   ]
    # end
    #
    # subjects          { build_list(:pbcore_subject, rand(1..3)) }
    #
    #
    #
    #
    #
    # genres do
    #   [
    #     build_list(:pbcore_genre, rand(1..3)),
    #     build_list(:pbcore_genre, rand(1..3), :topic)
    #   ].flatten
    # end
    #
    # coverages do
    #   [
    #     build(:pbcore_coverage, :spatial),
    #     build(:pbcore_coverage, :temporal)
    #   ]
    # end
    #
    # rights_summaries do
    #   [
    #     build(:pbcore_rights_summary, :summary),
    #   ]
    # end
    #
    # contributors do
    #   [
    #     build(:pbcore_contributor, :with_portrayal, :with_affiliation)
    #   ]
    # end
    #
    # asset_dates do
    #   [
    #     build(:pbcore_asset_date),
    #     build(:pbcore_asset_date, type: "Broadcast"),
    #     build(:pbcore_asset_date, type: "Copyright"),
    #     build(:pbcore_asset_date, type: "Created")
    #   ]
    # end

    # instantiations do
    #   [
    #     build(:pbcore_instantiation, :digital, :aapb_holding, :moving_image),
    #   ]
    # end

    initialize_with { new(attributes) }
  end
end
