def sum_array(nums1, nums2)
  ret = Array.new
  nums1.zip(nums2) { |a, b|
    ret << a + b
  }
  return ret
end

p sum_array([1, 2, 3], [4, 6, 8])

