# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.http import HttpResponse
from .models import company_user
from .models import goverment_user
from .models import finance_user
from .models import company
from .models import industry
from .models import field
from .models import company_industry_relationship
from django.utils import timezone as datetime
from tools.rdf_revert import revert
from django.http import JsonResponse
from django.core import serializers


# Create your views here.
def index(req):
    if req.COOKIES.get('user_name', ''):
        user_name = req.COOKIES.get('user_name', '').encode('latin-1').decode('utf-8')
        return render(req,"index.html",{"user_name":user_name})
    else:
        return render(req, "index.html")


def login(req):
    user_name = req.POST['user_name']
    password = req.POST['password']
    userPassJudge = company_user.objects.filter(user_name=user_name, password=password)

    if userPassJudge:
        response = HttpResponseRedirect('/index/')
        user_name = user_name.encode('utf-8').decode('latin-1')
        response.set_cookie('user_name', user_name, 3600)
        # req.session['user_name'] = user_name

        return response
    else:
        msg = "用户名或密码输入错误"
        return HttpResponse("密码错误")


def company_register(req):
    user_name = req.POST['user_name']
    password = req.POST['password']
    phone_number = req.POST['phone_number']
    province = req.POST['province']
    city = req.POST['city']
    field = req.POST['field']
    industry = req.POST['industry']

    # try:
    #     a = company_user.objects.filter(user_name=user_name).get().user_name
    #     b = company_user.objects.filter(phone_number=phone_number).get().user_name
    #     return render(req, 'index.html', {'info': "用户名或邮箱已经注册"})
    #
    # except:
    #     register_time = datetime.datetime.time()
    #     registAdd = company_user.objects.create(user_name=user_name, password=password,
    #                                             phone_number=phone_number, register_time=register_time,
    #                                             province=province, city=city,
    #                                             field_id=field, industry_id=industry)
    #     response = HttpResponseRedirect('/ldscore/')
    #     response.set_cookie('username', user_name, 3600)
    #     return response
    register_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    registAdd = company_user.objects.create(user_name=user_name, password=password,
                                            phone_number=phone_number, register_time=register_time,
                                            province=province, city=city,
                                            field_id=field, industry_id=industry)
    response = HttpResponseRedirect('/index/')
    response.set_cookie('user_name', user_name.encode('utf-8').decode('latin-1'), 3600)
    return response


def government_register(req):
    user_name = req.POST['user_name']
    password = req.POST['password']
    phone_number = req.POST['phone_number']
    province = req.POST['province']
    city = req.POST['city']
    apartment = req.POST['apartment']

    # try:
    #     a = company_user.objects.filter(user_name=user_name).get().user_name
    #     b = company_user.objects.filter(phone_number=phone_number).get().user_name
    #     return render(req, 'index.html', {'info': "用户名或邮箱已经注册"})
    #
    # except:
    #     register_time = datetime.datetime.time()
    #     registAdd = company_user.objects.create(user_name=user_name, password=password,
    #                                             phone_number=phone_number, register_time=register_time,
    #                                             province=province, city=city,
    #                                             field_id=field, industry_id=industry)
    #     response = HttpResponseRedirect('/ldscore/')
    #     response.set_cookie('username', user_name, 3600)
    #     return response
    register_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    registAdd = goverment_user.objects.create(user_name=user_name, password=password,
                                            phone_number=phone_number, register_time=register_time,
                                            province=province, city=city, apartment=apartment)
    response = HttpResponseRedirect('/index/')
    response.set_cookie('user_name', user_name.encode('utf-8').decode('latin-1'), 3600)
    return response


def finance_register(req):
    user_name = req.POST['user_name']
    password = req.POST['password']
    phone_number = req.POST['phone_number']
    province = req.POST['province']
    city = req.POST['city']
    apartment = req.POST['apartment']

    # try:
    #     a = company_user.objects.filter(user_name=user_name).get().user_name
    #     b = company_user.objects.filter(phone_number=phone_number).get().user_name
    #     return render(req, 'index.html', {'info': "用户名或邮箱已经注册"})
    #
    # except:
    #     register_time = datetime.datetime.time()
    #     registAdd = company_user.objects.create(user_name=user_name, password=password,
    #                                             phone_number=phone_number, register_time=register_time,
    #                                             province=province, city=city,
    #                                             field_id=field, industry_id=industry)
    #     response = HttpResponseRedirect('/ldscore/')
    #     response.set_cookie('username', user_name, 3600)
    #     return response
    register_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    registAdd = finance_user.objects.create(user_name=user_name, password=password,
                                            phone_number=phone_number, register_time=register_time,
                                            province=province, city=city, apartment=apartment)
    response = HttpResponseRedirect('/index/')
    response.set_cookie('user_name', user_name.encode('utf-8').decode('latin-1'), 3600)
    return response


def search(req):
    # contents = req.GET['search-content']
    search_type = req.GET['group']
    print(search_type)
    if search_type == "企业":
        return search_company(req)
    elif search_type == "行业":
        return search_industry(req)
    elif search_type == "领域":
        return search_field(req)


def search_field(req):
    contents = req.GET['search-content']
    field_list = field.objects.filter(field_name__contains=contents)
    print(field)
    return render(req, 'field_result.html', {"result": field_list})


def search_company(req):
    contents = req.GET['search-content']
    company_list = company.objects.filter(name__contains=contents)
    print(company_list)
    return render(req, 'result.html', {"result": company_list})


def search_company_by_industry(req):
    contents = req.GET['industry_name']
    company_list = company_industry_relationship.objects.filter(industry_name=contents)
    list = []
    for item in company_list:
        company_name = item.company_name
        print(company_name)
        list.append(company.objects.get(name=company_name))

    return render(req, 'result.html', {"result": list})


def search_industry(req):
    contents = req.GET['search-content']
    industry_list = industry.objects.filter(name__contains=contents)
    return render(req, 'industry_result.html', {"result": industry_list})


def show_company(req):
    company_name = req.GET["company_name"]
    company_intro = company.objects.get(name=company_name)
    info = revert(company_name)
    return render(req, "info.html", {"company_name": company_name, "company_info": info, "company_intro":company_intro})


def logout(req):
    response = HttpResponseRedirect('/index/')
    response.delete_cookie('user_name')
    return response


def IKG(req):
    return render(req, "IKG2.html")


def IKG_process(req):
    industry_name = req.GET.get("name")
    company_list = company_industry_relationship.objects.filter(industry_name=industry_name).values("company_name")
    list = []
    for i in company_list:
        list.append(i)
    return JsonResponse(list, safe=False)