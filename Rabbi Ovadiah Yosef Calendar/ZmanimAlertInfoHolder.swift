//
//  ZmanimAlertInfoHolder.swift
//  Rabbi Ovadiah Yosef Calendar
//
//  Created by Elyahu on 4/30/23.
//

import Foundation
import UIKit

struct ZmanimAlertInfoHolder {
    
    var title = ""
    var mIsZmanimInHebrew = false
    var mIsZmanimEnglishTranslated = false
    
    func getFullTitle() -> String {
        let zmanimNames = ZmanimTimeNames(mIsZmanimInHebrew: mIsZmanimInHebrew, mIsZmanimEnglishTranslated: mIsZmanimEnglishTranslated)
        if title == zmanimNames.getAlotString() {
            return "Dawn - Alot Hashachar - עלות השחר"
        }
        if title.contains(zmanimNames.getTalitTefilinString()) {
            return "Earliest Talit/Tefilin - טלית ותפילין"
        }
        if title.contains(zmanimNames.getHaNetzString()) {
            return "Sunrise - HaNetz - הנץ"
        }
        if title == zmanimNames.getAchilatChametzString() {
            return "Sof Zman Achilat Chametz - Latest time to eat Chametz - סוף זמן אכילת חמץ"
        }
        if title == zmanimNames.getBiurChametzString() {
            return "Latest time to burn Chametz - Sof Zman Biur Chametz - סוף זמן ביעור חמץ"
        }
        if title == zmanimNames.getShmaMgaString() {
            return "Latest Shma MG\"A - Sof Zman Shma MG\"A - סוף זמן שמע מג\"א"
        }
        if title == zmanimNames.getShmaGraString() {
            return "Latest Shma GR\"A - Sof Zman Shma GR\"A - סוף זמן שמע גר\"א"
        }
        if title == zmanimNames.getBrachotShmaString() {
            return "Latest Brachot Shma - Sof Zman Brachot Shma - סוף זמן ברכות שמע"
        }
        if title == zmanimNames.getChatzotString() {
            return "Mid-day - Chatzot - חצות"
        }
        if title == zmanimNames.getMinchaGedolaString() {
            return "Earliest Mincha - Mincha Gedola - מנחה גדולה"
        }
        if title == zmanimNames.getMinchaKetanaString() {
            return "Mincha Ketana - מנחה קטנה"
        }
        if title.contains(zmanimNames.getPlagHaminchaString()) {
            return "Plag HaMincha - פלג המנחה"
        }
        if title.contains(zmanimNames.getCandleLightingString()) {
            return "Candle Lighting - הדלקת נרות"
        }
        if title == zmanimNames.getSunsetString() {
            return "Sunset - Shkia - שקיעה"
        }
        if title == zmanimNames.getTzaitHacochavimString() {
            return "Nightfall - Tzait Hacochavim - צאת הכוכבים"
        }
        if title == zmanimNames.getTzaitHacochavimString() + " " + zmanimNames.getLChumraString() {
            return "Nightfall (Stringent) - Tzait Hacochavim L'Chumra - צאת הכוכבים לחומרא"
        }
        if title == zmanimNames.getTzaitString() + zmanimNames.getTaanitString() + zmanimNames.getEndsString() + " " + zmanimNames.getLChumraString() {
            return "Fast Ends (Stringent) - Tzeit Taanit L'Chumra - צאת תענית לחומרא"
        }
        if title == zmanimNames.getTzaitString() + zmanimNames.getTaanitString() + zmanimNames.getEndsString() {
            return "Fast Ends - Tzeit Taanit - צאת תענית"
        }
        if title.contains("Shabbat") || title.contains("Chag") || title.contains("\u{05E9}\u{05D1}\u{05EA}") || title.contains("\u{05D7}\u{05D2}") {
            return "Shabbat/Chag Ends - Tzeit Shabbat/Chag - צאת \u{05E9}\u{05D1}\u{05EA}/\u{05D7}\u{05D2}"
        }
        if title == zmanimNames.getRTString() {
            return "Rabbeinu Tam - רבינו תם"
        }
        if title == zmanimNames.getChatzotLaylaString() {
            return "Midnight - Chatzot Layla - חצות הלילה"
        }
        if title.contains("וּלְכַפָּרַת פֶּשַׁע") {
            return "וּלְכַפָּרַת פֶּשַׁע"
        }
        if title.contains("Tekufa".localized()) {
            return "Tekufa - Season"
        }
        if title.contains("Three Weeks".localized()) || title.contains("Nine Days".localized()) || title.contains("Shevuah Shechal Bo".localized()) {
            return title
        }
        if title.contains("ברכת החמה") || title.contains("Birchat HaChamah") {
            return "Latest Birchat HaChamah - סוף זמן ברכת החמה - Sof Zman Birchat HaChamah"
        }
        if title.contains("ברכת הלבנה") || title.contains("Birchat HaLevana") {
            return "ברכת הלבנה - Birchat Halevana"
        }
        
        return ""
    }
    
    func getFullMessage() -> String {//these strings were brought over from java. Hence all the concatenation
        let zmanimNames = ZmanimTimeNames(mIsZmanimInHebrew: mIsZmanimInHebrew, mIsZmanimEnglishTranslated: mIsZmanimEnglishTranslated)
        if title == zmanimNames.getAlotString() {
            if Locale.isHebrewLocale() {
                return "בתנ\"ך, הזמן הזה נקרא \"עלות השחר\" (בראשית ל\"ב:כ\"ה), בעוד בגמרא הוא נקרא \"עמוד השחר\".  זהו הזמן בו מתחיל היום לפי ההלכה. רוב המצוות, דוגמת ערבית, שמתבצעות בלילה, אסורות להתבצע אחרי הזמן הזה. לאחריו, מצוות שחייבות להתבצע בזמן היום מותרות להתבצע בדיעבד או בשעת הדחק. אף על פי כן, יש לחכות עד לזריחה כדי לממש אותן לפי הלכה.  הזמן הזה נחשב ל-72 דקות זמניות (על פי הגר\"א) לפני הזריחה. גם הזריחה והשקיעה משתנות בהתעלות.  במצב לוח עמודי הוראה, הזמן הזה מחושב על ידי מציאת מספר הדקות שבין הזריחה ל-72 דקות כמות מעלות (16.04) לפני הזריחה ביום שווה עם הזריחה והשקיעה מוגדרים בתקופה של 12 שעות. לאחר מכן, אנחנו מעבירים את הדקות האלו לזמניות על פי הגר\"א ומחסרים אותו מהזמן של העלות השחר. זה על פי הלכה ברורה ועל המרצים לבצע זאת רק מחוץ לישראל באזורים צפוניים או דרומיים יותר."
            } else {
                return "In Tanach this time is called Alot HaShachar (בראשית לב:כה), whereas in the gemara it is called Amud HaShachar.\n\n" +
                "This is the time when the day begins according to halacha. " +
                "Most mitzvot (commandments), Arvit for example, that take place at night are not allowed " +
                "to be done after this time.\nAfter this time, mitzvot that must be done in the daytime are " +
                "allowed to be done B'dieved (after the fact) or B'shaat hadachak (in a time of need). However, one should ideally wait " +
                "until sunrise to do them L'chatchila (optimally).\n\n" +
                "This time is calculated as 72 zmaniyot/seasonal minutes (according to the GR\"A) before sunrise. Both sunrise and sunset " +
                "have elevation included.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated by finding out how many minutes " +
                "are between sunrise and 72 minutes as degrees (16.04) before sunrise on a equal day with sunrise and sunset set around 12 " +
                "hours apart. Then we take those minutes and make them zmaniyot according to the GR\"A and we subtract that time from " +
                "sunrise to get the time for Alot Hashachar. This is according to the Halacha Berurah and this should only be done outside of Israel in more northern or southern areas."
            }
        }
        if title == zmanimNames.getTalitTefilinString() {
            if Locale.isHebrewLocale() {
                return "\"משייכיר\" (במשמעות הלמידי \"כאשר אתה מכיר\") הוא הזמן בו אדם יכול להבחין בין כחול ללבן. הגמרא (ברכות ט) מסבירה שכאשר אדם יכול להבחין בין החוטים הכחולים (תכלת) והחוטים הלבנים שבציציתו, זהו הזמן המוקדם ביותר בו אדם יכול ללבוש את הטלית והתפילין לשחרית.  זהו גם הזמן המוקדם ביותר בו אפשר לקרוא את שמע לפי הלכה לכתחילה.  הזמן הזה מחושב כ-6 דקות זמניות (על פי הגר\"א) לאחר \"עלות השחר\".  הערה: הזמן הזה הוא רק לאנשים שצריכים לצאת לעבודה או לנסוע בשעות הראשונות של הבוקר, אך בדרך כלל אדם צריך ללבוש את הטלית והתפילין שעה רגילה ובחורף 50 דקות רגילות לפני הזריחה.  במצב של \"לוח עמודי הוראה\", הזמן הזה מחושב על ידי מציאת מספר הדקות שבין הזריחה ל-72 דקות כמויות מעלות (16.04) לפני הזריחה ביום שווה עם הזריחה והשקיעה מוגדרות במרחק כשעתיים זמן ממוצע זה משתנה מדי. לאחר מכן, אנחנו ממירים את הדקות האלו לזמניות על פי הגר\"א ומחסרים 5/6 מהזמן הזה מהזמן של הזריחה כדי לקבוע את הזמן של \"משייכיר\". זה נעשה על פי הלכה ברורה ויש לעשות זאת רק מחוץ לישראל באזורים צפוניים או דרומיים יותר. כלולים בחישובים אלו לא הם התנועה של השמש."
            } else {
                return "Misheyakir (literally \"when you recognize\") is the time when a person can distinguish between blue and white. " +
                "The gemara (ברכות ט) explains that when a person can distinguish between the blue (techelet) and white strings " +
                "of their tzitzit, that is the earliest time a person can put on their talit and tefilin for shacharit.\n\n" +
                "This is also the earliest time one can say Shema L'chatchila (optimally).\n\n" +
                "This time is calculated as 6 zmaniyot/seasonal minutes (according to the GR\"A) after Alot HaShachar (Dawn).\n\n" +
                "Note: This time is only for people who need to go to work or leave early in the morning to travel, however, normally a " +
                "person should put on his talit/tefilin 60 regular minutes (and in the winter 50 regular minutes) before sunrise.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated by finding out how many minutes " +
                "are between sunrise and 72 minutes as degrees (16.04) before sunrise on a equal day with sunrise and sunset set around 12 " +
                "hours apart. Then we take those minutes and make them zmaniyot according to the GR\"A and we subtract 5/6 of that time from " +
                "sunrise to get the time for Misheyakir. This is according to the Halacha Berurah and this should only be done outside of " +
                "Israel in more northern or southern areas. " +
                "Elevation is not included in Luach Amudei Horaah mode."
            }
        }
        if title.contains(zmanimNames.getHaNetzString()) {
            if Locale.isHebrewLocale() {
                return "זהו הזמן המוקדם ביותר בו מותר לבצע את כל המצוות שחייבות להתבצע בזמן היום לפי הלכה לכתחילה. הזריחה ההלכתית מוגדרת כרגע שקף השמש העליון מופיע על האופק בעת זריחתה. הזריחה ההלכתית היא נקראת \"זריחת הים\" (מישור) והרבים מהיהודים סומכים עליה בעת תפילת הנץ.  מובן מאליו, יש לשים לב שבשולחן ערוך כתוב באורח חיים, הלכות תפילה סימן פ\"ט, \"מצוות שחרית מתחילין בנץ, שנאמר \'יראוך עם שמש\'\". בהתבסס על זה, פוסקי ההלכה כותבים שאדם צריך לחכות עד שהשמש נראית כדי לומר את שחרית. בישראל, לוח אור החיים משתמש בטבלה של זמני זריחה מתוך \'לוח ביכורי יוסף\' מדי שנה. הזמנים אלו נוצרו על ידי חיים קלר, יוצר האתר ChaiTables. לפי המלצת ההלכה, יש להוריד את זמני הזריחה הנראים מאתרו באמצעות האפליקציה באפשרות שמתגיה כאן למטה. אם לא הורדת את הזמנים, תראה את זמן זריחה במישור."
            } else {
                return "This is the earliest time when all mitzvot (commandments) that are to be done during the daytime are allowed to be " +
                "performed L'chatchila (optimally). Halachic sunrise is defined as the moment when the top edge of the sun appears on the " +
                "horizon while rising. " +
                "This halachic sunrise is called mishor (sea level) sunrise and it is what many jews rely on when praying for Netz.\n\n" +
                "However, it should be noted that the Shulchan Aruch writes in Orach Chayim 89:1, \"The mitzvah of shacharit starts at " +
                "Netz, like it says in the pasuk/verse, 'יראוך עם שמש'\". Based on this, the poskim write that a person should wait until " +
                "the sun is VISIBLE to say shacharit. In Israel, the Ohr HaChaim calendar uses a table of sunrise times from the " +
                "luach/calendar 'לוח ביכורי יוסף' (Luach Bechoray Yosef) each year. These times were made by Chaim Keller, creator of the " +
                "ChaiTables website. Ideally, you should download these VISIBLE sunrise times from his website with the capability of " +
                "this app by pressing the button below. However, if you did not download the times, you will see 'Mishor' or 'Sea Level' " +
                "sunrise instead."
            }
        }
        if title == zmanimNames.getAchilatChametzString() {
            if Locale.isHebrewLocale() {
                return "זהו הזמן האחרון בו ניתן לאכול חמץ.  הזמן הזה מחושב כ-4 שעות זמניות, על פי המגן אברהם, לאחר זמן \"עלות השחר\" עם גובה. מאחר וחמץ הוא מצוות מן התורה, אנחנו מחמירים ואנחנו משתמשים בזמן של המגן אברהם כדי לחשב את הזמן האחרון שבו ניתן לאכול חמץ.  במצב \"לוח עמודי הוראה\", הזמן הזה מחושב באותו הדרך כמו שנמצא למעלה, רק שיש בשימוש בזמן המשולש של עלות/צאת בלוח עמודי הוראה, ואין כלל תפקוד גובה בחישובים."
            } else {
                return "This is the latest time a person can eat chametz.\n\n" +
                "This is calculated as 4 zmaniyot/seasonal hours, according to the Magen Avraham, after Alot HaShachar (Dawn) with " +
                "elevation included. Since Chametz is a mitzvah from the torah, we are stringent and we use the Magen Avraham's time to " +
                "calculate the last time a person can eat chametz.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated the same way as above except using the skewed Alot/Tzait of the " +
                "Amudei Horaah calendar, and no elevation is included."
            }
        }
        if title == zmanimNames.getBiurChametzString() {
            if Locale.isHebrewLocale() {
                return "זהו הזמן האחרון בו ניתן לביעור חמץ לפני שהפסח מתחיל. יש להיפטר מכל חמץ שנמצא ברשותך עד לפני הזמן הזה.  הזמן הזה מחושב כ-5 שעות זמניות, על פי המגן אברהם, לאחר \"עלות השחר\" עם גובה.  במצב \"לוח עמודי הוראה\", הזמן הזה מחושב באותו הדרך כמו שנמצא למעלה, רק שיש בשימוש בזמן המשולש של עלות/צאת בלוח עמודי הוראה, ואין כלל תפקוד גובה בחישובים."
            } else {
                return "This is the latest time a person can own or burn their chametz before pesach begins. You should get rid of all chametz in your " +
                "possession by this time.\n\n" +
                "This is calculated as 5 zmaniyot/seasonal hours, according to the MG\"A, after Alot HaShachar (Dawn) with " +
                "elevation included.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated the same way as above except using the skewed Alot/Tzait of the " +
                "Amudei Horaah calendar, and no elevation is included."
            }
        }
        if title == zmanimNames.getShmaMgaString() {
            if Locale.isHebrewLocale() {
                return "זהו הזמן האחרון בו ניתן למלא את חובת קריאת שמע בכל יום, על פי המגן אברהם.  המגן אברהם/תרומת הדשן מחשבים את הזמן הזה כ-3 שעות זמניות לאחר \"עלות השחר\". הם מחלקים את הזמן בין עלות השחר וצאת הכוכבים של רבנו תם ל-12 חלקים שווים, וכך מתקבלת שעה זמנית אחת.  במצב \"לוח עמודי הוראה\", הזמן הזה מחושב באותו הדרך כמו שנמצא למעלה, רק שיש בשימוש בזמן המשולש של עלות/צאת בלוח עמודי הוראה, ואין כלל תפקוד גובה בחישובים."
            } else {
                return "This is the latest time a person can fulfill his obligation to say Shma everyday according to the Magen Avraham.\n\n" +
                "The Magen Avraham/Terumat HeDeshen calculate this time as 3 zmaniyot/seasonal hours after Alot HaShachar (Dawn). " +
                "They calculate a zmaniyot/seasonal hour by taking the time between Alot HaShachar (Dawn) and Tzeit Hachocavim (Nightfall) " +
                "of Rabbeinu Tam and divide it into 12 equal parts.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated the same way as above except using the skewed Alot/Tzait of the " +
                "Amudei Horaah calendar, and no elevation is included."
            }
        }
        if title == zmanimNames.getShmaGraString() {
            if Locale.isHebrewLocale() {
                return "זהו הזמן האחרון בו ניתן למלא את חובת קריאת שמע בכל יום, על פי הגר\"א (הגאון רבנו אליהו).  הגר\"א מחשב את הזמן הזה כ-3 שעות זמניות לאחר הזריחה (עם גובה בחשבונות). הגר\"א מחלק את הזמן בין הזריחה והשקיעה (עם גובה בחשבונות) ל-12 חלקים שווים, וכך מתקבלת שעה זמנית אחת.  במצב \"לוח עמודי הוראה\", הזמן הזה מחושב באותו הדרך כמו שנמצא למעלה, רק שאין כלל כל תפקוד גובה בחישובים."
            } else {
                return "This is the latest time a person can fulfill his obligation to say Shma everyday according to the GR\"A " +
                "(HaGaon Rabbeinu Eliyahu)" + "\n\n" +
                "The GR\"A calculates this time as 3 zmaniyot/seasonal hours after sunrise (elevation included). " +
                "The GR\"A calculates a zmaniyot/seasonal hour by taking the time between sunrise and sunset (elevation included) and " +
                "divides it into 12 equal parts.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated the same way as above except no elevation is included."
            }
        }
        if title == zmanimNames.getBrachotShmaString() {
            if Locale.isHebrewLocale() {
                return "זהו הזמן האחרון בו ניתן לאומר ברכות שמע על פי הגר\"א (הגאון רבנו אליהו). בכל זאת, אדם עדיין יכול לאמר פסוקי דזמרה עד חצות.  הגר\"א מחשב את הזמן הזה כ-4 שעות זמניות לאחר הזריחה (עם גובה בחשבונות). הגר\"א מחלק את הזמן בין הזריחה והשקיעה (עם גובה בחשבונות) ל-12 חלקים שווים, וכך מתקבלת שעה זמנית אחת.  במצב \"לוח עמודי הוראה\", הזמן הזה מחושב באותו הדרך כמו שנמצא למעלה, רק שאין כלל כל תפקוד גובה בחישובים."
            } else {
                return "This is the latest time a person can say the Brachot Shma according to the GR\"A. However, a person can still say " +
                "Pisukei D'Zimra until Chatzot.\n\n" +
                "The GR\"A calculates this time as 4 zmaniyot/seasonal hours after sunrise (elevation included). " +
                "The GR\"A calculates a zmaniyot/seasonal hour by taking the time between sunrise and sunset (elevation included) and " +
                "divides it into 12 equal parts.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated the same way as above except no elevation is included."
            }
        }
        if title == zmanimNames.getChatzotString() {
            if Locale.isHebrewLocale() {
                return "זהו אמצע היום ההלכתי, כשהשמש נמצאת בדיוק באמצע השמיים ביחס לאורך היום. יש לשים לב שהשמש יכולה להיות ישירות מעל כל אדם רק בטרופי קרב ובטרופי גדי. בכל מקום אחר, השמש תהיה בזווית גם באמצע היום.  לאחר מהזמן הזה, אין ניתן לאמר עוד את עמידת שמונה עשרה של שחרית, וראוי לומר את תפילת מוסף בהעדפה לפני הזמן הזה.  הזמן הזה מחושב כ-6 שעות זמניות לאחר הזריחה. הגר\"א מחלק את הזמן בין הזריחה והשקיעה (עם גובה בחשבונות) ל-12 חלקים שווים, וכך מתקבלת שעה זמנית אחת.  במצב \"לוח עמודי הוראה\", הזמן הזה מחושב באותו הדרך כמו שנמצא למעלה, רק שאין כלל כל תפקוד גובה בחישובים."
            } else {
                return "This is the middle of the halachic day, when the sun is exactly in the middle of the sky relative to the length of the" +
                " day. It should be noted, that the sun can only be directly above every person, such that they don't even have shadows, " +
                "in the Tropic of Cancer and the Tropic of Capricorn. Everywhere else, the sun will be at an angle even in the middle of " +
                "the day.\n\n" +
                "After this time, you can no longer say the Amidah prayer of Shacharit, and you should preferably say Musaf before this " +
                "time.\n\n" +
                "This time is calculated as 6 zmaniyot/seasonal hours after sunrise. " +
                "The GR\"A calculates a zmaniyot/seasonal hour by taking the time between sunrise and sunset (elevation included) and " +
                "divides it into 12 equal parts.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated the same way as above except no elevation is included."
            }
        }
        if title == zmanimNames.getMinchaGedolaString() {
            if Locale.isHebrewLocale() {
                return "מנחה גדולה, ממשמעותה \"מנחה הגדולה\", היא הזמן המוקדם ביותר בו ניתן לאמר את תפילת מנחה. היא גם הזמן המועדף ביותר לאמר את תפילת מנחה לפי פוסקים שונים.  היא נקראת מנחה גדולה משום שישנה הרבה זמן נותר עד השקיעה.  יש להתחיל לאמר את הפסוקים של קרבנות לאחר מנחה גדולה לכתחילה.  הזמן הזה מחושב כ-30 דקות רגילות לאחר חצות. אך אם זמן זה יותר ארוך בזמניות, אנחנו משתמשים בזמן העונתי במחלוקת לחומרא. הגר\"א מחלק זמן עונתי כך: הוא לוקח את הזמן בין הזריחה והשקיעה (עם גובה בחשבונות) ומחלק אותו ל-12 חלקים שווים. לאחר מכן, הוא מחלק אחד מתוך ה-12 ל-60 לקבלת דקה זמניות.  במצב \"לוח עמודי הוראה\", הזמן הזה מחושב באותו הדרך כמו שנמצא למעלה, רק שאין כלל כל תפקוד גובה בחישובים."
            } else {
                return "Mincha Gedolah, literally \"Greater Mincha\", is the earliest time a person can say Mincha. " +
                "It is also the preferred time a person should say Mincha according to some poskim.\n\n" +
                "It is called Mincha Gedolah because there is a lot of time left until sunset.\n\n" +
                "A person should ideally start saying Korbanot AFTER this time.\n\n" +
                "This time is calculated as 30 regular minutes after Chatzot (Mid-day). However, if the zmaniyot/seasonal minutes are longer," +
                " we use those minutes instead to be stringent. " +
                "The GR\"A calculates a zmaniyot/seasonal hour by taking the time between sunrise and sunset (elevation included) and " +
                "divides it into 12 equal parts. Then we divide one of those 12 parts into 60 to get a zmaniyot/seasonal minute.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated the same way as above except no elevation is included."
            }
        }
        if title == zmanimNames.getMinchaKetanaString() {
            if Locale.isHebrewLocale() {
                return "מנחה קטנה, ממשמעותה \"מנחה הקטנה\", היא הזמן המועדף ביותר לאמר את תפילת מנחה לפי פוסקים שונים.  היא נקראת מנחה קטנה משום שיש בה פחות זמן נותר עד השקיעה.  הזמן הזה מחושב כ-תשע זמניות שעות וחצי לאחר זריחה. הגר\"א מחלק זמן עונתי כך: הוא לוקח את הזמן בין הזריחה והשקיעה (עם גובה בחשבונות) ומחלק אותו ל-12 חלקים שווים. לאחר מכן, הוא מחלק אחד מתוך ה-12 ל-60 לקבלת דקה זמניות."
            } else {
                return "Mincha Ketana, literally \"Lesser Mincha\", is the most preferred time a person can say Mincha according to some poskim.\n\n" +
                "It is called Mincha Ketana because there is less time left until sunset.\n\n" +
                "This time is calculated as 9 and a half zmaniyot/seasonal hours after sunrise. " +
                "The GR\"A calculates a zmaniyot/seasonal hour by taking the time between sunrise and sunset (elevation included) and " +
                "divides it into 12 equal parts. Then we divide one of those 12 parts into 60 to get a zmaniyot/seasonal minute."
            }
        }
        if title.contains(zmanimNames.getPlagHaminchaString()) {
            if Locale.isHebrewLocale() {
                return "פלג המנחה, משמעותה \"חצי מנחה\", היא נקודת האמצע בין מנחה קטנה לשקיעה. מאחר ומנחה קטנה היא שני שעות וחצי לפני השקיעה, פלג המנחה הוא החצי שבה, כלומר שעה ורבע לפני השקיעה.  לפי ההלכה, ניתן להתחיל לאמר את תפילת ערבית לפי דברי רבי יהודה במשמעו בפלג המנחה על פי (ברכות כ\'ו ע\'א).  אדם לא יכול לקבל שבת לפני פלג המנחה.  ההלכה ברורה אומרת לחשב את הזמן הזה על ידי חיסור שעה ו-15 דקות זמניות משקיעה, אך הילקוט יוסף אומר לחשב את זמן פלג המנחה כשעה ו-15 דקות זמניות לפני צאת הכוכבים (13.5 דקות זמניות).  במצב \"לוח עמודי הוראה\", מוצגות שני הדרכים לחישוב זמן פלג המנחה. ההבדל היחיד הוא שזמן צאת הכוכבים של לוח עמודי הוראה בשימוש במקום זמן ה-13.5 דקות זמניות הרגיל. הגר\"א מחלק זמן עונתי כך: הוא לוקח את הזמן בין הזריחה והשקיעה (עם גובה בחשבונות) ומחלק אותו ל-12 חלקים שווים. לאחר מכן, הוא מחלק אחד מתוך ה-12 ל-60 לקבלת דקה זמניות."
            } else {
                return "Plag HaMincha, literally \"Half of Mincha\", is the midpoint between Mincha Ketana and sunset. Since Mincha Ketana is " +
                "2 and a half hours before sunset, Plag is half of that at an hour and 15 minutes before sunset.\n" +
                "You can start saying arvit/maariv by this time according to Rabbi Yehudah in (ברכות כ'ו ע'א).\n\n" +
                "A person should not accept shabbat before this time as well.\n\n" +
                "The Halacha Berurah says to calculate this time by subtracting an hour and 15 zmaniyot minutes from sunset, however, the " +
                "Yalkut Yosef says to calculate it as 1 hour and 15 zmaniyot/seasonal minutes before tzeit (13.5 zmaniyot minutes). \n\n" +
                "In Luach Amudei Horaah mode, both ways to calculate this zman are shown. The only difference is that the tzeit of the " +
                "Amudei Horaah is used instead of the regular 13.5 zmaniyot minutes.\n\n" +
                "The GR\"A calculates a zmaniyot/seasonal hour by taking the time between sunrise and sunset (elevation included) and " +
                "divides it into 12 equal parts. Then we divide one of those 12 parts into 60 to get a zmaniyot/seasonal minute."
            }
        }
        if title.contains(zmanimNames.getCandleLightingString()) {
            if Locale.isHebrewLocale() {
                return "זהו הזמן האידיאלי להדלקת הנרות לפני שבת או חג מתחילים.  כאשר יש הדלקת נרות ביום שהוא יום טוב/שבת קודם ליום אחר שהוא יום טוב, הנרות מדליקים לאחר צאת הכוכבים. אך אם היום הבא הוא שבת, הנרות מדליקים בזמן הרגיל.  הזמן הזה מחושב כ-%c דקות רגילות לפני השקיעה (עם גובה בחשבונות).  לוח אור החיים תמיד מציג את זמן ההדלקה כ-20 דקות לפני השקיעה ו-40 דקות לפני השקיעה."
            } else {
                return "This is the ideal time for a person to light the candles before shabbat/chag starts.\n\n" +
                "When there is candle lighting on a day that is Yom tov/Shabbat before another day that is Yom tov, " +
                "the candles are lit after Tzeit/Nightfall. However, if the next day is Shabbat, the candles are lit at their usual time.\n\n" +
                "This time is calculated as %s " +
                "regular minutes before sunset (elevation included).\n\n" +
                "The Ohr HaChaim calendar always shows the candle lighting time as 20 and 40 minutes before sunset."
            }
        }
        if title == zmanimNames.getSunsetString() {
            if Locale.isHebrewLocale() {
                return "זהו הזמן ביום בו מתחיל עבר מיום ליום הבא, על פי הלכה.  השקיעה ההלכתית מוגדרת כרגע שקרקע השמש נעלם למעלה בקו האופק במהלך השקיעה (עם גובה בחשבונות).  מיד לאחר השקיעה בין השמשות מתחיל, כדאי לשים לב שזה לפי הגאונים.  אבל רבנו תם פוסקת שהשמש ממשיכה לשקוע עוד 58.5 דקות לאחר השקיעה, ורק לאחר מכן מתחיל בין השמשות לאורך עוד 13.5 דקות.  יש לשים לב כי אף על פי מרן זצ\"ל פוסק שיש לומר מנחה עד צאת הכוכבים, הרבה פוסקים, כמו המשנה ברורה, אומרים שיש לאדם לומר את תפילת מנחה לפני השקיעה ולא לפני צאת הכוכבים. רוב המצוות שחייבות להתבצע ביום כדאי לעשותן לפני זמן זה."
            } else {
                return "This is the time of the day that the day starts to transition into the next day according to halacha.\n\n" +
                "Halachic sunset is defined as the moment when the top edge of the sun disappears on the " +
                "horizon while setting (elevation included).\n\n" +
                "Immediately after the sun sets, Bein Hashmashot/twilight starts according to the Geonim, however, according to Rabbeinu Tam " +
                "the sun continues to set for another 58.5 minutes and only after that Bein Hashmashot starts for another 13.5 minutes.\n\n" +
                "It should be noted that many poskim, like the Mishna Berura, say that a person should ideally say mincha BEFORE sunset " +
                "and not before Tzeit/Nightfall.\n\n" +
                "Most mitzvot that are to be done during the day should ideally be done before this time."
            }
        }
        if title == zmanimNames.getTzaitHacochavimString() + " " + zmanimNames.getLChumraString() {
            if Locale.isHebrewLocale() {
                return "זמן זה מחושב כ-20 דקות לאחר השקיעה (עם גובה בחשבונות).  זמן זה חשוב לימי צום ולקביעת הזמן לברית מילה. בערך מדובר בזמן אחרי שקיעה, אך זמן זה אינו יתר לאמירת תפילת מנחה.  זמן זה מוצג באפור בשבת וביום טוב (כפי בהוראת רבנים) כדי למנוע מאנשים לחשוב שהשבת/יום טוב מסתיימים בזמן זה.  במצב \"לוח עמודי הוראה\", הזמן הזה מחושב על ידי מציאת הכמות של דקות בין השקיעה ו-5.3 מעלות מתחת לאופק ביום שווה, ולאחר מכן אנחנו מוסיפים את מיניות הכמות ההיא לשקיעה כדי לקבוע את הזמן של צאת. אנחנו משתמשים ב-5.3 מעלות מתחת לאופק משום שזהו הזמן שבו מתוך 20 דקות לאחר השקיעה בארץ ישראל."
            } else {
                return "This time is calculated as 20 minutes after sunset (elevation included).\n\n" +
                "This time is important for fast days and deciding when to do a brit milah. Otherwise, it should not be used for anything else like the latest time for mincha.\n\n" +
                "This time is shown in gray on shabbat and yom tov (as advised by my rabbeim) in order to not let people think that shabbat/yom tov ends at this time.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated by finding out the the amount of minutes between sunset and 5.3 " +
                "degrees below the horizon on a equal day, then we add that amount of zmaniyot minutes to sunset to get the time of " +
                "Tzeit/Nightfall. We use 5.3 degrees below the horizon because that is the time when it is 20 minutes after sunset in Israel."
            }
        }
        if title == zmanimNames.getTzaitHacochavimString() {
            if Locale.isHebrewLocale() {
                return "צאת הכוכבים היא הזמן שבו מתחיל היום ההלכתי הבא לאחר שעין השמש מסתיימת.  זהו הזמן האחרון שבו ניתן לאמר את תפילת מנחה לפי דעת רב עובדיה יוסף זצ\"ל. אדם צריך להתחיל את תפילת מנחה לפחות 2 דקות לפני זמן זה.  הזמן הזה מוצג באפור בשבת וביום טוב (כפי הוראת רבנים) כדי למנוע מאנשים לחשוב שהשבת/יום טוב מסתיימים בזמן זה.  הזמן הזה מחושב כ-13.5 דקות זמניות לאחר השקיעה (עם גובה בחשבונות).  הגר\"א מחלק זמן עונתי כך: הוא לוקח את הזמן בין הזריחה והשקיעה (עם גובה בחשבונות) ומחלק אותו ל-12 חלקים שווים. לאחר מכן, הוא מחלק אחד מתוך ה-12 ל-60 לקבלת דקה זמניות.  במצב \"לוח עמודי הוראה\", הזמן הזה מחושב על ידי מציאת הכמות של דקות בין השקיעה ו-3.75 מעלות מתחת לאופק ביום שווה, ולאחר מכן אנחנו מוסיפים את מיניות הכמות ההיא לשקיעה כדי לקבוע את הזמן של צאת. אנחנו משתמשים ב-3.75 מעלות מתחת לאופק משום שזהו הזמן שבו מתוך 13.5 דקות לאחר השקיעה בארץ ישראל."
            } else {
                return "Tzeit/Nightfall is the time when the next halachic day starts after Bein Hashmashot/twilight finishes.\n\n" +
                "This is the latest time a person can say Mincha according Rav Ovadiah Yosef Z\"TL. A person should start mincha at " +
                "least 2 minutes before this time.\n\n" +
                "This time is shown in gray on shabbat and yom tov (as advised by my rabbeim) in order to not let people think that shabbat/yom tov ends at this time.\n\n" +
                "This time is calculated as 13 and a half zmaniyot/seasonal minutes after sunset (elevation included).\n\n" +
                "The GR\"A calculates a zmaniyot/seasonal hour by taking the time between sunrise and sunset (elevation included) and " +
                "divides it into 12 equal parts. Then we divide one of those 12 parts into 60 to get a zmaniyot/seasonal minute.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated by finding out the the amount of minutes between sunset and 3.75 " +
                "degrees below the horizon on a equal day, then we add that amount of zmaniyot minutes to sunset to get the time of " +
                "Tzeit/Nightfall. We use 3.75 degrees below the horizon because that is the time when it is 13.5 minutes after sunset in Israel."
            }
        }
        if title == zmanimNames.getTzaitString() + zmanimNames.getTaanitString() + zmanimNames.getEndsString() + " " + zmanimNames.getLChumraString() {
            if Locale.isHebrewLocale() {
                return "זמן זה הוא זמן יותר מחמיר שבו מסתיימת התענית. זמן זה על פי דעת חכם בן ציון אבא שאול זצ\"ל.  זמן זה מחושב כ-30 דקות רגילות לאחר השקיעה (עם גובה בחשבונות)."
            } else {
                return "This is a more stringent time that the fast/taanit ends. This time is according to the opinion of Chacham Ben Zion Abba" +
                " Shaul.\n\n" +
                "This time is calculated as 30 regular minutes after sunset (elevation included)."
            }
        }
        if title == zmanimNames.getTzaitString() + zmanimNames.getTaanitString() + zmanimNames.getEndsString() {
            if Locale.isHebrewLocale() {
                return "זהו הזמן בו מסתיימת התענית.  זמן זה מחושב כ-20 דקות רגילות לאחר השקיעה (עם גובה בחשבונות).  נכתב בהלכה ברורה שבאחת מהפעמים, הרב עובדיה יוסף זצ\"ל נסע לניו יורק ואמר לבנו, הרב דוד יוסף שליט\"א, שהתענית מסתיים 13.5 דקות זמניות לאחר השקיעה. אך בספרו \"חזון עובדיה\" כתב שהתענית מסתיים כ-20 דקות לאחר השקיעה.  בלוח אור החיים כתוב שהתענית מסתיים בצאת הכוכבים. שאלתי את הרב בניזרי אם זה אומר שהתענית מסתיים 13.5 דקות זמניות לאחר השקיעה והוא אמר, \"לא בהכרח, הלוח פשוט אומר שהתענית מסתיים בצאת הכוכבים, אדם יכול לסיים את התענית 20 דקות לאחר השקיעה אם הוא רוצה להחמיר.\" אני שאלתי אותו האם ה-20 דקות הם דקות זמניות או רגילות והוא אמר, \"דקות רגילות.\"  בסיכום: אם אדם רוצה לסיים את התענית 13.5 דקות זמניות לאחר השקיעה, יש לו את הזכות לעשות זאת. אך אם אדם רוצה להחמיר, הוא יכול לסיים את התענית 20 דקות לאחר השקיעה."
            } else {
                return "This is the time that the fast/taanit ends.\n\n" +
                "This time is calculated as 20 regular minutes after sunset (elevation included).\n\n" +
                "It is brought down in Halacha Berurah that Rabbi Ovadiah Yosef Z\"TL was once traveling in New York and he said to his son, " +
                "Rabbi David Yosef Shlita, that the fast ends 13.5 zmaniyot minutes after sunset. However, in his sefer Chazon Ovadiah, he " +
                "writes that the fast ends 20 minutes after sunset.\n\n" +
                "In the Ohr HaChaim calendar, they write that the fast ends at Tzait Hacochavim. I asked Rabbi Benizri if this meant that " +
                "the fast ends at 13.5 zmaniyot minutes after sunset and he said, \"Not necessarily, the calendar just says that the fast ends " +
                "at Tzait Hacochavim, a person can end the fast at 20 minutes " +
                "after sunset if he wants to be stringent.\" I then asked him if those 20 minutes are zmaniyot minutes or regular minutes " +
                "and he said, \"Regular minutes.\"\n\n" +
                "To summarize: If a person wants to end the fast at 13.5 zmaniyot minutes after sunset, he has the right to do so. However, if a person wants to " +
                "be stringent, he can end the fast at 20 minutes after sunset."
            }
        }
        if title.contains("Shabbat Ends") || title.contains("Chag Ends") || title.contains("Tzait Shabbat") || title.contains("Tzait Chag") || title.contains("צאת שבת/חג") || title.contains("צאת שבת") || title.contains("צאת חג") {
            if Locale.isHebrewLocale() {
                return "זהו הזמן בו מסתיימת שבת/חג.  שימו לב שישנן הרבה מנהגים לגבי מתי מסתיימת שבת, כברירת מחדל, הוא מוגדר להיות 40 דקות רגילות לאחר השקיעה (עם גובה בחשבונות) מחוץ לארץ ישראל ו-30 דקות רגילות לאחר השקיעה בתוך ארץ ישראל. השתמשתי ב-40 דקות משום שהרב מאיר גבריאל אלבז שליט\"א אמר לי שבכל מקום מחוץ לארץ ישראל, אם אדם מחכה 40 דקות רגילות לאחר השקיעה, זהו זמן מספיק לסיום שבת. באפשרותך לשנות את הזמן הזה בהגדרות כדי להתאים למנהגי הקהילה שלך.  זמן זה מחושב כ-%s דקות רגילות לאחר השקיעה (עם גובה בחשבונות).  במצב \"לוח עמודי הוראה\", הזמן הזה מחושב על ידי שימוש בזווית של 7.14 מעלות. אנו משתמשים בזווית זו משום שהרב עובדיה יוסף זצ\"ל הורה שבנוגע למוצאי שבת, הזמן המצוין צריך להיות 30 דקות קבועות לאחר השקיעה. הזווית הזו מופרשת כ-30 דקות לאחר השקיעה לכל אורך השנה בארץ ישראל."
            } else {
                return "This is the time that Shabbat/Chag ends.\n\n" +
                "Note that there are many customs on when shabbat ends, by default, it is set to 40 regular minutes after sunset (elevation " +
                "included) outside of Israel and 30 regular minutes after sunset inside Israel. I used 40 minutes because Rabbi Meir Gavriel " +
                "Elbaz Shlita has told me that anywhere outside of Israel, " +
                "if you wait 40 regular minutes after sunset, that is enough time to end shabbat." +
                "You can change this time in the settings to accommodate your communities minhag.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated by using a degree of 7.14. We use this degree because " +
                "Rabbi Ovadiah Yosef ZT\"L ruled that regarding Motzeh Shabbat the listed time should be set as 30 fixed minutes after " +
                "sunset. This degree is interpreted as 30 minutes after sunset all year round in Israel."
            }
        }
        if title == zmanimNames.getRTString() {
            if Locale.isHebrewLocale() {
                return "זמן זה הוא זמן הצאת הכוכבים לפי רבינו תם.  צאת הכוכבים הוא הזמן בו מתחיל היום ההלכתי הבא לאחר הסיום של בין השמשות.  זמן זה מחושב כ-72 דקות זמניות לאחר השקיעה (עם גובה בחשבונות). לפי רבינו תם, אלו 72 דקות מורכבות משני חלקים. החלק הראשון הוא 58 וחצי דקות עד השקיעה השנייה (ראו פסחים 94א ותוספות שם). לאחר השקיעה השנייה ישנן 13.5 דקות נוספות עד הצאת הכוכבים.  הגר\"א מחשב דקה זמנית על ידי חלוקת הזמן בין הזריחה והשקיעה (עם גובה בחשבונות) ל-12 חלקים שווים. לאחר מכן אנו מחלקים את אחד מתוך 12 החלקים ל-60 דקות זמניות לצורך חישוב 72 דקות. אופן חישוב זה נעשה על מנת לחשב 72 דקות על פי השיטה הראשונה. אופן חישוב נוסף הוא על ידי חישוב מספר הדקות בין הזריחה והשקיעה, ולאחר מכן חלוקת התוצאה ב-10, והוספת התוצאה לשעת השקיעה. האפליקציה משתמשת בשיטה הראשונה.  במצב \"לוח עמודי הוראה\", זמן זה מחושב על ידי חישוב כמה דקות נמצאות בין השקיעה ל-72 דקות כמעלות (16.01) לאחר השקיעה ביום שאורך היום והלילה מוכרחים להיות שווים כאשר הזריחה והשקיעה מתרחשות בסביבות 12 שעות אחרי השעות האחרונות. לאחר מכן אנו מוסיפים את התוצאה הזו לשעת השקיעה כדי לקבוע את זמן רבינו תם. הזמן הוא על פי ההלכה בירושלים ובאזורים צפוניים או דרומיים יותר. הלכה ברורה מציינת שזו הדרך לחשב את הזמן בגלל שהיא טובה יותר על פי הטבע של העולם, אף שלא נראה שהרב עובדיה יוסף זצ\"ל או ילקוט יוסף מסכימים עם דעה זו. לא נכלל פה רמות הגובה.  שימו לב שהרב עובדיה יוסף זצ\"ל היה בעד להחמיר ולהחזיק בזמן רבינו תם בלכלל, בין אם זה היה קורה לפני או לאחר 72 דקות רגילות לאחר השקיעה. אך במצב \"לוח עמודי הוראה\", אנו משתמשים בזמן הפחות מבין השניים."
            } else {
                return "This time is Tzeit/Nightfall according to Rabbeinu Tam.\n\n" +
                "Tzeit/Nightfall is the time when the next halachic day starts after Bein Hashmashot/twilight finishes.\n\n" +
                "This time is calculated as 72 zmaniyot/seasonal minutes after sunset (elevation included). " +
                "According to Rabbeinu Tam, these 72 minutes are made up of 2 parts. The first part is 58 and a half minutes until the " +
                "second sunset (see Pesachim 94a and Tosafot there). After the second sunset, there are an additional 13.5 minutes until " +
                "Tzeit/Nightfall.\n\n" +
                "The GR\"A calculates a zmaniyot/seasonal hour by taking the time between sunrise and sunset (elevation included) and " +
                "divides it into 12 equal parts. Then we divide one of those 12 parts into 60 to get a zmaniyot/seasonal minute in order " +
                "to calculate 72 minutes. Another way of calculating this time is by calculating how many minutes are between sunrise and " +
                "sunset. Take that number and divide it by 10, and then add the result to sunset. The app uses the first method.\n\n" +
                "In Luach Amudei Horaah mode, this time is calculated by finding out how many minutes " +
                "are between sunset and 72 minutes as degrees (16.0) after sunset on a equal day with sunrise and sunset set around 12 " +
                "hours apart. Then we take those minutes and make them zmaniyot according to the GR\"A and we add that time to " +
                "sunset to get the time for Rabbeinu Tam. This is according to the Halacha Berurah and this should only be done outside of " +
                "Israel in more northern or southern areas. The Halacha Berurah writes to do this because it is more according to the nature " +
                "of the world, however, it does not seem like Rabbi Ovadiah Yosef ZT\"L or the Yalkut Yosef agrees with this opinion. " +
                "Elevation is not included in Luach Amudei Horaah mode.\n\n" +
                "It should be noted that Rabbi Ovadiah Yosef ZT\"L was of the opinion to keep the zmaniyot zman of rabbeinu tam whether or " +
                "not it fell out before or after 72 regular minutes after sunset. However, in Luach Amudei Horaah mode, we use the lesser of " +
                "the two times."
            }
        }
        if title == zmanimNames.getChatzotLaylaString() {
            if Locale.isHebrewLocale() {
                return "זהו זמן אמצע הלילה ההלכתי, כאשר השמש נמצאת בדיוק באמצע השמיים מתחת לנו.  מומלץ לסיים את מלווה מלכא לפני זמן זה.  זמן זה מחושב כ-6 שעות זמניות לאחר השקיעה. הגר\"א מחשב שעה זמנית על ידי חלוקת הזמן בין הזריחה והשקיעה (עם גובה בחשבונות) ל-12 חלקים שווים."
            } else {
                return "This is the middle of the halachic night, when the sun is exactly in the middle of the sky beneath us.\n\n" +
                "It is best to have Melaveh Malka before this time.\n\n" +
                "This time is calculated as 6 zmaniyot/seasonal hours after sunset. " +
                "The GR\"A calculates a zmaniyot/seasonal hour by taking the time between sunrise and sunset (elevation included) and " +
                "divides it into 12 equal parts.\n\n"
            }
        }
        if title.contains("וּלְכַפָּרַת פֶּשַׁע") {
            if Locale.isHebrewLocale() {
                return "כאשר ראש חודש חולף במהלך שנה מעוברת, אנו מוסיפים את המילים \"וּלְכַפָּרַת פֶּשַׁע\" בתוך תפילת מוסף. אנו מוסיפים את המילים הללו מחודש תשרי עד החודש השני של אדר. אך לשאר השנה ובשנים רגילות, אין אנו אומרים את המילים הללו. (חזון עובדיה חנוכה שו)"
            } else {
                return "When Rosh Chodesh happens during a leap year, we add the words, \"וּלְכַפָּרַת פֶּשַׁע\" during Musaf. We only add these words from Tishri until the second month of Adar. However, for the rest of the year and during non leap years we do not say it. (Chazon Ovadiah Chanukah 306)"
            }
        }
        if title.contains("Tekufa ".localized()) {
            if Locale.isHebrewLocale() {
                return """
                התקופות של השנה סולרית נחלקו לארבע חלקים: ניסן, תמוז, תשרי וטבת
                
                - על פי קבלה, יש למנות נשתיית מים בזמן של מתג תקופה עצמו, כמו שכתב הרמ"א (יורה דעה 116:5). למרות שהמנהג הג'רבא היה להרחיב את האזהרה הזאת לפניה ולאחריה לשעה וחצי (רמ"ך בברית כהונה - חלק אורח חיים מערכת ת' אותיות כ"א-כ"ה), מרן זצ"ל כתב (הליכות עולם, חלק שביעי, דף קפ"ג) שצריך רק שליש מזמן הזה (אז רק חצי שעה)
                - שישים יום אחר תקופת תשרי, מחליפים את הנוסח של הברכה התשעי בשמוני עשרה (ברך עלינו). בלוח השנה הגרגוריאני, זה נופל ב-December 4th או ב-December 5th
                
                ---
                
                לדעת מתי התקופה הבה, תיקח הזמן של התקופה שעבר ותסיף את עורך השנה חלקי כמות תקפות (4). לפי שמואל (בבלי ערובין נו), הערך השנה מעוגל כלפי מעלה מהערך האסטרונומי, לפי שזה קל יותר לעקוב אחריו (חזון איש, אורח חיים 138:4). לכן, כיוון שערך השנה של שמואל הוא 365.25 ימים, לפיכך, חלוקתה ב-4 נותנת לנו 91 ימים, 7 שעות ו-30 דקות.
                
                עוד מחלוקת יש בזמן עצמה: האם התקופה הראשונה התחיל מזמן השווה של 12:00 או הזמן של חצות בישראל. למרות שלוח אור חיים פסק בשעה שווה, התנובות שדה (רב אהרן ברון) מתנגד לכך בשל האופי השרירותי של שעה 12:00. לפיכך, הלוח עמודי הוראה פסק בשיטת של חצות (11:39), שרק -21 דקות שווה בהן. לחמרת הקבלה, יכולים ללך אחר שניהם אם תתחיל בזמן של הרב ברון ותסיים אם הזמן של הלוח אור החיים.
                """
            } else {
                return """
Tekufot are the Halachic equivalents of the yearly seasons, which we have four of yearly; Nissan/Spring, Tammuz/Summer, Tishri/Fall & Tevet/Winter. These are based on the solar year, due to being astronomical in nature.

- There is a Kabalistic warning not to drink water during the time of the Tekufah switch itself, as written down by the Rama (Yoreh De'ah 116:5). Although the Djerban minhag was to extend this for an hour and a half prior and following this time (רמ"ך בברית כהונה - חלק אורח חיים מערכת ת' אותיות כ"א-כ"ה), Maran zt"l writes (Halichot Olam, Chelek 7, Page 183) one need only wait one third of that time (half an hour following and prior)
- 60 days after Tekufat Tishri, outside of Israel, we switch the text of the Shemoneh Esreh's 9th Beracha (ברך עלינו). In the Gregorian calendar, this matches to December 4th or December 5th.

---

To determine when the next Tekufah is, get the known date of the previous Tekufah and add the length of the year divided by the amount of seasons (4). The length of a year, according to Shemuel in Bavli Eruvin, 56a, is a rounded up version of the astronomical length of a year, for the sake of being easier to keep track of (Hazon Ish - OC Siman 138, se’if katan 4). Thereby, since his length of a year is 365.25 days, dividing it by 4 gives us 91 days, 7 hours and 30 minutes.

A further Makhloket is whether the first Tekufah used a fixed clock time of 12:00 PM or used local Israel Hatzot. Although the Ohr Hachaim calendar uses the fixed clock time like Rav Tuchanski does in his calendar, the תנובות שדה (Rav Aharon Boron) takes issue with this due to the arbitrary nature of a 12:00 midpoint. As such, the עמודי הוראה calendar (as well with the unofficial לוח ילקוט יוסף) uses the local Israel Hatzot time of 11:39 AM, which is only a -21 minute difference. For the water warning above, it is possible to accommodate both by starting from half an hour before R Boron's time and finishing half an hour after the time listed in the Ohr Hachaim calendar.
"""
            }
        }
        if title.contains("Tachanun".localized()) || title.contains("צדקתך") {
            if Locale.isHebrewLocale() {
                return "כאן רשימת הימים בהם אין לומר תחנון:\n\nראש חודש\nכל חודש ניסן\nפסח שני (י\"ד באייר)\nל\"ג בעומר\nראש חודש סיון עד י\"ב בסיון (כולל)\nתשעה באב\nט\"ו באב\nערב ראש השנה וראש השנה\nערב יום כיפור ויום כיפור\nמיום י\"א בתשרי עד סוף תשרי\nכל חנוכה\nט\"ו בשבט\nי\"ד וט\"ו באדר א\' ובאדר ב\'\nכל שבת\nכל ערב ראש חודש\nתענית אסתר\nתשעה באב\nט\"ו בשבט\nל\"ג בעומר\nפסח שני\n\nליום ירושלים ויום העצמאות, מכיוון שיש תחומים, פשוט רק שכתבנו שישנם אומרים שאין לומר תחנון וישנם שאומרים שיש. לפי הרב מאיר גבריאל אלבז, מנהגו של הרב עובדיה זצ\"ל היה לסקוט תחנון רק ביום ירושלים. לא ביום לפניו ולא ביום העצמאות. עם זאת, לפי הרב יונתן נקסון, מותר לדלג על תחנון בשני הימים.\n\nשימו לב כי יש עוד פעמים שלא נוהגים לומר תחנון, אך רשימה זו מתייחסת רק לימים בהם אין תחנון. במקרים מסוימים יש אפשרות לדלג על תחנון אם רוב המתפללים הם אבלים או אם יש שמחה."
            } else {
                return "Here is a list of days with no tachanun:\n\nRosh Chodesh\nThe entire month of Nissan\nPesach Sheni (14th of Iyar)\nLag Ba\'Omer\nRosh Chodesh Sivan until the 12th of Sivan (12th included)\n9th of Av\n15th of Av\nErev Rosh Hashanah and Rosh Hashanah\nErev Yom Kippur and Yom Kippur\nFrom the 11th of Tishrei until the end of Tishrei\nAll of Chanukah\n15th of Shevat\n14th and 15th of Adar I and Adar II\nEvery Shabbat\nEvery Erev Rosh Chodesh\nFast of Esther\nTisha Be\'av\nTu Be\'Shvat\nLag Ba\'Omer\nPesach Sheni\n\nFor Yom Yerushalayim and Yom Ha\'atzmaut, since there is a debate, we simply wrote that some say tachanun and some don\'t. According to Rabbi Meir Gavriel Elbaz, the minhag of Rabbi Ovadiah ZT\"L was to only skip tachanun on the day of Yom Yerushalayim. Not the day before it or on Yom Ha\'atzmaut. However, according to Rabbi Yonatan Nacson, you are allowed to skip tachanun on both days.\n\nNote that there are other times you should not say tachanun, but this list is only for days with no tachanun. Sometimes you can skip tachanun if there are mourners making up majority of the minyan or if there is a simcha (joyous occasion)."
            }
        }
        if title.contains("Three Weeks".localized()) || title.contains("Nine Days".localized()) || title.contains("Shevuah Shechal Bo".localized()) {
            if Locale.isHebrewLocale() {
                return "בזמן שלושת השבועות/תשעת הימים/שבוע שחל בו יש חוקים מסוימים: \n\nשלושת השבועות:\nאסור להאזין למוזיקה.\nמומלץ לדחות את ברכת שהחיינו למקום שבו ניתן.\n\nתשעת הימים:\nאסור להאזין למוזיקה.\nמומלץ לדחות את ברכת שהחיינו למקום שבו ניתן.\nמומלץ לדחות כל פעולות בנייה.\nאסור לערוך חתונות.\nאסור לרכוש בגדים חדשים (אלא אם יש צורך גדול, לדוגמה: מבצע).\nאסור לאכול בשר או יין (אכן בראש חודש ובשבת מותר).\nאסור ללבוש בגדים חדשים לגמרי.\n\nשבוע שחל בו:\nאסור להאזין למוזיקה.\nמומלץ לדחות את ברכת שהחיינו למקום שבו ניתן.\nאסור לערוך פעולות בנייה.\nאסור לערוך חתונות.\nאסור לרכוש בגדים חדשים (אלא אם יש צורך גדול, לדוגמה: מבצע).\nאסור לאכול בשר או יין.\nאסור ללבוש בגדים חדשים לגמרי.\nאסור להסתפר או לגלח את הזקן (רק לגברים).\nאסור לשחות (במים חמים).\nאסור לרחוץ (במים חמים).\nאסור לכבס.\nאסור ללבוש בגדים שנכבסו פרט לבגדי תחתית."
            } else {
                return "During the time of the Three weeks/Nine days/Shevuah shechal bo certain restrictions apply:\n\nThree Weeks:\nNo listening to music\nBetter to delay shehechiyanu\n\nNine Days:\nNo listening to music\nBetter to delay shehechiyanu\nBetter to delay any construction\nNo weddings\nNo purchasing new clothing (unless there is great need ex: a sale)\nNo consumption of meat or wine (excludes Rosh Chodesh and Shabbat)\nNo wearing brand new clothing\n\nShevuah Shechal Bo:\nNo listening to music\nBetter to delay shehechiyanu\nNo construction\nNo weddings\nNo purchasing new clothing (unless there is great need ex: a sale)\nNo consumption of meat or wine\nNo wearing brand new clothing\nNo taking haircuts or shaving (Men Only)\nNo swimming (with hot water)\nNo showering (with hot water)\nNo laundry\nNo wearing freshly laundered clothing (excludes undergarments)\n"
            }
        }
        if title.contains("ברכת החמה") || title.contains("Birchat HaChamah") {
            if Locale.isHebrewLocale() {
                return "ברכת החמה נאמרת היום! זהו אירוע המתרחש פעם אחת בכל 28 שנה, ואדם צריך להיות זהיר כדי לברך על השמש בשעות הראשונות של הבוקר ביום זה. לפי רוב הפוסקים, אפשר לברך על השמש כל יום, אך רב עובדיה יוסף זצ\"ל כותב בחזון עובדיה ברכות כי אדם צריך לנסות לברך על השמש עד לפחות 3 שעות זמניות לאחר תחילת היום. אם הזמן הזה עובר, הוא צריך לברך על השמש בלי שם השם. לכן, מנהג עם ישראל הוא להתעורר בבוקר מוקדם ולהתפלל בנץ ביום זה, ולאחר העמידה (קדיש תתקבל), הם יוצאים החוצה כדי לברך על השמש."
            }
            return "Birchat HaChamah is said today! This occurs once every 28 years, and a person should be careful to say the beracha on the sun early in the morning on this day.\n\nAccording to many poskim, you can say the beracha on the sun all day, however, Rabbi Ovadiah Yosef ZT\"L writes in Chazon Ovadiah Berachot that a person should try to say the beracha before 3 zmaniyot hours into the day. If this time passes, he should say the beracha without hashem\'s name.\n\n Therefore, the minhag of Am Yisrael is to wake up early and pray at Netz on this day and after the Amidah (Kadish Titkabal), they go outside to say the beracha."
        }
        if title.contains("ברכת הלבנה") || title.contains("Birchat HaLevana") {
            if Locale.isHebrewLocale() {
                return "ברכת הלבנה, המכונה גם קידוש לבנה, היא ברכה שאנו אומרים פעם בחודש על הירח כמה ימים לאחר שהוא מגיע למצבו החדש. (שולחן ערוך אורח חיים סימן תכו)\n\nמומלץ לומר ברכה זו עם מנין במוצאי שבת עם חליפה נאה. (מעם לועז בראשית א:יד)\n\nזמן הברכה מתחיל 3 ימים לאחר המולד (חודש החדש), אך הרב עובדיה יוסף זצ\"ל (וספרדים בכלל) ממליצים להמתין עד 7 ימים לאחר המולד לברך. זמן זה מסתיים ביום ה-15 בכל חודש עברי לפי הרב עובדיה יוסף. (הליכות עולם חלק ה אות ט\"ז)"
            } else {
                return "Birchat Halevana, also known as Kiddush Levana and \"The blessing for the new moon\", is a beracha we say once a month on the moon a few days after it reaches it\'s new waning phase. (שולחן ערוך אורח חיים סימן תכו)\n\nIt is ideal to say this blessing with a minyan on Saturday night with a nice suit on. (מעם לועז בראשית א:יד)\n\nThe time period for this blessing starts from 3 days after the Molad (new moon), however, Rabbi Ovadiah Yosef ZT\"L (and sephardim in general) recommend to wait until 7 days after the molad to make the beracha. This time period ends on the 15th of every hebrew month according to Rabbi Ovadiah Yosef. (הליכות עולם חלק ה אות ט\"ז)"
            }
        }
        
        return ""
    }
    
}
