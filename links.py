# -*- mode:python; coding:utf-8; -*-

from sqlalchemy import create_engine

from html_templates import html_begin, html_end, html_links_li
from mysql import mysql_connect_data


__all__ = ["links"]


def links(lang, connect_data=mysql_connect_data):
    e = create_engine(connect_data)
    if lang not in ("ru", "en"):
        lang = "uk"
    link_list = [row for row in
                 e.execute("select uri, desc_{l} from links".format(l=lang))]
    html = html_begin
    for record in link_list:
        html += html_links_li.format(link=record[0], desc=record[1])
    return html + html_end
