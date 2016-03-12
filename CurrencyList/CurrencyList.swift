import UIKit

extension NSLocale {
    
    struct Locale {
        let countryCode: String
        let countryName: String
    }
    
    class func locales() -> [Locale] {
        
        var locales = [Locale]()
        for localeCode in NSLocale.ISOCountryCodes() {
            let countryName = NSLocale.systemLocale().displayNameForKey(NSLocaleCountryCode, value: localeCode)!
            let countryCode = localeCode
            let locale = Locale(countryCode: countryCode, countryName: countryName)
            locales.append(locale)
        }
        
        return locales
    }
    
}
