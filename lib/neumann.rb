# frozen_string_literal: true

def merge(left, right, sorted = [])
  sorted << (left[0] < right[0] ? left.shift : right.shift)

  if left.empty? || right.empty?
    (sorted << (left[0].nil? ? right : left)).flatten
  else
    merge(left, right, sorted)
  end
end

def merge_sort(list)
  return list unless list.size > 1

  left = merge_sort(list[0...list.size / 2])
  right = merge_sort(list[list.size / 2...list.size])
  merge(left, right)
end

list = [8, 8, 8, 8, 7, 6, 5, 4, 3, 256, 1, 8, 8, 64, 8, 8]
merge_sort(list)
# => [1, 3, 4, 5, 6, 7, 8, 8, 8, 8, 8, 8, 8, 8, 64, 256]
