#!/usr/bin/env ruby

def get_all_keys(hash)
  hash.map do |k, v|
    Hash === v ? [k, get_all_keys(v)] : [k]
  end.flatten
end

