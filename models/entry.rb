class Entry < CouchRest::ExtendedDocument
  use_database DB

  property :name
  property :comment

  view_by :name
end

