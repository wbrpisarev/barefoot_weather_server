# -*- mode:python; coding:utf-8; -*-

from sqlalchemy import create_engine

from mysql import mysql_connect_data


__all__ = ["save_feedback", "save_feedback_wether"]


def save_feedback(email, message, connect_data=mysql_connect_data):
    e = create_engine(connect_data)
    query = "insert into `feedback` (`email`, `message`) values('{e}', '{m}')"
    e.execute(query.format(e=email, m=message))


def save_feedback_wether(surface_id, sensation_id, temperature, degree, 
                         location, connect_data=mysql_connect_data):
    e = create_engine(connect_data)
    if degree == "F":
        temperature = (float(temperature) - 32)*(5.0/9)
    else:
        temperature = float(temperature)
    surface_id = int(surface_id)
    sensation_id = float(sensation_id)
    sensation_id = sensation_id if sensation_id > 9 else 10 + sensation_id
    query = "insert into `feedback_weather` (`surface_id`, `coeff`, `temp_c`, `location`) values({s}, {c}, {t}, '{l}')"
    e.execute(query.format(s=surface_id, c=sensation_id, 
                           t=temperature, l=location))
