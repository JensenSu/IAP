# Generated by Django 2.0.7 on 2018-08-22 08:46

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('user_manager', '0002_auto_20180822_1630'),
    ]

    operations = [
        migrations.RenameField(
            model_name='company_user',
            old_name='field_id',
            new_name='field',
        ),
        migrations.RenameField(
            model_name='company_user',
            old_name='industry_id',
            new_name='industry',
        ),
    ]