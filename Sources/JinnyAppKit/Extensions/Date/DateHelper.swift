
import Foundation

public class DateHelper {
    public class func date(year: Int, month: Int, day: Int, hour: Int = 0, minute: Int = 0, seconds: Int = 0) -> Date? {
        return DateFormatter.standard.date(from: "\(year)-\(month)-\(day) \(hour):\(minute):\(seconds)")
    }
    
    public class func dateAfter(years: Int, from baseDate: Date) -> Date? {
        let yearsToAdd = years
        var dateComponents = DateComponents()
        dateComponents.year = yearsToAdd
        return Calendar.current.date(byAdding: dateComponents, to: baseDate)
    }
}
