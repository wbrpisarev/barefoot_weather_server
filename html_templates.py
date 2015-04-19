# -*- mode:python; coding:utf-8; -*-

__all__ = ["html_weather", "html_begin", "html_end", "html_links_li"]

html_weather = """
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Weather</title>
 </head>
 <body>
      <p><font size="4">{place}</font></p>
<table>
    <tr>
        <td align="left"> <img src="{img_wh_now}">
        </td>
        <td align="right"><h2><font size="7">{current_temp}&deg;{deg}</font>
        </td>
    </tr>
    <tr>
        <td align="left">
<table>
   <tr>
        <td>
          {pogoda}
        </td>
   </tr>
   <tr>
        <td> <img src="https://dl.dropboxusercontent.com/u/20428214/android/windy.png" >
          {wind} m/s
       </td>
   </tr>
   <tr><td> <img src="https://dl.dropboxusercontent.com/u/20428214/android/protection3.png" >
          {water_mm} mm
        </td>
   </tr>
</table>
        </td>
        <td align="right">
<table>
    <tr>
        <td> {d_w_1}
        </td>
        <td> {d_w_2}
        </td>
        <td> {d_w_3}
        </td>
        <td> {d_w_4}
        </td>
    </tr>
    <tr>
        <td> <img height="32" src="{img_wh_1}">
        </td>
        <td> <img height="32" src="{img_wh_2}">
        </td>
        <td> <img height="32" src="{img_wh_3}">
        </td>
        <td> <img height="32" src="{img_wh_4}">
        </td>
    </tr>
    <tr>
        <td> {d_t_1}&deg;
        </td>
        <td> {d_t_2}&deg;
        </td>
        <td> {d_t_3}&deg;
        </td>
        <td> {d_t_4}&deg;
        </td>
    </tr>
    <tr>
        <td> {n_t_1}&deg;
        </td>
        <td> {n_t_2}&deg;
        </td>
        <td> {n_t_3}&deg;
        </td>
        <td> {n_t_4}&deg;
        </td>
    </tr>
</table>
        </td>
    </tr>
</table>
 </body>
</html>
"""

html_begin = u"""
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Links</title>
 </head>
 <body>
"""

html_end = u"""
 </body>
</html>
"""

html_links_li = u"""
<li><a href="{link}">{link}</a><p>{desc}</p></li>
"""

