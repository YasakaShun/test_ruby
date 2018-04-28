# num ���f�����ǂ����𔻒�
def prime?(num)
  # ���l���`�F�b�N
  return false if !num.instance_of?(Integer)
  # 1�͊܂܂Ȃ�
  return false if num <= 1
  
  # ����؂�鐔������������f���ł͂Ȃ�
  2.upto(num-1) { |i|
    return false if num % i == 0
  }
  
  return true
end

# �e�X�g
prime?("abc")
prime?(3.0)
prime?(Hash.new)

# �o��
1.upto(100) do |i|
  if prime?(i)
    puts sprintf("%3d", i)
  end
end
