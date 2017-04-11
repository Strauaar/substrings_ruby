def substring phrase, arrayToCheck
  hashTracker = Hash.new
  phrase.gsub!(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
  phraseArr =  phrase.split(" ")
  phraseArr.each do |word|

    arrayToCheck.each do |wordCheck|

      if word == wordCheck
        if hashTracker[word] == nil
          hashTracker[word] = 1
        else
          hashTracker[word] += 1
        end
      else
      end
    end
  end
  print hashTracker
  print "\n"
end

substring("this is a string a a! !", ["array", "this", "a", "string"])
