class Check

    def get_heading(line)
        line.gsub(/^\W+/, "").chomp
    end

    def check_head_length(line)
        heading = get_heading(line)
        if heading.length < 12
            true
        else
            false
        end
    end



end