from django.shortcuts import render
from django.http import HttpResponseRedirect
from .models import company_user
import time


# Create your views here.
def index(req):
    return render(req,"index.html")


def signup(req):
    user_name = req.POST['user_name']
    password = req.POST['password']
    phone_number = req.POST['phone_number']
    province = req.POST['province']
    city = req.POST['city']
    field = req.POST['field']
    industry = req.POST['industry']

    try:
        a = company_user.objects.filter(username=user_name).get().username
        b = company_user.objects.filter(phone_number=phone_number).get().username
        return render(req, 'index.html', {'info': "用户名或邮箱已经注册"})

    except:
        register_time = time.time()
        registAdd = company_user.objects.create(username=user_name, password=password,
                                                phone_number=phone_number, register_time=register_time,
                                                province=province, city=city,
                                                field_id=field, industry_id=industry)
        response = HttpResponseRedirect('/ldscore/')
        response.set_cookie('username', user_name, 3600)
        return response