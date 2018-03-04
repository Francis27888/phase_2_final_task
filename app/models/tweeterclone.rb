class Tweeterclone < ApplicationRecord
    validates :content,presence:true,length:{maximum:140}
end
