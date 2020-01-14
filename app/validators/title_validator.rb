class TitleValidator < ActiveModel::Validator

    def validate(record)
        if record.title
            unless ["Won't Believe", "Secret", "Top [number]",  "Guess"].any? do |phrase|
                
                record.title.include?(phrase)
                end
            
                record.errors[:title] << "Title not clickbait-y"
            end
        else
            record.errors[:title] << "Title does not exist"
        end
   
    end
end