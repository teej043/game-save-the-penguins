// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


/// @func						date_format(_format, _datetime)
///
/// @desc						Returns a formatted string generated from a date-time.
///								If no date-time value is given, the current time is used. 
///								Find additional notes and format examples below.
///
/// @param _format {string}      string controlling date formatting
/// @param _datetime {real}		optional date-time value
///
/// @return {string}			the formatted date-time
///
/// Day format characters:
///     d - day of the month with leading zeros, 2 digits with leading zeros; 01 through 31
///     D - day of the week, textual, 3 letters; Fri
///     j - day of the month with_out leading zeros; 1 through 31
///     l - day of the week, textual, long; Friday
///     N - ISO 8601 day number of the week; 1 (Monday) through 7 (Sunday)
///     S - English ordinal suffix, textual, 2 characters; st, nd, rd, th
///     w - day of the week, numeric, 0 (Sunday) through 6 (Saturday)
///     z - day of the year (starting from zero); 0 through 365
///
/// Week format characters:
///     W - ISO 8601 week number of year, weeks starting on Monday; 42
///
/// Month format characters:
///     F - month, textual, long; January
///     m - month with leading zeros; 01 through 12
///     M - month, textual, 3 letters; Jan
///     n - month with_out leading zeros; 1 through 12
///     t - number of days in the given month; 28 through 31
///
/// Year format characters:
///     L - whether it is a leap year; 0 or 1
///     o - ISO 8601 year, like Y unless ISO week belongs to prev or next year; 2008
///     Y - year, 4 digits; 1999
///     y - year, 2 digits; 99
///
/// Time format characters:
///     a - lowercase Ante meridiem and Post meridiem; am or pm
///     A - uppercase Ante meridiem and Post meridiem; AM or PM
///     g - hour, 12-hour format with_out leading zeros; 1 through 12
///     G - hour, 24-hour format with_out leading zeros; 0 through 23
///     h - hour, 12-hour format; 01 through 12
///     H - hour, 24-hour format; 00 through 23
///     i - minutes, with leading zero; 00 through 59
///     s - seconds, with leading zero; 00 through 59
///
/// Full Date/Time format characters:
///     c - ISO 8601 extended format date; 2004-02-12T15:19:21
///     r - RFC 2822 formatted data; Thu, 21 Dec 2000 16:01:07 -0000
///     U - seconds since the Unix epoch
///
///     \ - next character _output literally, not interpreted (see note below)
///
/// Note: \ (backslash) is an "escape" character in standard strings and must itself
///     be escaped. For instance, \t is interpreted as the TAB character in a standard
///     string; when written as \\t, a literal "t" is produced by this function instead.
///     However, GameMaker Studio 2 also has "verbatim" strings which do not use escape
///     sequences. These are literal strings prefixed by an @ symbol. Backslashes in
///     these do not require escaping and \t would produce a literal "t" not a TAB.
///
/// Examples:
///     date_format("l jS \\of F Y h:i:s A") == "Sunday 4th of May 2008 05:45:34 PM"
///     date_format("\\I\\t \\i\\s \\t\\h\\e zS \\d\\a\\y.") == "It is the 124th day."
///     date_format(@"\I\t \i\s \t\h\e zS \d\a\y.") == "It is the 124th day."
///
/// GMLscripts.com/license

function date_format(_format, _datetime=date_current_datetime())
{
    var _out = "";
    var _day, _month, _year, _week, _weekday, _second, _minute, _hour24, _hour12;
    _day     = date_get_day(_datetime);
    _month   = date_get_month(_datetime);
    _year    = date_get_year(_datetime);
    _week    = date_get_week(_datetime);
    _weekday = date_get_weekday(_datetime);
    _second  = date_get_second(_datetime);
    _minute  = date_get_minute(_datetime);
    _hour24  = date_get_hour(_datetime);
    _hour12  = ((_hour24 + 23) mod 12) + 1;
    for (var _i = 1; _i <= string_length(_format); _i += 1) {
        var _c = string_char_at(_format, _i);
        switch (_c) {
        case "F":
            switch (_month) {
            case 1:  _out += "January";   break;
            case 2:  _out += "February";  break;
            case 3:  _out += "March";     break;
            case 4:  _out += "April";     break;
            case 5:  _out += "May";       break;
            case 6:  _out += "June";      break;
            case 7:  _out += "July";      break;
            case 8:  _out += "August";    break;
            case 9:  _out += "September"; break;
            case 10: _out += "October";   break;
            case 11: _out += "November";  break;
            case 12: _out += "December";  break;
            }
            break;
        case "M":
            switch (_month) {
            case 1:  _out += "Jan"; break;
            case 2:  _out += "Feb"; break;
            case 3:  _out += "Mar"; break;
            case 4:  _out += "Apr"; break;
            case 5:  _out += "May"; break;
            case 6:  _out += "Jun"; break;
            case 7:  _out += "Jul"; break;
            case 8:  _out += "Aug"; break;
            case 9:  _out += "Sep"; break;
            case 10: _out += "Oct"; break;
            case 11: _out += "Nov"; break;
            case 12: _out += "Dec"; break;
            }
            break;
        case "l":
            switch (_weekday) {
            case 0: _out += "Sunday";    break;
            case 1: _out += "Monday";    break;
            case 2: _out += "Tuesday";   break;
            case 3: _out += "Wednesday"; break;
            case 4: _out += "Thursday";  break;
            case 5: _out += "Friday";    break;
            case 6: _out += "Saturday";  break;
            }
            break;
        case "D":
            switch (_weekday) {
            case 0: _out += "Sun"; break;
            case 1: _out += "Mon"; break;
            case 2: _out += "Tue"; break;
            case 3: _out += "Wed"; break;
            case 4: _out += "Thu"; break;
            case 5: _out += "Fri"; break;
            case 6: _out += "Sat"; break;
            }
            break;
        case "S":
            if (_day >= 10 && _day <= 20) _out += "th";
            else if ((_day mod 10) == 1) _out += "st";
            else if ((_day mod 10) == 2) _out += "nd";
            else if ((_day mod 10) == 3) _out += "rd";
            else                        _out += "th";
            break;
        case "o":
            if (_month ==  1 && _day <=  3 && _week != 1) { _out += string(_year - 1); break; }
            if (_month == 12 && _day >= 29 && _week == 1) { _out += string(_year + 1); break; }
        case "Y": _out += string(_year); break;
        case "y": _out += string_copy(string(_year),3,2); break;
        case "m": if (_month < 10) _out += "0";
        case "n": _out += string(_month); break;
        case "d": if (_day < 10) _out += "0";
        case "j": _out += string(_day); break;
        case "H": if (_hour24 < 10) _out += "0";
        case "G": _out += string(_hour24); break;
        case "h": if (_hour12 < 10) _out += "0";
        case "g": _out += string(_hour12); break;
        case "i": if (_minute < 10) _out += "0"; _out += string(_minute); break;
        case "s": if (_second < 10) _out += "0"; _out += string(_second); break;
        case "a": if (_hour24 < 12) _out += "am" else _out += "pm"; break;
        case "A": if (_hour24 < 12) _out += "AM" else _out += "PM"; break;
        case "U": _out += string(floor(date_second_span(_datetime, 25569))); break;
        case "z": _out += string(date_get_day_of_year(_datetime) - 1); break;
        case "t": _out += string(date_days_in_month(_datetime)); break;
        case "L": _out += string(date_leap_year(_datetime)); break;
        case "w": _out += string(_weekday); break;
        case "N": _out += string(((_weekday + 6) mod 7) + 1); break;
        case "W": _out += string(_week); break;
        case "c": _out += date_format("o-m-dTH:i:s", _datetime); break;
        case "r": _out += date_format("D, d M Y H:i:s +0000", _datetime); break;
        case "\\": _i += 1; _c = string_char_at(_format, _i);
        default:  _out += _c; break;
        }
    }
    return _out;
}