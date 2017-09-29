require 'pry'

class GetIn
  def retrieve(data, seq)
    val = data
    seq.each do |key|
      val = val[key]
    end
    val
  end
end
