# Convert US date to EU date

# You and your friends are going to Europe! You have made plans to travel around Europe with your friends, but one thing you need to take into account so that everything goes according to play, is that the format of their date is different than from what is used in the United States. Your job is to convert all your dates from MM/DD/YYYY to DD/MM/YYYY.

# Task: 
# Create a function that takes in a string containing a date that is in US format, and return a string of the same date converted to EU.

# Input Format: 
# A string that contains a date formatting 11/19/2019 or November 19, 2019.

# Output Format: 
# A string of the same date but in a different format: 19/11/2019.

# Sample Input: 
# 7/26/2019

# Sample Output: 
# 26/7/2019

class Date
    def convert(us_date = gets.chomp.to_s) 
        months = { 
            1 => "January",
            2 => "February",
            3 => "March",
            4 => "April",
            5 => "May",
            6 => "June",
            7 => "July",
            8 => "August",
            9 => "September",
            10 => "October",
            11 => "November",
            12 => "December",
        }

        if us_date.include? "/"     # 5/14/2005
            d_arr = us_date.split('/')
            d_arr[0], d_arr[1] = d_arr[1], d_arr[0] # swaps day and month
            return d_arr.join("/")  # 14/5/2005

        elsif us_date.include? ","  # May 14, 2005
            d_arr = us_date.split(" ")
            d_arr[1] = d_arr[1].chop
            d_arr[0] = months.key(d_arr[0]) # replaces month name with its number equivalent
            d_arr[0], d_arr[1] = d_arr[1], d_arr[0]
            return d_arr.join("/")  # 14/5/2005

        end
    end
end

date = Date.new()

puts date.convert()
