from django.db import models


class CustomUser(models.Model):   
    name = models.CharField(max_length=255, unique=True)
    location = models.CharField(max_length=100) 
    password = models.CharField(max_length=255)  # New password field

    def __str__(self):
        return self.name



class UserRights(models.Model):
    user = models.ForeignKey('CustomUser', on_delete=models.CASCADE)
    form_name = models.CharField(max_length=100)
    can_view = models.BooleanField(default=False)
    can_add = models.BooleanField(default=False)
    can_edit = models.BooleanField(default=False)
    can_delete = models.BooleanField(default=False)
    all_access = models.BooleanField(default=False)

    def __str__(self):
        return f"{self.user.name} - {self.form_name}"
