-- Function to check if the current date is within a specified date range in the current year
function isDateInRangeInCurrentYear(startDateMonth, startDateDay, endDateMonth, endDateDay)
    local currentDate = os.date("*t") -- Get the current date as a table
    local currentYear = currentDate.year
    local startDate = os.time({year = currentYear, month = startDateMonth, day = startDateDay})
    local endDate = os.time({year = currentYear, month = endDateMonth, day = endDateDay})
    local currentTime = os.time()
    
    return currentTime >= startDate and currentTime <= endDate
end


function RunResource(eventName)
    --Change eventName to Default list
    if Config.Timeline[eventName].resourcelist then
        for index, value in pairs(Config.Timeline[eventName].resourcelist) do
            Config.resourceListDefault[index] = value
        end
    end

    --run eventname from default list
    for index, value in pairs(Config.resourceListDefault) do
        ExecuteCommand(string.format("start " .. value))
    end
end

function CheckTime()
    local EventFound = false
    local EventName = nil
    for k,v in pairs(Config.Timeline) do
        if isDateInRangeInCurrentYear(v.start.month, v.start.date, v.finish.month, v.finish.date) then
            EventFound = true
            EventName = k
        end
    end
    if EventFound then 
        RunResource(EventName)
    else
        RunResource(nil)
    end
end

CheckTime()