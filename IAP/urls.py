"""IAP URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url
from user_manager import views as uview

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', uview.index),
    url(r'^index/$', uview.index),
    url(r'^login/$', uview.login),
    url(r'^logout/$', uview.logout),
    url(r'^company_register/$', uview.company_register),
    url(r'^government_register/$', uview.government_register),
    url(r'^finance_register/$', uview.finance_register),
    url(r'^search/$', uview.search),
    url(r'^company/$', uview.show_company),
    url(r'^IKG/$', uview.IKG),
    url(r'^IKG_process/$', uview.IKG_process),
    url(r'^search_company/$', uview.search_company),
    url(r'^search_company_by_industry/$', uview.search_company_by_industry)
]
