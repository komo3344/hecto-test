from django.urls import path
from . import views

urlpatterns = [
    path("v1", views.V1API.as_view()),
    path("v2", views.V2API.as_view())
]
