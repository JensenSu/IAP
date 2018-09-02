from django.db import models
# Create your models here.


class industry(models.Model):
    name = models.CharField(max_length=32)
    introduction = models.TextField(max_length=5000)


class company(models.Model):
    name = models.CharField(max_length=32)
    introduction = models.TextField(max_length=5000)
    time_to_market = models.DateTimeField('time_to_market')
    legal_person = models.CharField(max_length=32)
    assets = models.IntegerField()
    business_property = models.CharField(max_length=32)
    scale = models.CharField(max_length=32)


class company_industry_relationship(models.Model):
    company_name = models.CharField(max_length=32, null=True)
    industry_name = models.CharField(max_length=32, null=True)


class field(models.Model):
    field_name = models.CharField(max_length=32)
    field_info = models.CharField(max_length=320)


class company_user(models.Model):
    user_name = models.CharField(max_length=32)
    password = models.CharField(max_length=32)
    register_time = models.DateTimeField('user established')
    province = models.CharField(max_length=32)
    city  = models.CharField(max_length=32)
    phone_number = models.CharField(max_length=16)
    # field_id = models.ForeignKey(field, on_delete=models.CASCADE)
    # industry_id = models.ForeignKey(industry, on_delete=models.CASCADE)
    field_id = models.CharField(max_length=16)
    industry_id = models.CharField(max_length=16)


class goverment_user(models.Model):
    user_name = models.CharField(max_length=32)
    password = models.CharField(max_length=32)
    apartment = models.CharField(max_length=32)
    register_time = models.DateTimeField('user established')
    province = models.CharField(max_length=32)
    city  = models.CharField(max_length=32)
    phone_number = models.CharField(max_length=16)


class finance_user(models.Model):
    user_name = models.CharField(max_length=32)
    password = models.CharField(max_length=32)
    apartment = models.CharField(max_length=32)
    register_time = models.DateTimeField('user established')
    province = models.CharField(max_length=32)
    city  = models.CharField(max_length=32)
    phone_number = models.CharField(max_length=16)


class jadministrator(models.Model):
    user_name = models.CharField(max_length=32)
    password = models.CharField(max_length=32)
    register_time = models.DateTimeField('user established')
    phone_number = models.CharField(max_length=16)
    email = models.EmailField()






