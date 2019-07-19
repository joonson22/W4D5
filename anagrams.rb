# Phase 1
# def permutations(word)
#   word.split('')
#   return 'word' if word.length <= 1
#   first = word.shift
#   perms = permutations(word)
#   total_permutations = []
#   perms.each do |perm|
#     (0..perm.length).to_s.each_char do |i|
#       total_permutations << perm[0...i] + first + perm[i..-1]
#     end
#   end
#   total_permutations.join('')
# end

# p permutations('hello')

# PHASE 2
def fourth_anagram?(word1, word2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  word1.chars.each do |char1|
    hash1[char1] += 1
  end

  word2.chars.each do |char2|
    hash2[char2] += 1
  end
    hash1 == hash2
end

# p fourth_anagram?("helo", "oleh")
# p fourth_anagram?("hello", "ollh")

def bonus(word1,word2)
  hash = Hash.new(0)


   word1.chars.each do |char1|
    hash[char1] += 1
  end

   word2.chars.each do |char2|
    hash[char2] -= 1
  end

  hash.values.all? {|v| v == 0}
end

p bonus("helo", "oleh")
p bonus("hello", "ollh")

def two_sum(arr,target)
  hash = {}
  i = 0
  while i < arr.length
    if hash.has_key?(target - arr[i])
      return [hash[target - arr[i]], i]
    else
      hash[arr[i]] = i
    end
    i+=1
  end
end

p two_sum([1,5,6,3], 4)
