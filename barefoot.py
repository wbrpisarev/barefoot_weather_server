# -*- mode:python; coding:utf-8; -*-
from sqlalchemy import create_engine

from mysql import mysql_connect_data


__all__ = ["vote_sensation_list", "surfaces", "all_surface"]


def vote_sensation_list(lang, connect_data=mysql_connect_data):
    e = create_engine(connect_data)
    if lang not in ("ru", "en"):
        lang = "uk"
    list_sensation = [row[0] for row in
                      e.execute("select sensation_{l} from range_sensation where id < 11".format(l=lang))]
    return list_sensation

def surfaces(lang, temp_c, connect_data=mysql_connect_data):
    e = create_engine(connect_data)
    if lang not in ("ru", "en"):
        lang = "uk"
    surface_lang = {"ru": u"Поверхность", "uk": u"Поверхня", "en": u"Surface"}
    surface_sensation = u"прохладная"
    query = "select caption_{l}, desc_{l} from surface where mintemp < {t} and maxtemp >= {t}"
    surface_list = [row for row in e.execute(query.format(l=lang, t=temp_c))]
    surface_template = u"""
{caption}
{desc}
{surface_lang} {surface_sensation}

"""
    result = u""
    for surface in surface_list:
        result += surface_template.format(caption=surface[0], desc=surface[1], 
                                          surface_lang=surface_lang[lang],
                                          surface_sensation=surface_sensation)
    return result


def all_surface(lang, connect_data=mysql_connect_data):
    e = create_engine(connect_data)
    if lang not in ("ru", "en"):
        lang = "uk"
    query = "select caption_{l} from surface"
    return [row[0] for row in e.execute(query.format(l=lang))]
    

