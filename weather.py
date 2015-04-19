# -*- mode:python; coding:utf-8; -*-
# author: Ruslan Pisarev

from urllib2 import urlopen, URLError
from json import loads, dumps
from datetime import datetime, time
from calendar import TimeEncoding, day_abbr

from html_templates import html_weather


__all__ = ["weather_data"]


locales = {
    "en": "en_US.utf8",
    "ru": "ru_RU.utf8",
    "uk": "uk_UA.utf8"
}


def wwo_query(city, lang, num_day=4):

    class WWOparse():
        def __init__(self, location, init_lang, number_day):
            self.__key = "wqwuamhcnha5rpf4cng4qyjn"
            self.__baseurl = ("http://api.worldweatheronline.com/free/v1/" +
                              "weather.ashx?q={q}" +
                              "&format=json" +
                              "&num_of_days={nd}" +
                              "&key={key}" +
                              "&lang={lang}")
            self.__query = self.__baseurl.format(q=location, nd=number_day,
                                                 key=self.__key, lang=init_lang)

        def query(self):
            try:
                response = loads(urlopen(self.__query).read())["data"]
            except URLError:
                return "Failed in provaider"
            if "error" in response:
                return response["error"]
            else:
                return response

    return WWOparse(city, lang, num_day).query()


def parse_date(date_str):
    date = map(int, date_str.split("-"))
    if len(date) != 3:
        return datetime.utcnow()
    else:
        return datetime(date[0], date[1], date[2])


def parse_time(time_str):
    times, prefix = time_str.split()
    add_hours = 0 if prefix == "AM" else 12
    h, minute = map(int, times.split(":"))
    return datetime.combine(datetime.today(), time(h + add_hours, minute))


def get_day_name(day_no, lang):
    locale = locales[lang]
    with TimeEncoding(locale):
        s = day_abbr[day_no - 1]
        return s


def gen_weather_future(dict_weather, temp_degree="C"):
    day_temp = "tempMax{d}".format(d=temp_degree) if temp_degree in "CF" else "tempMaxC"
    night_temp = "tempMin{d}".format(d=temp_degree) if temp_degree in "CF" else "tempMinC"
    return [{"date": parse_date(weather_day["date"]).isoweekday(),
             "weather_ico": weather_day["weatherIconUrl"][0]["value"],
             "day_temp": weather_day[day_temp],
             "night_temp": weather_day[night_temp]} for weather_day in dict_weather["weather"]]


def gen_weather_now(dict_weather, temp_degree="C", lang="ru"):
    current = dict_weather["current_condition"][0]
    temp = "temp_{d}".format(d=temp_degree) if temp_degree in "CF" else "temp_C"
    lng = "lang_{l}".format(l=lang) if lang in ("uk", "ru") else "weatherDesc"
    location = dict_weather[u"request"][0][u"query"]
    koeff_mile_to_ms = 2.2371364653243848
    return {"temp": current[temp],
            "location": location,
            "windspeedMiles": int(float(current["windspeedMiles"])/koeff_mile_to_ms),
            "weather_ico": current["weatherIconUrl"][0]["value"],
            "precipMM": current["precipMM"],
            "weather": current[lng][0]["value"].encode("utf8")}


def gen_weather(dict_weather, temp_degree="C", lang="ru"):
    if type(dict_weather) == list:
        lang = "uk"
        dict_weather = wwo_query("Donetsk,Ukraine", lang)
    elif type(dict_weather) == str:
        return dict_weather
    return {"weather_now": gen_weather_now(dict_weather, temp_degree, lang),
            "weather_future": gen_weather_future(dict_weather, temp_degree)}


def weather_data(lang, degree, loc):
    whether_dict = gen_weather(wwo_query(loc, lang), degree, lang)
    if type(whether_dict) == str:
        return "Service temporary down"
    else:
        return html_weather.format(place=whether_dict["weather_now"]["location"],
                                   img_wh_now=whether_dict["weather_now"]["weather_ico"],
                                   current_temp=whether_dict["weather_now"]["temp"],
                                   d_w_1=get_day_name(whether_dict["weather_future"][0]["date"], lang),
                                   d_w_2=get_day_name(whether_dict["weather_future"][1]["date"], lang),
                                   d_w_3=get_day_name(whether_dict["weather_future"][2]["date"], lang),
                                   d_w_4=get_day_name(whether_dict["weather_future"][3]["date"], lang),
                                   img_wh_1=whether_dict["weather_future"][0]["weather_ico"],
                                   img_wh_2=whether_dict["weather_future"][1]["weather_ico"],
                                   img_wh_3=whether_dict["weather_future"][2]["weather_ico"],
                                   img_wh_4=whether_dict["weather_future"][3]["weather_ico"],
                                   d_t_1=whether_dict["weather_future"][0]["day_temp"],
                                   d_t_2=whether_dict["weather_future"][1]["day_temp"],
                                   d_t_3=whether_dict["weather_future"][2]["day_temp"],
                                   d_t_4=whether_dict["weather_future"][3]["day_temp"],
                                   n_t_1=whether_dict["weather_future"][0]["night_temp"],
                                   n_t_2=whether_dict["weather_future"][1]["night_temp"],
                                   n_t_3=whether_dict["weather_future"][2]["night_temp"],
                                   n_t_4=whether_dict["weather_future"][3]["night_temp"],
                                   pogoda=whether_dict["weather_now"]["weather"],
                                   wind=whether_dict["weather_now"]["windspeedMiles"],
                                   deg=str(degree),
                                   water_mm=whether_dict["weather_now"]["precipMM"]), whether_dict
