#!/usr/bin/env python
# -*- mode:python; coding:utf-8; -*-
# author: Ruslan Pisarev

from json import loads, dumps
from datetime import datetime, time
from hashlib import md5
from calendar import TimeEncoding, day_abbr

from bottle import route, run, redirect, request
from redis import StrictRedis
from sqlalchemy import create_engine

from weather import weather_data
from links import links
from barefoot import vote_sensation_list, surfaces, all_surface
from feedback import save_feedback, save_feedback_wether


@route('/<lang>/<degree>/<loc>')
def index(lang, degree, loc):
    r = StrictRedis(host='localhost', port=6379, db=0)
    hash_sum = "h" + md5("{0}/{1}/{2}".format(lang, degree, loc)).hexdigest()
    if r.exists(hash_sum):
        return r.get(hash_sum)
    weather, weather_dict = weather_data(lang, degree, loc)
    temp = temp_now = float(weather_dict["weather_now"]["temp"])
    if degree == "F":
        temp_now = (temp_now - 32)*5.0/9
    result = dumps({
        "weather": weather,
        "links": links(lang),
        "surfaces": surfaces(lang, temp_now),
        "feedback": {"current_temp": str(int(temp)), 
                     "sensation_desc": vote_sensation_list(lang),
                     "list_surfaces": all_surface(lang)}})
    r.set(hash_sum, result)
    r.expire(hash_sum, 600)
    return result


@route('/test')
def android():
    return "Hello, Android!"


@route('/feedbackapp', method='POST')
def feedback_application():
    email = request.forms.get("email")
    message = request.forms.get("message")
    save_feedback(email, message)


@route('/feedbackweather', method='POST')
def feedback_application():
    surface_id = request.forms.get("surface_id")
    sensation_id = request.forms.get("sensation_id")
    temperature = request.forms.get("temperature")
    degree = request.forms.get("degree")
    location = request.forms.get("location")
    save_feedback_wether(surface_id, sensation_id, 
                         temperature, degree, location)


run(host='0.0.0.0', port=8087)
