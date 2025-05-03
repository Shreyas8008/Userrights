from django.urls import path
from . import views 
from .views import (user_list, user_add, user_edit, user_delete, user_detail)
from django.http import HttpResponseForbidden

def unauthorized(request):
    return HttpResponseForbidden("You do not have permission to view this page.")


urlpatterns = [
    # Users
    path('users/', user_list, name='user_list'),
    path('users/add/', user_add, name='user_add'),
    path('users/edit/<int:pk>/', views.user_edit, name='user_edit'),
    path('users/delete/<int:pk>/', user_delete, name='user_delete'),
    path('users/detail/<int:pk>/', user_detail, name='user_detail'),
    path('user-rights/', views.user_rights_form, name='user_rights_form'),
    path('unauthorized/', unauthorized, name='unauthorized'),

]


